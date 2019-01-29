"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMBOKObjectExecution
	instanceVariableNames: 'pmiDefinition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKObjectExecution guid: (GUID fromString: '{c4af73b5-146a-4b79-8159-ea2f75b18338}')!
PMBOKObjectExecution comment: ''!
!PMBOKObjectExecution categoriesForClass!Kernel-Objects! !
!PMBOKObjectExecution methodsFor!

definitionName

	^pmiDefinition name!

hasDefinition

	pmiDefinition ifNotNil: [:value | ^true].

	^false!

isTopPortfolio

	^false!

isTopProgram

	^false!

pmiDefinition
	^pmiDefinition!

pmiDefinition: anObject
	pmiDefinition := anObject! !
!PMBOKObjectExecution categoriesFor: #definitionName!public! !
!PMBOKObjectExecution categoriesFor: #hasDefinition!public! !
!PMBOKObjectExecution categoriesFor: #isTopPortfolio!public! !
!PMBOKObjectExecution categoriesFor: #isTopProgram!public! !
!PMBOKObjectExecution categoriesFor: #pmiDefinition!accessing!private! !
!PMBOKObjectExecution categoriesFor: #pmiDefinition:!accessing!private! !

!PMBOKObjectExecution class methodsFor!

definition: aPMIObjectDefinition

	^super new initialize
		pmiDefinition: aPMIObjectDefinition;
		yourself.

	! !
!PMBOKObjectExecution class categoriesFor: #definition:!public! !

