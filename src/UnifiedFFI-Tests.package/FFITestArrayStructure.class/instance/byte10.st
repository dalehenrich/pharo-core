accessing structure variables
byte10
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIUInt8 size: 10) fromHandle: (handle copyFrom: 6 to: 15)