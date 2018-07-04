accessing
iconNamed: aSymbol
	(self class canUnderstand: aSymbol) ifFalse: [ ^super iconNamed: aSymbol ].
	^self icons at: aSymbol ifAbsentPut: [self perform: aSymbol]