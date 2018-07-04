menu
commandLineMenuOn: aBuilder
	<worldMenu> 
	(aBuilder item: #'Command Line')
		parent: #'OS-OS X Tools';	 
		help: 'Open shell';
		order: 1;
		action: [ self openCommandLineOnWorkingDirectory ]; 
		icon: (OSXToolIcons iconNamed: #shellIcon);
		withSeparatorAfter