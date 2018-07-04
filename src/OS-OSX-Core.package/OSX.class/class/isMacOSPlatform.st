accessing
isMacOSPlatform
	"Return true for any mac platform"
	
	^Smalltalk os isMacOS or: [ Smalltalk os isMacOSX ]