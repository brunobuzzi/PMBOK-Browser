"Filed out from Dolphin Smalltalk 7"!

PMIArtifactDefinition subclass: #PMIChangeRequestDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIChangeRequestDefinition guid: (GUID fromString: '{4bbf558c-25ed-45a7-99cb-f0d5c03c4987}')!
PMIChangeRequestDefinition comment: 'action - #corrective, #preventive, #defectRepair, #updates'!
!PMIChangeRequestDefinition categoriesForClass!Kernel-Objects! !
!PMIChangeRequestDefinition methodsFor!

isChangeRequest

	^true!

printType

	^self defaultLanguage printChangeRequestType: self! !
!PMIChangeRequestDefinition categoriesFor: #isChangeRequest!public! !
!PMIChangeRequestDefinition categoriesFor: #printType!public! !

!PMIChangeRequestDefinition class methodsFor!

icon

	^Message icon!

printType

	^self defaultLanguage printChangeRequestType: self! !
!PMIChangeRequestDefinition class categoriesFor: #icon!public! !
!PMIChangeRequestDefinition class categoriesFor: #printType!public! !

