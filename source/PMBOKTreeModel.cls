"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMBOKTreeModel
	instanceVariableNames: 'name description tree'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKTreeModel guid: (GUID fromString: '{237c5f85-4677-4db5-bcd6-8ab1fcb3475b}')!
PMBOKTreeModel comment: ''!
!PMBOKTreeModel categoriesForClass!Kernel-Objects! !
!PMBOKTreeModel methodsFor!

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
!PMBOKTreeModel categoriesFor: #addRoot:!public! !
!PMBOKTreeModel categoriesFor: #description!accessing!private! !
!PMBOKTreeModel categoriesFor: #description:!accessing!private! !
!PMBOKTreeModel categoriesFor: #initialize!public! !
!PMBOKTreeModel categoriesFor: #name!accessing!private! !
!PMBOKTreeModel categoriesFor: #name:!accessing!private! !
!PMBOKTreeModel categoriesFor: #roots!public! !
!PMBOKTreeModel categoriesFor: #roots:!public! !
!PMBOKTreeModel categoriesFor: #tree!accessing!private! !
!PMBOKTreeModel categoriesFor: #tree:!accessing!private! !

!PMBOKTreeModel class methodsFor!

icon

	^TreePresenter icon! !
!PMBOKTreeModel class categoriesFor: #icon!public! !

