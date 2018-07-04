"
Subclasses represent tests that only run on OSX  operating systems
"
Class {
	#name : #OSXSpecificTest,
	#superclass : #TestCase,
	#category : 'OS-OSX-Tests-Core-Common'
}

{ #category : #testing }
OSXSpecificTest class >> isAbstract [
  	"only run test subclasses on Windows"
	
	^(self name = #OSXSpecificTest)
		or: [ OSX isMacOSPlatform not ]
]
