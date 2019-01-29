"Filed out from Dolphin Smalltalk 7"!

PMIPortfolio subclass: #PMILowerLevelPortfolio
	instanceVariableNames: 'parentPorfolio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMILowerLevelPortfolio guid: (GUID fromString: '{e8f1e871-c0f1-4759-b5aa-027278274b0d}')!
PMILowerLevelPortfolio comment: ''!
!PMILowerLevelPortfolio categoriesForClass!Kernel-Objects! !
!PMILowerLevelPortfolio methodsFor!

parentPorfolio
	^parentPorfolio!

parentPorfolio: anObject
	parentPorfolio := anObject!

pathName

	^'Lower Level Portfolio'!

topParent

	^parentPorfolio! !
!PMILowerLevelPortfolio categoriesFor: #parentPorfolio!accessing!private! !
!PMILowerLevelPortfolio categoriesFor: #parentPorfolio:!accessing!private! !
!PMILowerLevelPortfolio categoriesFor: #pathName!public! !
!PMILowerLevelPortfolio categoriesFor: #topParent!public! !

