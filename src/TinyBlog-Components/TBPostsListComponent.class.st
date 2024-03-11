"
A component that displays the list of all posts.
"
Class {
	#name : #TBPostsListComponent,
	#superclass : #TBScreenComponent,
	#instVars : [
		'currentCategory'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #rendering }
TBPostsListComponent >> basicRenderCategoriesOn: html [
	html render: self categoriesComponent
]

{ #category : #rendering }
TBPostsListComponent >> basicRenderPostsOn: html [
	self readSelectedPosts do: [ :p |
		html render: (self postComponentFor: p) ]
]

{ #category : #rendering }
TBPostsListComponent >> categoriesComponent [
	^ TBCategoriesComponent 
		categories: self blog allCategories
		postsList: self
]

{ #category : #accessing }
TBPostsListComponent >> currentCategory [
	^ currentCategory
]

{ #category : #accessing }
TBPostsListComponent >> currentCategory: anObject [
	currentCategory := anObject
]

{ #category : #rendering }
TBPostsListComponent >> goToAdministrationView [
	self call: TBAdminComponent new
]

{ #category : #rendering }
TBPostsListComponent >> postComponentFor: aPost [
	^ TBPostComponent new post: aPost
]

{ #category : #rendering }
TBPostsListComponent >> readSelectedPosts [
	^ self currentCategory 
		ifNil: [ self blog allVisibleBlogPosts ]
		ifNotNil: [ self blog allVisibleBlogPostsFromCategory: self currentCategory ]
]

{ #category : #rendering }
TBPostsListComponent >> renderCategoryColumnOn: html [
	html div with: [ 
		self basicRenderCategoriesOn: html ]
]

{ #category : #rendering }
TBPostsListComponent >> renderContentOn: html [
	super renderContentOn: html.
	html div with: [ 
		self renderCategoryColumnOn: html.
		self renderPostColumnOn: html ]
]

{ #category : #rendering }
TBPostsListComponent >> renderPostColumnOn: html [
	html div with: [ 
		self basicRenderPostsOn: html ]
]
