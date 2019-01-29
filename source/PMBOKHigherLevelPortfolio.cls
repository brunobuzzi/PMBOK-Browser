"Filed out from Dolphin Smalltalk 7"!

PMBOKPortfolio subclass: #PMBOKHigherLevelPortfolio
	instanceVariableNames: 'lowerLevelPortfolios projects'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKHigherLevelPortfolio guid: (GUID fromString: '{148585de-604f-421e-a573-419e8dad12bb}')!
PMBOKHigherLevelPortfolio comment: ''!
!PMBOKHigherLevelPortfolio categoriesForClass!Kernel-Objects! !
!PMBOKHigherLevelPortfolio methodsFor!

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
!PMBOKHigherLevelPortfolio categoriesFor: #addLowerLevelPortfolio:!public! !
!PMBOKHigherLevelPortfolio categoriesFor: #addProject:!public! !
!PMBOKHigherLevelPortfolio categoriesFor: #initialize!public! !
!PMBOKHigherLevelPortfolio categoriesFor: #isTopPortfolio!public! !
!PMBOKHigherLevelPortfolio categoriesFor: #lowerLevelPortfolios!accessing!private! !
!PMBOKHigherLevelPortfolio categoriesFor: #lowerLevelPortfolios:!accessing!private! !
!PMBOKHigherLevelPortfolio categoriesFor: #pathName!public! !
!PMBOKHigherLevelPortfolio categoriesFor: #projects!accessing!private! !
!PMBOKHigherLevelPortfolio categoriesFor: #projects:!accessing!private! !
!PMBOKHigherLevelPortfolio categoriesFor: #removeLowerLevelPortfolio:!public! !
!PMBOKHigherLevelPortfolio categoriesFor: #removeProject:!public! !
!PMBOKHigherLevelPortfolio categoriesFor: #topParent!public! !

