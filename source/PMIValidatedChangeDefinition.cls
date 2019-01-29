"Filed out from Dolphin Smalltalk 7"!

PMIArtifactDefinition subclass: #PMIValidatedChangeDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIValidatedChangeDefinition guid: (GUID fromString: '{5de7e31e-8356-4836-a267-508ee2088e77}')!
PMIValidatedChangeDefinition comment: ''!
!PMIValidatedChangeDefinition categoriesForClass!Kernel-Objects! !
!PMIValidatedChangeDefinition methodsFor!

isValidatedChange

	^true!

printType

	^self defaultLanguage printValidatedChangeType: self! !
!PMIValidatedChangeDefinition categoriesFor: #isValidatedChange!public! !
!PMIValidatedChangeDefinition categoriesFor: #printType!public! !

!PMIValidatedChangeDefinition class methodsFor!

icon

	^DolphinSureCertificate icon!

printType

	^self defaultLanguage printValidatedChangeType: self! !
!PMIValidatedChangeDefinition class categoriesFor: #icon!public! !
!PMIValidatedChangeDefinition class categoriesFor: #printType!public! !

