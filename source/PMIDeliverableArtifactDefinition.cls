"Filed out from Dolphin Smalltalk 7"!

PMIArtifactDefinition subclass: #PMIDeliverableArtifactDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDeliverableArtifactDefinition guid: (GUID fromString: '{2fdaf5cb-18ec-41ad-b744-d17fdcd73f94}')!
PMIDeliverableArtifactDefinition comment: ''!
!PMIDeliverableArtifactDefinition categoriesForClass!Kernel-Objects! !
!PMIDeliverableArtifactDefinition methodsFor!

isDeliverableArtifact

	^true!

printType

	^self defaultLanguage printDeliverableArtifactType: self! !
!PMIDeliverableArtifactDefinition categoriesFor: #isDeliverableArtifact!public! !
!PMIDeliverableArtifactDefinition categoriesFor: #printType!public! !

!PMIDeliverableArtifactDefinition class methodsFor!

printType

	^self defaultLanguage printDeliverableArtifactType: self! !
!PMIDeliverableArtifactDefinition class categoriesFor: #printType!public! !

