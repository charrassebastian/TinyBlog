"
I am a header component for the Tiny Blog
"
Class {
	#name : #TBHeaderComponent,
	#superclass : #WAComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #rendering }
TBHeaderComponent >> renderBrandOn: html [
	html div with: [ 
		html anchor
			url: self application url;
			with: 'TinyBlog' ]
]

{ #category : #rendering }
TBHeaderComponent >> renderContentOn: html [
	html div
		with: [ 
			self renderBrandOn: html ]
]
