"
I am a header component for the Tiny Blog
"
Class {
	#name : #TBHeaderComponent,
	#superclass : #WAComponent,
	#instVars : [
		'component'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #'instance creation' }
TBHeaderComponent class >> from: aComponent [
	^ self new 
		component: aComponent;
		yourself
]

{ #category : #accessing }
TBHeaderComponent >> component [
	^ component
]

{ #category : #accessing }
TBHeaderComponent >> component: anObject [
	component := anObject
]

{ #category : #rendering }
TBHeaderComponent >> renderBrandOn: html [
	html div with: [ 
		html anchor
			url: self application url;
			with: 'TinyBlog' ]
]

{ #category : #rendering }
TBHeaderComponent >> renderButtonsOn: html [
	self renderSimpleAdminButtonOn: html
]

{ #category : #rendering }
TBHeaderComponent >> renderContentOn: html [
	html div
		with: [ 
			self renderBrandOn: html.
			self renderButtonsOn: html ]
]

{ #category : #rendering }
TBHeaderComponent >> renderSimpleAdminButtonOn: html [
	html form: [ 
		html button
			callback: [ component goToAdministrationView ];
			with: 'Admin View' ]
]
