"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIExecutionPath
	instanceVariableNames: 'path'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIExecutionPath guid: (GUID fromString: '{5609efe4-6939-4b52-9bc6-f32b27b6c6b3}')!
PMIExecutionPath comment: ''!
!PMIExecutionPath categoriesForClass!Kernel-Objects! !
!PMIExecutionPath methodsFor!

initialize

	super initialize.
!

path
	^path!

path: anObject
	path := anObject! !
!PMIExecutionPath categoriesFor: #initialize!public! !
!PMIExecutionPath categoriesFor: #path!accessing!private! !
!PMIExecutionPath categoriesFor: #path:!accessing!private! !

!PMIExecutionPath class methodsFor!

on: anObject 
	^(super new initialize)
		root: anObject;
		yourself! !
!PMIExecutionPath class categoriesFor: #on:!public! !

