"
The safari browser
"
Class {
	#name : #OSXSafari,
	#superclass : #Object,
	#category : 'OS-OSX-Environment-Applications'
}

{ #category : #'instance creation' }
OSXSafari class >> openOn: aURL [
	<script: 'self openOn: ''http://www.pharo.org'''>
	
	OSXProcess createProcess: 'open -a Safari ', aURL
]
