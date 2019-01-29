"Filed out from Dolphin Smalltalk 7"!

PMBOKProcessConnector subclass: #PMBOKInput
	instanceVariableNames: 'neededPercentage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKInput guid: (GUID fromString: '{b8008492-a807-4dc3-bf2a-3b0800770d7b}')!
PMBOKInput comment: 'This class represent a Input of a process in a PMI Project.

neededPercentage - indicates percentage of completation needed to be able to use the input.'!
!PMBOKInput categoriesForClass!Kernel-Objects! !
!PMBOKInput methodsFor!

initialize

	super initialize.

	neededPercentage := 100.!

neededPercentage
	^neededPercentage!

neededPercentage: anObject
	neededPercentage := anObject!

pathName

	^'Input'! !
!PMBOKInput categoriesFor: #initialize!public! !
!PMBOKInput categoriesFor: #neededPercentage!accessing!private! !
!PMBOKInput categoriesFor: #neededPercentage:!accessing!private! !
!PMBOKInput categoriesFor: #pathName!public! !

!PMBOKInput class methodsFor!

icon
	^PMBOKInputDefinition icon! !
!PMBOKInput class categoriesFor: #icon!public! !

