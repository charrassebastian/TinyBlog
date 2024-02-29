"
I represent a Post.

Instance Variables

category:		String
date:			DateAndTime
text:			String
title:			String
visible:		Boolean

"
Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #accessing }
TBPost >> category [

	^ category
]

{ #category : #accessing }
TBPost >> category: anObject [

	category := anObject
]

{ #category : #accessing }
TBPost >> date [

	^ date
]

{ #category : #accessing }
TBPost >> date: anObject [

	date := anObject
]

{ #category : #accessing }
TBPost >> text [

	^ text
]

{ #category : #accessing }
TBPost >> text: anObject [

	text := anObject
]

{ #category : #accessing }
TBPost >> title [

	^ title
]

{ #category : #accessing }
TBPost >> title: anObject [

	title := anObject
]

{ #category : #accessing }
TBPost >> visible [

	^ visible
]

{ #category : #accessing }
TBPost >> visible: anObject [

	visible := anObject
]
