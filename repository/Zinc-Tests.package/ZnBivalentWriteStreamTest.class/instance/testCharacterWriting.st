testing
testCharacterWriting
	| bytes |
	bytes := ByteArray
		streamContents: [ :stream | 
			| writeStream |
			writeStream := ZnBivalentWriteStream on: stream.
			writeStream
				nextPut: $a;
				space;
				nextPutAll: '123' ].
	self assert: bytes equals: 'a 123' asByteArray