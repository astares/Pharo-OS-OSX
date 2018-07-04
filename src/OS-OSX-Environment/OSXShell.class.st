"
Access to the OSX shell
"
Class {
	#name : #OSXShell,
	#superclass : #Object,
	#category : 'OS-OSX-Environment-Shell'
}

{ #category : #operating }
OSXShell class >> newTerminal [
	<script>
	| escaped folder |
	folder := FileSystem workingDirectory fullName.
	escaped := folder copyReplaceAll: ' ' with: '\ '. 	
	OSX system: 'open -a Terminal ', escaped
]

{ #category : #utilities }
OSXShell class >> openFinderOn: aFolderName [
	
	OSX system: 'open ''', aFolderName ,''''
]

{ #category : #operating }
OSXShell class >> openFinderOnWorkingDirectory [
	<script>
	
	self openFinderOn: FileSystem workingDirectory fullName 
]
