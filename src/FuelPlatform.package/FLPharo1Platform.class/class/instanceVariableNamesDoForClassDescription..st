private-extensions-classdescription
instanceVariableNamesDoForClassDescription: anUnaryBlock
	<flExtensionOf: #ClassDescription selector: #instanceVariableNamesDo:>
	"This is part of the interface between the compiler and a class''s instance or field names.
	 The class should enumerate anUnaryBlock with the instance variable name strings.  The order is important. Names evaluated later will override the
	 same names occurring earlier."

	| superInstSize |
	(superInstSize := self superclass notNil ifTrue: [self superclass instSize] ifFalse: [0]) > 0 ifTrue:
		[self superclass instanceVariableNamesDo: anUnaryBlock].
	1 to: self instSize - superInstSize do:
		[:i| anUnaryBlock value: (instanceVariables at: i)]