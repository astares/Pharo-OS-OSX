operating
newTerminal
	<script>
	| escaped folder |
	folder := FileSystem workingDirectory fullName.
	escaped := folder copyReplaceAll: ' ' with: '\ '. 	
	OSX system: 'open -a Terminal ', escaped