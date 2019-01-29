"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMIDocumentWrapper
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDocumentWrapper guid: (GUID fromString: '{6454cca6-7b38-480f-8174-d0b8f40c8b18}')!
PMIDocumentWrapper comment: ''!
!PMIDocumentWrapper categoriesForClass!Kernel-Objects! !
!PMIDocumentWrapper methodsFor!

document
	^document!

document: anObject
	document := anObject!

doesNotUnderstand: failedMessage

	^document perform: failedMessage selector withArguments: failedMessage arguments! !
!PMIDocumentWrapper categoriesFor: #document!accessing!private! !
!PMIDocumentWrapper categoriesFor: #document:!accessing!private! !
!PMIDocumentWrapper categoriesFor: #doesNotUnderstand:!public! !

!PMIDocumentWrapper class methodsFor!

icon
	^PMIDocumentDefinition icon! !
!PMIDocumentWrapper class categoriesFor: #icon!public! !

