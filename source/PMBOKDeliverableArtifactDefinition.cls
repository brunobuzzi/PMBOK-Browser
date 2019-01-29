"Filed out from Dolphin Smalltalk 7"!

PMBOKArtifactDefinition subclass: #PMBOKDeliverableArtifactDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDeliverableArtifactDefinition guid: (GUID fromString: '{2fdaf5cb-18ec-41ad-b744-d17fdcd73f94}')!
PMBOKDeliverableArtifactDefinition comment: ''!
!PMBOKDeliverableArtifactDefinition categoriesForClass!Kernel-Objects! !
!PMBOKDeliverableArtifactDefinition methodsFor!

isDeliverableArtifact

	^true!

printType

	^self defaultLanguage printDeliverableArtifactType: self! !
!PMBOKDeliverableArtifactDefinition categoriesFor: #isDeliverableArtifact!public! !
!PMBOKDeliverableArtifactDefinition categoriesFor: #printType!public! !

!PMBOKDeliverableArtifactDefinition class methodsFor!

printType

	^self defaultLanguage printDeliverableArtifactType: self! !
!PMBOKDeliverableArtifactDefinition class categoriesFor: #printType!public! !

