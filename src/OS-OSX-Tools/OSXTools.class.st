"
Common class for OSX tools
"
Class {
	#name : #OSXTools,
	#superclass : #Object,
	#category : 'OS-OSX-Tools-Base'
}

{ #category : #menu }
OSXTools class >> commandLineMenuOn: aBuilder [
	<worldMenu> 
	(aBuilder item: #'Command Line')
		parent: #'OS-OS X Tools';	 
		help: 'Open shell';
		order: 1;
		action: [ self openCommandLineOnWorkingDirectory ]; 
		icon: (OSXToolIcons iconNamed: #shellIcon);
		withSeparatorAfter
]

{ #category : #menu }
OSXTools class >> finderMenuOn: aBuilder [
	<worldMenu> 
	(aBuilder item: #'Finder')
		parent: #'OS-OS X Tools';	 
		help: 'Open finder on working directory';
		order: 0;
		action: [ self openFinderOnWorkingDirectory ]; 
		icon: (OSXToolIcons iconNamed: #finderIcon) 
]

{ #category : #menu }
OSXTools class >> menuCommandOn: aBuilder [ 
	<worldMenu> 
	(aBuilder item: #'OS-OS X Tools')	 
		help: 'OS X Tools';
		icon: (OSXToolIcons iconNamed: #appleIcon);
		withSeparatorAfter
]

{ #category : #utilities }
OSXTools class >> openCommandLineOnWorkingDirectory [

	OSXShell newTerminal
]

{ #category : #utilities }
OSXTools class >> openFinderOnWorkingDirectory [

	OSXShell openFinderOnWorkingDirectory 
]
