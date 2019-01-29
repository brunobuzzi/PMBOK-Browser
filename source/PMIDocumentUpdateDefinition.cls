"Filed out from Dolphin Smalltalk 7"!

PMIArtifactDefinition subclass: #PMIDocumentUpdateDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDocumentUpdateDefinition guid: (GUID fromString: '{11ed5793-1504-4b54-9a92-4276623056d3}')!
PMIDocumentUpdateDefinition comment: ''!
!PMIDocumentUpdateDefinition categoriesForClass!Kernel-Objects! !
!PMIDocumentUpdateDefinition methodsFor!

isDocumentUpdate

	^true!

printType

	^self defaultLanguage printDocumentUpdateType: self! !
!PMIDocumentUpdateDefinition categoriesFor: #isDocumentUpdate!public! !
!PMIDocumentUpdateDefinition categoriesFor: #printType!public! !

!PMIDocumentUpdateDefinition class methodsFor!

icon

	^LintRule icon!

printType

	^self defaultLanguage printDocumentUpdateType: self! !
!PMIDocumentUpdateDefinition class categoriesFor: #icon!public! !
!PMIDocumentUpdateDefinition class categoriesFor: #printType!public! !

