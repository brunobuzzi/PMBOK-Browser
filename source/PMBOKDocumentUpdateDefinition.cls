"Filed out from Dolphin Smalltalk 7"!

PMBOKArtifactDefinition subclass: #PMBOKDocumentUpdateDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDocumentUpdateDefinition guid: (GUID fromString: '{11ed5793-1504-4b54-9a92-4276623056d3}')!
PMBOKDocumentUpdateDefinition comment: ''!
!PMBOKDocumentUpdateDefinition categoriesForClass!Kernel-Objects! !
!PMBOKDocumentUpdateDefinition methodsFor!

isDocumentUpdate

	^true!

printType

	^self defaultLanguage printDocumentUpdateType: self! !
!PMBOKDocumentUpdateDefinition categoriesFor: #isDocumentUpdate!public! !
!PMBOKDocumentUpdateDefinition categoriesFor: #printType!public! !

!PMBOKDocumentUpdateDefinition class methodsFor!

icon

	^LintRule icon!

printType

	^self defaultLanguage printDocumentUpdateType: self! !
!PMBOKDocumentUpdateDefinition class categoriesFor: #icon!public! !
!PMBOKDocumentUpdateDefinition class categoriesFor: #printType!public! !

