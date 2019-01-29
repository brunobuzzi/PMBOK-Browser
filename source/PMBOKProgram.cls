"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectExecution subclass: #PMBOKProgram
	instanceVariableNames: 'name description projects programParent priority'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProgram guid: (GUID fromString: '{e4d98614-7285-46fb-be82-8630edcb32a0}')!
PMBOKProgram comment: ''!
!PMBOKProgram categoriesForClass!Kernel-Objects! !
!PMBOKProgram methodsFor!

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
!PMBOKProgram categoriesFor: #description!accessing!private! !
!PMBOKProgram categoriesFor: #description:!accessing!private! !
!PMBOKProgram categoriesFor: #initialize!public! !
!PMBOKProgram categoriesFor: #name!accessing!private! !
!PMBOKProgram categoriesFor: #name:!accessing!private! !
!PMBOKProgram categoriesFor: #pathName!public! !
!PMBOKProgram categoriesFor: #priority!accessing!private! !
!PMBOKProgram categoriesFor: #priority:!accessing!private! !
!PMBOKProgram categoriesFor: #programParent!accessing!private! !
!PMBOKProgram categoriesFor: #programParent:!accessing!private! !
!PMBOKProgram categoriesFor: #projects!accessing!private! !
!PMBOKProgram categoriesFor: #projects:!accessing!private! !
!PMBOKProgram categoriesFor: #topParent!public! !

!PMBOKProgram class methodsFor!

icon

	^BlockClosure icon! !
!PMBOKProgram class categoriesFor: #icon!public! !

