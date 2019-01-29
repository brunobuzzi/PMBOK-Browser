"Filed out from Dolphin Smalltalk 7"!

PMIArtifactDefinition subclass: #PMIApprovedChangeRequestDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIApprovedChangeRequestDefinition guid: (GUID fromString: '{726b9d5a-7dfc-4981-880b-9ca4df0c7208}')!
PMIApprovedChangeRequestDefinition comment: ''!
!PMIApprovedChangeRequestDefinition categoriesForClass!Kernel-Objects! !
!PMIApprovedChangeRequestDefinition methodsFor!

isApprovedChangeRequest

	^true!

printType

	^self defaultLanguage printApprovedChangeRequestType: self! !
!PMIApprovedChangeRequestDefinition categoriesFor: #isApprovedChangeRequest!public! !
!PMIApprovedChangeRequestDefinition categoriesFor: #printType!public! !

!PMIApprovedChangeRequestDefinition class methodsFor!

icon

	^DolphinSureTrustedData icon!

printType

	^self defaultLanguage printApprovedChangeRequestType: self! !
!PMIApprovedChangeRequestDefinition class categoriesFor: #icon!public! !
!PMIApprovedChangeRequestDefinition class categoriesFor: #printType!public! !

