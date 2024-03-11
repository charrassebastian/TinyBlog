"
Component with the categories of the blog posts
"
Class {
	#name : #TBCategoriesComponent,
	#superclass : #WAComponent,
	#instVars : [
		'categories',
		'postsList'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #'instance creation' }
TBCategoriesComponent class >> categories: categories postsList: aTBScreen [
	^ self new categories: categories; postsList: aTBScreen
]

{ #category : #accessing }
TBCategoriesComponent >> categories [
	^ categories
]

{ #category : #accessing }
TBCategoriesComponent >> categories: aCollection [
	categories := aCollection asSortedCollection
]

{ #category : #accessing }
TBCategoriesComponent >> postsList: aComponent [
	postsList := aComponent
]

{ #category : #rendering }
TBCategoriesComponent >> renderCategoryLinkOn: html with: aCategory [
	html button
		class: 'active' if: aCategory = postsList currentCategory;
		callback: [ self selectCategory: aCategory ];
		with: aCategory
]

{ #category : #rendering }
TBCategoriesComponent >> renderContentOn: html [
	html div with: [ 
		html strong: 'Categories'.
		categories do: [ :cat |
			self renderCategoryLinkOn: html with: cat ] ]
]

{ #category : #actions }
TBCategoriesComponent >> selectCategory: aCategory [
	postsList currentCategory: aCategory
]
