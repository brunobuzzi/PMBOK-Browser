"Filed out from Dolphin Smalltalk 7"!

PMIDeliverableEvent subclass: #PMIDocumentEvent
	instanceVariableNames: 'document comments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDocumentEvent guid: (GUID fromString: '{545792b9-667e-4f80-9b9a-a6641c73cd16}')!
PMIDocumentEvent comment: ''!
!PMIDocumentEvent categoriesForClass!Kernel-Objects! !
!PMIDocumentEvent methodsFor!

comments
	^comments!

comments: anObject
	comments := anObject!

document
	^document!

document: anObject
	document := anObject!

initialize

	super initialize.

	comments := ''.! !
!PMIDocumentEvent categoriesFor: #comments!accessing!private! !
!PMIDocumentEvent categoriesFor: #comments:!accessing!private! !
!PMIDocumentEvent categoriesFor: #document!accessing!private! !
!PMIDocumentEvent categoriesFor: #document:!accessing!private! !
!PMIDocumentEvent categoriesFor: #initialize!public! !

!PMIDocumentEvent class methodsFor!

document: aPMIDocument

	^super new initialize document: aPMIDocument! !
!PMIDocumentEvent class categoriesFor: #document:!public! !

