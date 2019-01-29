"Filed out from Dolphin Smalltalk 7"!

PMBOKPortfolio subclass: #PMBOKLowerLevelPortfolio
	instanceVariableNames: 'parentPorfolio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKLowerLevelPortfolio guid: (GUID fromString: '{e8f1e871-c0f1-4759-b5aa-027278274b0d}')!
PMBOKLowerLevelPortfolio comment: ''!
!PMBOKLowerLevelPortfolio categoriesForClass!Kernel-Objects! !
!PMBOKLowerLevelPortfolio methodsFor!

parentPorfolio
	^parentPorfolio!

parentPorfolio: anObject
	parentPorfolio := anObject!

pathName

	^'Lower Level Portfolio'!

topParent

	^parentPorfolio! !
!PMBOKLowerLevelPortfolio categoriesFor: #parentPorfolio!accessing!private! !
!PMBOKLowerLevelPortfolio categoriesFor: #parentPorfolio:!accessing!private! !
!PMBOKLowerLevelPortfolio categoriesFor: #pathName!public! !
!PMBOKLowerLevelPortfolio categoriesFor: #topParent!public! !

