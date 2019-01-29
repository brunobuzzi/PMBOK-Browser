"Filed out from Dolphin Smalltalk 7"!

PMIDeliverable subclass: #PMIDocument
	instanceVariableNames: 'extension document link'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDocument guid: (GUID fromString: '{2d1b3e1e-c073-4979-b0ba-b85b7da171c6}')!
PMIDocument comment: ''!
!PMIDocument categoriesForClass!Kernel-Objects! !
!PMIDocument methodsFor!

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
!PMIDocument categoriesFor: #document!accessing!private! !
!PMIDocument categoriesFor: #document:!accessing!private! !
!PMIDocument categoriesFor: #extension!accessing!private! !
!PMIDocument categoriesFor: #extension:!accessing!private! !
!PMIDocument categoriesFor: #fileVersionName!public! !
!PMIDocument categoriesFor: #hasDocument!public! !
!PMIDocument categoriesFor: #hasLink!public! !
!PMIDocument categoriesFor: #isEnabled!public! !
!PMIDocument categoriesFor: #link!accessing!private! !
!PMIDocument categoriesFor: #link:!accessing!private! !

!PMIDocument class methodsFor!

createNew
	| newDocument |

	newDocument := super new initialize.
	newDocument addEvent: (PMICreateVersionEvent document: newDocument).
	^newDocument!

icon

	^PMIDocumentDefinition icon! !
!PMIDocument class categoriesFor: #createNew!public! !
!PMIDocument class categoriesFor: #icon!public! !

