"
I am an administration component
"
Class {
	#name : #TBAdminComponent,
	#superclass : #TBScreenComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #rendering }
TBAdminComponent >> renderContentOn: html [
	super renderContentOn: html.
	html div with: [ 
		html heading: 'Blog Admin'.
		html horizontalRule ]
]
