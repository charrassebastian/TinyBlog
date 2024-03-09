"
Screen Component abstract class for the Tiny Blog
"
Class {
	#name : #TBScreenComponent,
	#superclass : #WAComponent,
	#category : #'TinyBlog-Components'
}

{ #category : #accessing }
TBScreenComponent >> blog [
	"Return the current blog. In the future we will ask the session to return the blog of the currently logged in user."
	^ TBBlog current
]

{ #category : #rendering }
TBScreenComponent >> renderContentOn: html [
	html text: 'Hello from TBScreenComponent'
]
