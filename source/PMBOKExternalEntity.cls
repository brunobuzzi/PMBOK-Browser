"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKExternalEntity
	instanceVariableNames: 'name description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKExternalEntity guid: (GUID fromString: '{c591af04-9673-4c87-9c48-d59d68630f02}')!
PMBOKExternalEntity comment: ''!
!PMBOKExternalEntity categoriesForClass!Kernel-Objects! !
!PMBOKExternalEntity methodsFor!

description
	^description!

description: anObject
	description := anObject!

initialize

	super initialize.

	name := ''.
	description := ''.!

name
	^name!

name: anObject
	name := anObject! !
!PMBOKExternalEntity categoriesFor: #description!accessing!private! !
!PMBOKExternalEntity categoriesFor: #description:!accessing!private! !
!PMBOKExternalEntity categoriesFor: #initialize!public! !
!PMBOKExternalEntity categoriesFor: #name!accessing!private! !
!PMBOKExternalEntity categoriesFor: #name:!accessing!private! !

