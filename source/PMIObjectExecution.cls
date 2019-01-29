"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMIObjectExecution
	instanceVariableNames: 'pmiDefinition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIObjectExecution guid: (GUID fromString: '{c4af73b5-146a-4b79-8159-ea2f75b18338}')!
PMIObjectExecution comment: ''!
!PMIObjectExecution categoriesForClass!Kernel-Objects! !
!PMIObjectExecution methodsFor!

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
!PMIObjectExecution categoriesFor: #definitionName!public! !
!PMIObjectExecution categoriesFor: #hasDefinition!public! !
!PMIObjectExecution categoriesFor: #isTopPortfolio!public! !
!PMIObjectExecution categoriesFor: #isTopProgram!public! !
!PMIObjectExecution categoriesFor: #pmiDefinition!accessing!private! !
!PMIObjectExecution categoriesFor: #pmiDefinition:!accessing!private! !

!PMIObjectExecution class methodsFor!

definition: aPMIObjectDefinition

	^super new initialize
		pmiDefinition: aPMIObjectDefinition;
		yourself.

	! !
!PMIObjectExecution class categoriesFor: #definition:!public! !

