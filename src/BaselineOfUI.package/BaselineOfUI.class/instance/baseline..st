baseline
baseline: spec 
    
	<baseline>

	| repository |
	 
	repository := 'filetree://./pharo-core/src'.    
       
	spec for: #common do: [
		spec preLoadDoIt: #'preload:package:'.
		spec postLoadDoIt: #'postload:package:'.

		spec baseline: 'Morphic' with: [spec repository: repository].

		spec package: 'StartupPreferences'.
		
		spec package: 'DebuggerActions'.
		spec package: 'DebuggerFilters'.
		spec package: 'DebuggerModel'.

		spec package: 'FontChooser'.

		spec package: 'Tool-Base'.
		spec package: 'Tool-Transcript'.
		spec package: 'Tool-Workspace'.

		spec package: 'Spec-Core'.
		spec package: 'Spec-Debugger'.
		spec package: 'Spec-Inspector'.
		spec package: 'Spec-Layout'.
		spec package: 'Spec-MorphicAdapters'.
		spec package: 'Spec-PolyWidgets'.
		spec package: 'Spec-Tools'.
		spec package: 'Spec-SelectEntity'.

		spec package: 'Morphic-Widgets-Tree'.
		spec package: 'Polymorph-TaskbarIcons'.

		spec package: 'Keymapping-Core'.
		spec package: 'Keymapping-KeyCombinations'.
		spec package: 'Keymapping-Pragmas'.
		spec package: 'Keymapping-Settings'.
		spec package: 'Keymapping-Tools-Spec'.

		spec package: 'HelpSystem-Core'.

		spec package: 'Rubric'.
	].