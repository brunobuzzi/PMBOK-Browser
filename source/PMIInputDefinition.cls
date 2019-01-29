"Filed out from Dolphin Smalltalk 7"!

PMIProcessArtifactDefinition subclass: #PMIInputDefinition
	instanceVariableNames: 'baselineDocuments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIInputDefinition guid: (GUID fromString: '{36437780-03bd-4e1e-961a-9cd5f79b2f67}')!
PMIInputDefinition comment: ''!
!PMIInputDefinition categoriesForClass!Kernel-Objects! !
!PMIInputDefinition methodsFor!

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
!PMIInputDefinition categoriesFor: #addDeliverable:!public! !
!PMIInputDefinition categoriesFor: #baselineDocuments!accessing!private! !
!PMIInputDefinition categoriesFor: #baselineDocuments:!accessing!private! !
!PMIInputDefinition categoriesFor: #includesDeliverable:!public! !
!PMIInputDefinition categoriesFor: #initialize!public! !
!PMIInputDefinition categoriesFor: #isBaseline!public! !
!PMIInputDefinition categoriesFor: #printType!public! !
!PMIInputDefinition categoriesFor: #removeDeliverable:!public! !

!PMIInputDefinition class methodsFor!

icon
	^PMIDocumentDefinition icon! !
!PMIInputDefinition class categoriesFor: #icon!public! !

