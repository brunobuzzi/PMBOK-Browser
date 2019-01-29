"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMITreeModel
	instanceVariableNames: 'name description tree'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMITreeModel guid: (GUID fromString: '{237c5f85-4677-4db5-bcd6-8ab1fcb3475b}')!
PMITreeModel comment: ''!
!PMITreeModel categoriesForClass!Kernel-Objects! !
!PMITreeModel methodsFor!

addRoot: anObject
 
	^tree addRoot: anObject asTreeNode!

description
	^description!

description: anObject
	description := anObject!

initialize

	super initialize.

	tree := TreeModel new.!

name
	^name!

name: anObject
	name := anObject!

roots

	^tree roots!

roots: anOrderedCollection

	tree roots: anOrderedCollection!

tree
	^tree!

tree: anObject
	tree := anObject! !
!PMITreeModel categoriesFor: #addRoot:!public! !
!PMITreeModel categoriesFor: #description!accessing!private! !
!PMITreeModel categoriesFor: #description:!accessing!private! !
!PMITreeModel categoriesFor: #initialize!public! !
!PMITreeModel categoriesFor: #name!accessing!private! !
!PMITreeModel categoriesFor: #name:!accessing!private! !
!PMITreeModel categoriesFor: #roots!public! !
!PMITreeModel categoriesFor: #roots:!public! !
!PMITreeModel categoriesFor: #tree!accessing!private! !
!PMITreeModel categoriesFor: #tree:!accessing!private! !

!PMITreeModel class methodsFor!

icon

	^TreePresenter icon! !
!PMITreeModel class categoriesFor: #icon!public! !

