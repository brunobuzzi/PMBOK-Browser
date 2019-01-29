"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMITreeNode
	instanceVariableNames: 'object description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMITreeNode guid: (GUID fromString: '{4de0a5bc-f6e7-425e-8b28-5274090bcc8b}')!
PMITreeNode comment: ''!
!PMITreeNode categoriesForClass!Kernel-Objects! !
!PMITreeNode methodsFor!

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
!PMITreeNode categoriesFor: #description!accessing!private! !
!PMITreeNode categoriesFor: #description:!accessing!private! !
!PMITreeNode categoriesFor: #doesNotUnderstand:!public! !
!PMITreeNode categoriesFor: #icon!public! !
!PMITreeNode categoriesFor: #object!accessing!private! !
!PMITreeNode categoriesFor: #object:!accessing!private! !
!PMITreeNode categoriesFor: #objectDescription!public! !
!PMITreeNode categoriesFor: #objectDescription:!public! !

!PMITreeNode class methodsFor!

on: aPMIObject

	^super new initialize
		object: aPMIObject;
		yourself.! !
!PMITreeNode class categoriesFor: #on:!public! !

