"
Entry point of the TinyBlog
"
Class {
	#name : #TBApplicationRootComponent,
	#superclass : #WAComponent,
	#instVars : [
		'main'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #hooks }
TBApplicationRootComponent >> children [
	^ { main }
]

{ #category : #initialization }
TBApplicationRootComponent >> initialize [
	super initialize.
	main := TBScreenComponent new
]

{ #category : #rendering }
TBApplicationRootComponent >> renderContentOn: html [
	html render: main
]

{ #category : #updating }
TBApplicationRootComponent >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'TinyBlog'
]
