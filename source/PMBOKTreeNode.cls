"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMBOKTreeNode
	instanceVariableNames: 'object description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKTreeNode guid: (GUID fromString: '{4de0a5bc-f6e7-425e-8b28-5274090bcc8b}')!
PMBOKTreeNode comment: ''!
!PMBOKTreeNode categoriesForClass!Kernel-Objects! !
!PMBOKTreeNode methodsFor!

description
	^description!

description: anObject
	description := anObject!

doesNotUnderstand: failedMessage

	^object perform: failedMessage selector withArguments: failedMessage arguments!

icon

	^object icon!

object
	^object!

object: anObject
	object := anObject!

objectDescription

	^object description!

objectDescription: aString

	^object description: aString! !
!PMBOKTreeNode categoriesFor: #description!accessing!private! !
!PMBOKTreeNode categoriesFor: #description:!accessing!private! !
!PMBOKTreeNode categoriesFor: #doesNotUnderstand:!public! !
!PMBOKTreeNode categoriesFor: #icon!public! !
!PMBOKTreeNode categoriesFor: #object!accessing!private! !
!PMBOKTreeNode categoriesFor: #object:!accessing!private! !
!PMBOKTreeNode categoriesFor: #objectDescription!public! !
!PMBOKTreeNode categoriesFor: #objectDescription:!public! !

!PMBOKTreeNode class methodsFor!

on: aPMIObject

	^super new initialize
		object: aPMIObject;
		yourself.! !
!PMBOKTreeNode class categoriesFor: #on:!public! !

