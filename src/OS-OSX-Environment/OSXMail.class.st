"
The OSX Mail tool
"
Class {
	#name : #OSXMail,
	#superclass : #Object,
	#category : 'OS-OSX-Environment-Applications'
}

{ #category : #'instance creation' }
OSXMail class >> open [
	"Open the mail tool"
	<script>
	
	OSXProcess createProcess: 'open -a Mail'
]
