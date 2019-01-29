"Filed out from Dolphin Smalltalk 7"!

PMIObjectExecution subclass: #PMIProgram
	instanceVariableNames: 'name description projects programParent priority'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProgram guid: (GUID fromString: '{e4d98614-7285-46fb-be82-8630edcb32a0}')!
PMIProgram comment: ''!
!PMIProgram categoriesForClass!Kernel-Objects! !
!PMIProgram methodsFor!

description
	^description!

description: anObject
	description := anObject!

initialize

	super initialize.

	name := ''.
	description := ''.
	projects := OrderedCollection new.
	priority := 5.!

name
	^name!

name: anObject
	name := anObject!

pathName

	^self subclassResponsibility!

priority
	^priority!

priority: anObject
	priority := anObject!

programParent
	^programParent!

programParent: anObject
	programParent := anObject!

projects
	^projects!

projects: anObject
	projects := anObject!

topParent

	^programParent! !
!PMIProgram categoriesFor: #description!accessing!private! !
!PMIProgram categoriesFor: #description:!accessing!private! !
!PMIProgram categoriesFor: #initialize!public! !
!PMIProgram categoriesFor: #name!accessing!private! !
!PMIProgram categoriesFor: #name:!accessing!private! !
!PMIProgram categoriesFor: #pathName!public! !
!PMIProgram categoriesFor: #priority!accessing!private! !
!PMIProgram categoriesFor: #priority:!accessing!private! !
!PMIProgram categoriesFor: #programParent!accessing!private! !
!PMIProgram categoriesFor: #programParent:!accessing!private! !
!PMIProgram categoriesFor: #projects!accessing!private! !
!PMIProgram categoriesFor: #projects:!accessing!private! !
!PMIProgram categoriesFor: #topParent!public! !

!PMIProgram class methodsFor!

icon

	^BlockClosure icon! !
!PMIProgram class categoriesFor: #icon!public! !

