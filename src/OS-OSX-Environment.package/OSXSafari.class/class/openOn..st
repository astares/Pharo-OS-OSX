instance creation
openOn: aURL
	<script: 'self openOn: ''http://www.pharo.org'''>
	
	OSXProcess createProcess: 'open -a Safari ', aURL