"Filed out from Dolphin Smalltalk 7"!

PMBOKArtifactDefinition subclass: #PMBOKChangeRequestStatusUpdateDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKChangeRequestStatusUpdateDefinition guid: (GUID fromString: '{1fb0c3bd-7f4d-4d82-a5dc-734c52050ca5}')!
PMBOKChangeRequestStatusUpdateDefinition comment: ''!
!PMBOKChangeRequestStatusUpdateDefinition categoriesForClass!Kernel-Objects! !
!PMBOKChangeRequestStatusUpdateDefinition methodsFor!

isChangeRequestUpdate

	^true!

printType

	^self defaultLanguage printChangeRequestStatusUpdateType: self! !
!PMBOKChangeRequestStatusUpdateDefinition categoriesFor: #isChangeRequestUpdate!public! !
!PMBOKChangeRequestStatusUpdateDefinition categoriesFor: #printType!public! !

!PMBOKChangeRequestStatusUpdateDefinition class methodsFor!

icon

	^InputState icon!

printType

	^self defaultLanguage printChangeRequestStatusUpdateType: self! !
!PMBOKChangeRequestStatusUpdateDefinition class categoriesFor: #icon!public! !
!PMBOKChangeRequestStatusUpdateDefinition class categoriesFor: #printType!public! !

