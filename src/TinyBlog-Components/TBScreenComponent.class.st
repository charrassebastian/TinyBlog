"
Screen Component abstract class for the Tiny Blog
"
Class {
	#name : #TBScreenComponent,
	#superclass : #WAComponent,
	#instVars : [
		'header'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #accessing }
TBScreenComponent >> blog [
	"Return the current blog. In the future we will ask the session to return the blog of the currently logged in user."
	^ TBBlog current
]

{ #category : #hooks }
TBScreenComponent >> children [
	^ { header }
]

{ #category : #initialization }
TBScreenComponent >> createHeaderComponent [
	^ TBHeaderComponent from: self
]

{ #category : #initialization }
TBScreenComponent >> initialize [ 
	super initialize.
	header := self createHeaderComponent
]

{ #category : #rendering }
TBScreenComponent >> renderContentOn: html [
	html render: header
]
