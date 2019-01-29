"Filed out from Dolphin Smalltalk 7"!

PMIPortfolio subclass: #PMIHigherLevelPortfolio
	instanceVariableNames: 'lowerLevelPortfolios projects'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIHigherLevelPortfolio guid: (GUID fromString: '{148585de-604f-421e-a573-419e8dad12bb}')!
PMIHigherLevelPortfolio comment: ''!
!PMIHigherLevelPortfolio categoriesForClass!Kernel-Objects! !
!PMIHigherLevelPortfolio methodsFor!

addLowerLevelPortfolio: aPMIPortfolio

	aPMIPortfolio parentPorfolio: self.

	^lowerLevelPortfolios add: aPMIPortfolio!

addProject: aPMIProject

	aPMIProject projectParent: self.

	^projects add: aPMIProject!

initialize

	super initialize.

	projects := OrderedCollection new.
	lowerLevelPortfolios := OrderedCollection new.!

isTopPortfolio

	^true!

lowerLevelPortfolios
	^lowerLevelPortfolios!

lowerLevelPortfolios: anObject
	lowerLevelPortfolios := anObject!

pathName

	^'Higher Level Portfolio'!

projects
	^projects!

projects: anObject
	projects := anObject!

removeLowerLevelPortfolio: aPMIPortfolio

	aPMIPortfolio parentPorfolio: nil.

	^lowerLevelPortfolios remove: aPMIPortfolio!

removeProject: aPMIProject

	aPMIProject projectParent: nil.

	^projects remove: aPMIProject!

topParent

	^self! !
!PMIHigherLevelPortfolio categoriesFor: #addLowerLevelPortfolio:!public! !
!PMIHigherLevelPortfolio categoriesFor: #addProject:!public! !
!PMIHigherLevelPortfolio categoriesFor: #initialize!public! !
!PMIHigherLevelPortfolio categoriesFor: #isTopPortfolio!public! !
!PMIHigherLevelPortfolio categoriesFor: #lowerLevelPortfolios!accessing!private! !
!PMIHigherLevelPortfolio categoriesFor: #lowerLevelPortfolios:!accessing!private! !
!PMIHigherLevelPortfolio categoriesFor: #pathName!public! !
!PMIHigherLevelPortfolio categoriesFor: #projects!accessing!private! !
!PMIHigherLevelPortfolio categoriesFor: #projects:!accessing!private! !
!PMIHigherLevelPortfolio categoriesFor: #removeLowerLevelPortfolio:!public! !
!PMIHigherLevelPortfolio categoriesFor: #removeProject:!public! !
!PMIHigherLevelPortfolio categoriesFor: #topParent!public! !

