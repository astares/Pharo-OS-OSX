"
Instances of this class represent native OSX processes
"
Class {
	#name : #OSXProcess,
	#superclass : #Object,
	#category : 'OS-OSX-Environment-Processing'
}

{ #category : #'process creation' }
OSXProcess class >> createProcess: cmd [
	"Create a process"
	
	^OSX system: cmd
]

{ #category : #accessing }
OSXProcess class >> currentProcessId [
	"Returns the process identifier (PID) of the calling process"
 
	 ^self ffiCall: #(int getpid(void)) 
			 module: LibC
			 
]

{ #category : #private }
OSXProcess class >> fgetc: stream [
	"Initiate pipe streams to or from a process "
	 
	 ^self ffiCall: #(int* fgetc(ExternalAddress* stream)) 
			 module: LibC
			 
]

{ #category : #accessing }
OSXProcess class >> parentProcessId [
	"Returns the process ID of the parent of the calling process. "
	 
	 ^self ffiCall: #(int getppid(void)) 
			 module: LibC
			 
]

{ #category : #private }
OSXProcess class >> pipe: command mode: mode [
	"Initiate pipe streams to or from a process "
	 
	 ^self ffiCall: #(ExternalAddress* popen(char* command, char* mode)) 
			 module: LibC
			 
]

{ #category : #private }
OSXProcess class >> pipeClose: stream [
	"Close pipe"
	 
	 ^self ffiCall: #(int* pclose(ExternalAddress* stream)) 
			 module: LibC
			 
]

{ #category : #piping }
OSXProcess class >> resultOfCommand: cmd [
	|file last s |
	file := self pipe: cmd mode: 'r'.
	s := String new writeStream.
	[ last := (self fgetc: file) value.
	  last = 16rFFFFFFFF ] whileFalse: [ 	 
			s nextPut: (Character value: last)
	].
	self pipeClose: file.
	^s contents
]
