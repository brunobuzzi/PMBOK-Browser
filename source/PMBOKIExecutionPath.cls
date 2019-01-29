"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKIExecutionPath
	instanceVariableNames: 'path'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKIExecutionPath guid: (GUID fromString: '{5609efe4-6939-4b52-9bc6-f32b27b6c6b3}')!
PMBOKIExecutionPath comment: ''!
!PMBOKIExecutionPath categoriesForClass!Kernel-Objects! !
!PMBOKIExecutionPath methodsFor!

initialize

	super initialize.
!

path
	^path!

path: anObject
	path := anObject! !
!PMBOKIExecutionPath categoriesFor: #initialize!public! !
!PMBOKIExecutionPath categoriesFor: #path!accessing!private! !
!PMBOKIExecutionPath categoriesFor: #path:!accessing!private! !

!PMBOKIExecutionPath class methodsFor!

on: anObject 
	^(super new initialize)
		root: anObject;
		yourself! !
!PMBOKIExecutionPath class categoriesFor: #on:!public! !

