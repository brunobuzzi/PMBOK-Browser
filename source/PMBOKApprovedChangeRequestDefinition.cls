"Filed out from Dolphin Smalltalk 7"!

PMBOKArtifactDefinition subclass: #PMBOKApprovedChangeRequestDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKApprovedChangeRequestDefinition guid: (GUID fromString: '{726b9d5a-7dfc-4981-880b-9ca4df0c7208}')!
PMBOKApprovedChangeRequestDefinition comment: ''!
!PMBOKApprovedChangeRequestDefinition categoriesForClass!Kernel-Objects! !
!PMBOKApprovedChangeRequestDefinition methodsFor!

isApprovedChangeRequest

	^true!

printType

	^self defaultLanguage printApprovedChangeRequestType: self! !
!PMBOKApprovedChangeRequestDefinition categoriesFor: #isApprovedChangeRequest!public! !
!PMBOKApprovedChangeRequestDefinition categoriesFor: #printType!public! !

!PMBOKApprovedChangeRequestDefinition class methodsFor!

icon

	^DolphinSureTrustedData icon!

printType

	^self defaultLanguage printApprovedChangeRequestType: self! !
!PMBOKApprovedChangeRequestDefinition class categoriesFor: #icon!public! !
!PMBOKApprovedChangeRequestDefinition class categoriesFor: #printType!public! !

