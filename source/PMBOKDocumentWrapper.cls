"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMBOKDocumentWrapper
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDocumentWrapper guid: (GUID fromString: '{6454cca6-7b38-480f-8174-d0b8f40c8b18}')!
PMBOKDocumentWrapper comment: ''!
!PMBOKDocumentWrapper categoriesForClass!Kernel-Objects! !
!PMBOKDocumentWrapper methodsFor!

document
	^document!

document: anObject
	document := anObject!

doesNotUnderstand: failedMessage

	^document perform: failedMessage selector withArguments: failedMessage arguments! !
!PMBOKDocumentWrapper categoriesFor: #document!accessing!private! !
!PMBOKDocumentWrapper categoriesFor: #document:!accessing!private! !
!PMBOKDocumentWrapper categoriesFor: #doesNotUnderstand:!public! !

!PMBOKDocumentWrapper class methodsFor!

icon
	^PMBOKDocumentDefinition icon! !
!PMBOKDocumentWrapper class categoriesFor: #icon!public! !

