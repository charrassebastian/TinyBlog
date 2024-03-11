"
A component that displays the list of all posts.
"
Class {
	#name : #TBPostsListComponent,
	#superclass : #TBScreenComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #rendering }
TBPostsListComponent >> renderContentOn: html [
	super renderContentOn: html.
	self blog allVisibleBlogPosts do: [ :p | html render: (TBPostComponent new post: p) ]
]
