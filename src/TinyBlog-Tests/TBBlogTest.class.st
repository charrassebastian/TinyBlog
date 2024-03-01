"
""Tests for the TBBlog""
"
Class {
	#name : #TBBlogTest,
	#superclass : #TestCase,
	#instVars : [
		'blog',
		'post',
		'first'
	],
	#category : #'TinyBlog-Tests'
}

{ #category : #running }
TBBlogTest >> setUp [
	super setUp.
	blog := TBBlog current.
	blog removeAllPosts.
	
	first := TBPost title: 'A title' text: 'A text' category: 'First Category'.
	blog writeBlogPost: first.
	
	post := (TBPost title: 'Another title' text: 'Another text' category: 'Second Category') beVisible
]

{ #category : #running }
TBBlogTest >> tearDown [
	TBBlog reset.
	super tearDown 
]

{ #category : #tests }
TBBlogTest >> testAddBlogPost [
	blog writeBlogPost: post.
	self assert: blog size equals: 2
]

{ #category : #running }
TBBlogTest >> testRemoveAllBlogPosts [
	blog removeAllPosts.
	self assert: blog size equals: 0
]

{ #category : #running }
TBBlogTest >> testSize [
	self assert: blog size equals: 1
]
