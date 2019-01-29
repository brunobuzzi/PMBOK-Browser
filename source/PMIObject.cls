"Filed out from Dolphin Smalltalk 7"!

Object subclass: #PMIObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIObject guid: (GUID fromString: '{31d2c713-11a1-43bf-89ac-16090070f9ea}')!
PMIObject comment: ''!
!PMIObject categoriesForClass!Kernel-Objects! !
!PMIObject methodsFor!

asTreeNode
	^PMBOKTreeNode on: self!

defaultLanguage
	^PMBOKLanguage default!

defaultPath

	^SessionManager current imageBase, 'PMI Project Files\'!

executionFilePath

	^SessionManager current imageBase, 'PMI Project Files\'!

hasImage
	^false!

imagePath

	^SessionManager current imageBase, 'PMPFiles\'!

isApprovedChangeRequest

	^false!

isArtifact

	^false!

isChangeRequest

	^false!

isChangeRequestUpdate

	^false!

isDeliverable

	^false!

isDeliverableArtifact

	^false!

isDocumentUpdate

	^false!

isOrganizationAsset

	^false!

isProcessOI

	^false!

isValidatedChange

	^false!

projectModel

	^self defaultLanguage defaultPMIModel!

templatesPath

	^SessionManager current imageBase, 'PMI Definition Templates\'! !
!PMIObject categoriesFor: #asTreeNode!public! !
!PMIObject categoriesFor: #defaultLanguage!public! !
!PMIObject categoriesFor: #defaultPath!public! !
!PMIObject categoriesFor: #executionFilePath!public! !
!PMIObject categoriesFor: #hasImage!public! !
!PMIObject categoriesFor: #imagePath!public! !
!PMIObject categoriesFor: #isApprovedChangeRequest!public! !
!PMIObject categoriesFor: #isArtifact!public! !
!PMIObject categoriesFor: #isChangeRequest!public! !
!PMIObject categoriesFor: #isChangeRequestUpdate!public! !
!PMIObject categoriesFor: #isDeliverable!public! !
!PMIObject categoriesFor: #isDeliverableArtifact!public! !
!PMIObject categoriesFor: #isDocumentUpdate!public! !
!PMIObject categoriesFor: #isOrganizationAsset!public! !
!PMIObject categoriesFor: #isProcessOI!public! !
!PMIObject categoriesFor: #isValidatedChange!public! !
!PMIObject categoriesFor: #projectModel!public! !
!PMIObject categoriesFor: #templatesPath!public! !

!PMIObject class methodsFor!

defaultLanguage
	^PMBOKLanguage default!

new

	^super new initialize!

projectModel

	^self defaultLanguage defaultPMIModel! !
!PMIObject class categoriesFor: #defaultLanguage!public! !
!PMIObject class categoriesFor: #new!public! !
!PMIObject class categoriesFor: #projectModel!public! !

