"Filed out from Dolphin Smalltalk 7"!

PMBOKArtifactDefinition subclass: #PMBOKValidatedChangeDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKValidatedChangeDefinition guid: (GUID fromString: '{5de7e31e-8356-4836-a267-508ee2088e77}')!
PMBOKValidatedChangeDefinition comment: ''!
!PMBOKValidatedChangeDefinition categoriesForClass!Kernel-Objects! !
!PMBOKValidatedChangeDefinition methodsFor!

isValidatedChange

	^true!

printType

	^self defaultLanguage printValidatedChangeType: self! !
!PMBOKValidatedChangeDefinition categoriesFor: #isValidatedChange!public! !
!PMBOKValidatedChangeDefinition categoriesFor: #printType!public! !

!PMBOKValidatedChangeDefinition class methodsFor!

icon

	^DolphinSureCertificate icon!

printType

	^self defaultLanguage printValidatedChangeType: self! !
!PMBOKValidatedChangeDefinition class categoriesFor: #icon!public! !
!PMBOKValidatedChangeDefinition class categoriesFor: #printType!public! !

