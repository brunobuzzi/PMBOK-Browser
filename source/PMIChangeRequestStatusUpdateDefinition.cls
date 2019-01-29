"Filed out from Dolphin Smalltalk 7"!

PMIArtifactDefinition subclass: #PMIChangeRequestStatusUpdateDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIChangeRequestStatusUpdateDefinition guid: (GUID fromString: '{1fb0c3bd-7f4d-4d82-a5dc-734c52050ca5}')!
PMIChangeRequestStatusUpdateDefinition comment: ''!
!PMIChangeRequestStatusUpdateDefinition categoriesForClass!Kernel-Objects! !
!PMIChangeRequestStatusUpdateDefinition methodsFor!

isChangeRequestUpdate

	^true!

printType

	^self defaultLanguage printChangeRequestStatusUpdateType: self! !
!PMIChangeRequestStatusUpdateDefinition categoriesFor: #isChangeRequestUpdate!public! !
!PMIChangeRequestStatusUpdateDefinition categoriesFor: #printType!public! !

!PMIChangeRequestStatusUpdateDefinition class methodsFor!

icon

	^InputState icon!

printType

	^self defaultLanguage printChangeRequestStatusUpdateType: self! !
!PMIChangeRequestStatusUpdateDefinition class categoriesFor: #icon!public! !
!PMIChangeRequestStatusUpdateDefinition class categoriesFor: #printType!public! !

