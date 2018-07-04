"
The OS X operating system
"
Class {
	#name : #OSX,
	#superclass : #Object,
	#category : 'OS-OSX-Core-Base'
}

{ #category : #accessing }
OSX class >> isMacOSPlatform [
	"Return true for any mac platform"
	
	^Smalltalk os isMacOS or: [ Smalltalk os isMacOSX ]
]

{ #category : #primitives }
OSX class >> system: command [
	
	 ^ self ffiCall: #(int system(char* command) ) 
			  module: LibC
]

{ #category : #accessing }
OSX class >> versionString [

	^OSXProcess resultOfCommand: 'sw_vers -productVersion'
]
