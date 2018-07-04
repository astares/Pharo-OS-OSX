baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [		 
		spec 
			package: #'OS-OSX-Core';
			package: #'OS-OSX-Environment';
			package: #'OS-OSX-Tools';
			package: #'OS-OSX-Tests-Core';
			package: #'OS-OSX-Tests-Environment'.
		spec 
			group: 'Core' with: #(#'OS-OSX-Core' #'OS-OSX-Environment' );
			group: 'Tests' with: #(#'OS-OSX-Tests-Core' #'OS-OSX-Tests-Environment' );
			group: 'Tools' with: #(#'OS-OSX-Tools' );
			group: 'default' with: #('Core' 'Tests' 'Tools' ). ].
