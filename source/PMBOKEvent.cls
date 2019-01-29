"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectExecution subclass: #PMBOKEvent
	instanceVariableNames: 'timestamp'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKEvent guid: (GUID fromString: '{6974ddb7-674a-41fd-866f-89f12a572b39}')!
PMBOKEvent comment: ''!
!PMBOKEvent categoriesForClass!Kernel-Objects! !
!PMBOKEvent methodsFor!

eventName

	^'PMI Event'!

initialize


	super initialize.

	timestamp := TimeStamp current.!

timestamp
	^timestamp!

timestamp: anObject
	timestamp := anObject! !
!PMBOKEvent categoriesFor: #eventName!public! !
!PMBOKEvent categoriesFor: #initialize!public! !
!PMBOKEvent categoriesFor: #timestamp!accessing!private! !
!PMBOKEvent categoriesFor: #timestamp:!accessing!private! !

!PMBOKEvent class methodsFor!

icon

	^Notification icon! !
!PMBOKEvent class categoriesFor: #icon!public! !

