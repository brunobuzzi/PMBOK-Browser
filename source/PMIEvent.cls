"Filed out from Dolphin Smalltalk 7"!

PMIObjectExecution subclass: #PMIEvent
	instanceVariableNames: 'timestamp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIEvent guid: (GUID fromString: '{6974ddb7-674a-41fd-866f-89f12a572b39}')!
PMIEvent comment: ''!
!PMIEvent categoriesForClass!Kernel-Objects! !
!PMIEvent methodsFor!

eventName

	^'PMI Event'!

initialize


	super initialize.

	timestamp := TimeStamp current.!

timestamp
	^timestamp!

timestamp: anObject
	timestamp := anObject! !
!PMIEvent categoriesFor: #eventName!public! !
!PMIEvent categoriesFor: #initialize!public! !
!PMIEvent categoriesFor: #timestamp!accessing!private! !
!PMIEvent categoriesFor: #timestamp:!accessing!private! !

!PMIEvent class methodsFor!

icon

	^Notification icon! !
!PMIEvent class categoriesFor: #icon!public! !

