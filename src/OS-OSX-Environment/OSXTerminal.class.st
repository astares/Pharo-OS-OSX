"
An OSX Terminal
"
Class {
	#name : #OSXTerminal,
	#superclass : #Object,
	#category : 'OS-OSX-Environment-Applications'
}

{ #category : #'instance creation' }
OSXTerminal >> open [
	"Open a new terminal"
	
	OSXShell newTerminal
]
