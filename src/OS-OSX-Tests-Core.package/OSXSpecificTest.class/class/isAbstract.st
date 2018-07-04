testing
isAbstract
  	"only run test subclasses on Windows"
	
	^(self name = #OSXSpecificTest)
		or: [ OSX isMacOSPlatform not ]