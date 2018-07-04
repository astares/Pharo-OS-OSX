menu
finderMenuOn: aBuilder
	<worldMenu> 
	(aBuilder item: #'Finder')
		parent: #'OS-OS X Tools';	 
		help: 'Open finder on working directory';
		order: 0;
		action: [ self openFinderOnWorkingDirectory ]; 
		icon: (OSXToolIcons iconNamed: #finderIcon) 