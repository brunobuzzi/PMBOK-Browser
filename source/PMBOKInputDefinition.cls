"Filed out from Dolphin Smalltalk 7"!

PMBOKProcessArtifactDefinition subclass: #PMBOKInputDefinition
	instanceVariableNames: 'baselineDocuments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKInputDefinition guid: (GUID fromString: '{36437780-03bd-4e1e-961a-9cd5f79b2f67}')!
PMBOKInputDefinition comment: ''!
!PMBOKInputDefinition categoriesForClass!Kernel-Objects! !
!PMBOKInputDefinition methodsFor!

addDeliverable: aPMIDeliverableDefinition

	^baselineDocuments add: aPMIDeliverableDefinition!

baselineDocuments
	^baselineDocuments!

baselineDocuments: anObject
	baselineDocuments := anObject!

includesDeliverable: aPMIDeliverableDefinition

	^baselineDocuments includes: aPMIDeliverableDefinition!

initialize


	super initialize.

	baselineDocuments := OrderedCollection new.!

isBaseline

	^baselineDocuments notEmpty!

printType

	^'Input'!

removeDeliverable: aPMIDeliverableDefinition

	^baselineDocuments remove: aPMIDeliverableDefinition! !
!PMBOKInputDefinition categoriesFor: #addDeliverable:!public! !
!PMBOKInputDefinition categoriesFor: #baselineDocuments!accessing!private! !
!PMBOKInputDefinition categoriesFor: #baselineDocuments:!accessing!private! !
!PMBOKInputDefinition categoriesFor: #includesDeliverable:!public! !
!PMBOKInputDefinition categoriesFor: #initialize!public! !
!PMBOKInputDefinition categoriesFor: #isBaseline!public! !
!PMBOKInputDefinition categoriesFor: #printType!public! !
!PMBOKInputDefinition categoriesFor: #removeDeliverable:!public! !

!PMBOKInputDefinition class methodsFor!

icon
	^PMBOKDocumentDefinition icon! !
!PMBOKInputDefinition class categoriesFor: #icon!public! !

