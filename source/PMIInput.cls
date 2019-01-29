"Filed out from Dolphin Smalltalk 7"!

PMIProcessConnector subclass: #PMIInput
	instanceVariableNames: 'neededPercentage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIInput guid: (GUID fromString: '{b8008492-a807-4dc3-bf2a-3b0800770d7b}')!
PMIInput comment: 'This class represent a Input of a process in a PMI Project.

neededPercentage - indicates percentage of completation needed to be able to use the input.'!
!PMIInput categoriesForClass!Kernel-Objects! !
!PMIInput methodsFor!

initialize

	super initialize.

	neededPercentage := 100.!

neededPercentage
	^neededPercentage!

neededPercentage: anObject
	neededPercentage := anObject!

pathName

	^'Input'! !
!PMIInput categoriesFor: #initialize!public! !
!PMIInput categoriesFor: #neededPercentage!accessing!private! !
!PMIInput categoriesFor: #neededPercentage:!accessing!private! !
!PMIInput categoriesFor: #pathName!public! !

!PMIInput class methodsFor!

icon

	^PMIInputDefinition icon! !
!PMIInput class categoriesFor: #icon!public! !

