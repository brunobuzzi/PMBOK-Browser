"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIExternalEntity
	instanceVariableNames: 'name description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIExternalEntity guid: (GUID fromString: '{c591af04-9673-4c87-9c48-d59d68630f02}')!
PMIExternalEntity comment: ''!
!PMIExternalEntity categoriesForClass!Kernel-Objects! !
!PMIExternalEntity methodsFor!

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
!PMIExternalEntity categoriesFor: #description!accessing!private! !
!PMIExternalEntity categoriesFor: #description:!accessing!private! !
!PMIExternalEntity categoriesFor: #initialize!public! !
!PMIExternalEntity categoriesFor: #name!accessing!private! !
!PMIExternalEntity categoriesFor: #name:!accessing!private! !

