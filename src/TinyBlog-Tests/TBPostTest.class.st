Class {
	#name : #TBPostTest,
	#superclass : #TestCase,
	#category : #'TinyBlog-Tests'
}

{ #category : #tests }
TBPostTest >> testBeVisible [
	self assert: TBPost new beVisible visible equals: true.
]

{ #category : #tests }
TBPostTest >> testIsUnclassified [
	self assert: TBPost new isUnclassified.
]

{ #category : #tests }
TBPostTest >> testIsVisible [
	self assert: TBPost new isVisible equals: false.
	self assert: TBPost new beVisible isVisible equals: true.
]

{ #category : #tests }
TBPostTest >> testNotVisible [
	self assert: TBPost new notVisible visible equals: false.
]

{ #category : #tests }
TBPostTest >> testPostIsCreatedCorrectly [
	| post |
	post := TBPost
		title: 'Welcome to TinyBlog'
		text: 'TinyBlog is a small blog engine made with Pharo.'
		category: 'TinyBlog'.
	self assert: post title equals: 'Welcome to TinyBlog'.
	self assert: post text equals: 'TinyBlog is a small blog engine made with Pharo.'.
	self assert: post category equals: 'TinyBlog'.
]

{ #category : #tests }
TBPostTest >> testWithoutCategoryIsUnclassified [
	| post |
	post := TBPost
		title: 'Welcome to TinyBlog'
		text: 'TinyBlog is a small blog engine made with Pharo.'.
	self assert: post title equals: 'Welcome to TinyBlog'.
	self assert: post isUnclassified.
	self deny: post isVisible
]
