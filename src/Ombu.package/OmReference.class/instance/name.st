accessing
name

	^ String streamContents: [ :stream |
		stream
			nextPutAll: self globalName; 
			nextPut: $:;
			nextPutAll: self localName ]