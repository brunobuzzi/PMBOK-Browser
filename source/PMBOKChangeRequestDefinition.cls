"Filed out from Dolphin Smalltalk 7"!

PMBOKArtifactDefinition subclass: #PMBOKChangeRequestDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKChangeRequestDefinition guid: (GUID fromString: '{4bbf558c-25ed-45a7-99cb-f0d5c03c4987}')!
PMBOKChangeRequestDefinition comment: 'action - #corrective, #preventive, #defectRepair, #updates'!
!PMBOKChangeRequestDefinition categoriesForClass!Kernel-Objects! !
!PMBOKChangeRequestDefinition methodsFor!

isChangeRequest

	^true!

printType

	^self defaultLanguage printChangeRequestType: self! !
!PMBOKChangeRequestDefinition categoriesFor: #isChangeRequest!public! !
!PMBOKChangeRequestDefinition categoriesFor: #printType!public! !

!PMBOKChangeRequestDefinition class methodsFor!

icon

	^Message icon!

printType

	^self defaultLanguage printChangeRequestType: self! !
!PMBOKChangeRequestDefinition class categoriesFor: #icon!public! !
!PMBOKChangeRequestDefinition class categoriesFor: #printType!public! !

