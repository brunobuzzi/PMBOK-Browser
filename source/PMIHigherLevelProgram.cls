"Filed out from Dolphin Smalltalk 7"!

PMIProgram subclass: #PMIHigherLevelProgram
	instanceVariableNames: 'lowerLevelPrograms'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIHigherLevelProgram guid: (GUID fromString: '{6efb0e04-9097-4941-a7e6-29555b17873a}')!
PMIHigherLevelProgram comment: ''!
!PMIHigherLevelProgram categoriesForClass!Kernel-Objects! !
!PMIHigherLevelProgram methodsFor!

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
!PMIHigherLevelProgram categoriesFor: #initialize!public! !
!PMIHigherLevelProgram categoriesFor: #isTopProgram!public! !
!PMIHigherLevelProgram categoriesFor: #lowerLevelPrograms!accessing!private! !
!PMIHigherLevelProgram categoriesFor: #lowerLevelPrograms:!accessing!private! !
!PMIHigherLevelProgram categoriesFor: #pathName!public! !

