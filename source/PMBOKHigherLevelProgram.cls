"Filed out from Dolphin Smalltalk 7"!

PMBOKProgram subclass: #PMBOKHigherLevelProgram
	instanceVariableNames: 'lowerLevelPrograms'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKHigherLevelProgram guid: (GUID fromString: '{6efb0e04-9097-4941-a7e6-29555b17873a}')!
PMBOKHigherLevelProgram comment: ''!
!PMBOKHigherLevelProgram categoriesForClass!Kernel-Objects! !
!PMBOKHigherLevelProgram methodsFor!

initialize

	super initialize.

	lowerLevelPrograms := OrderedCollection new.!

isTopProgram

	^true!

lowerLevelPrograms
	^lowerLevelPrograms!

lowerLevelPrograms: anObject
	lowerLevelPrograms := anObject!

pathName

	^'Higher Level Program'! !
!PMBOKHigherLevelProgram categoriesFor: #initialize!public! !
!PMBOKHigherLevelProgram categoriesFor: #isTopProgram!public! !
!PMBOKHigherLevelProgram categoriesFor: #lowerLevelPrograms!accessing!private! !
!PMBOKHigherLevelProgram categoriesFor: #lowerLevelPrograms:!accessing!private! !
!PMBOKHigherLevelProgram categoriesFor: #pathName!public! !

