"Filed out from Dolphin Smalltalk 7"!

PMBOKDeliverable subclass: #PMBOKDocument
	instanceVariableNames: 'extension document link'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDocument guid: (GUID fromString: '{2d1b3e1e-c073-4979-b0ba-b85b7da171c6}')!
PMBOKDocument comment: ''!
!PMBOKDocument categoriesForClass!Kernel-Objects! !
!PMBOKDocument methodsFor!

document
	^document!

document: anObject
	document := anObject!

extension
	^extension!

extension: anObject
	extension := anObject!

fileVersionName

	^(File splitStemFrom: name), 
		('_v_', self printVersion), 
		('.'), 
		(File splitExtensionFrom: self name)!

hasDocument

	^document notNil!

hasLink

	^link notNil!

isEnabled

	^self hasDocument or: [self hasLink]!

link
	^link!

link: anObject
	link := anObject! !
!PMBOKDocument categoriesFor: #document!accessing!private! !
!PMBOKDocument categoriesFor: #document:!accessing!private! !
!PMBOKDocument categoriesFor: #extension!accessing!private! !
!PMBOKDocument categoriesFor: #extension:!accessing!private! !
!PMBOKDocument categoriesFor: #fileVersionName!public! !
!PMBOKDocument categoriesFor: #hasDocument!public! !
!PMBOKDocument categoriesFor: #hasLink!public! !
!PMBOKDocument categoriesFor: #isEnabled!public! !
!PMBOKDocument categoriesFor: #link!accessing!private! !
!PMBOKDocument categoriesFor: #link:!accessing!private! !

!PMBOKDocument class methodsFor!

createNew
	| newDocument |
	newDocument := super new initialize.
	newDocument addEvent: (PMBOKCreateVersionEvent document: newDocument).
	^newDocument!

icon
	^PMBOKDocumentDefinition icon! !
!PMBOKDocument class categoriesFor: #createNew!public! !
!PMBOKDocument class categoriesFor: #icon!public! !

