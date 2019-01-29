"Filed out from Dolphin Smalltalk 7"!

PMBOKDeliverableEvent subclass: #PMBOKDocumentEvent
	instanceVariableNames: 'document comments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDocumentEvent guid: (GUID fromString: '{545792b9-667e-4f80-9b9a-a6641c73cd16}')!
PMBOKDocumentEvent comment: ''!
!PMBOKDocumentEvent categoriesForClass!Kernel-Objects! !
!PMBOKDocumentEvent methodsFor!

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
!PMBOKDocumentEvent categoriesFor: #comments!accessing!private! !
!PMBOKDocumentEvent categoriesFor: #comments:!accessing!private! !
!PMBOKDocumentEvent categoriesFor: #document!accessing!private! !
!PMBOKDocumentEvent categoriesFor: #document:!accessing!private! !
!PMBOKDocumentEvent categoriesFor: #initialize!public! !

!PMBOKDocumentEvent class methodsFor!

document: aPMIDocument

	^super new initialize document: aPMIDocument! !
!PMBOKDocumentEvent class categoriesFor: #document:!public! !

