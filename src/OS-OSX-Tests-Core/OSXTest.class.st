"
Test for the OS X platform class
"
Class {
	#name : #OSXTest,
	#superclass : #OSXSpecificTest,
	#category : 'OS-OSX-Tests-Core-Base'
}

{ #category : #tests }
OSXTest >> testIsMacOSPlatform [

	self assert: OSX isMacOSPlatform
]
