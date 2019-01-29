"Filed out from Dolphin Smalltalk 7"!

PMIObjectExecution subclass: #PMIPortfolio
	instanceVariableNames: 'name description higherLevelPrograms priority'
	classVariableNames: 'CacheOfPortfolios'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIPortfolio guid: (GUID fromString: '{e88d3838-58be-41f9-bfae-6443456b277e}')!
PMIPortfolio comment: 'A Portfolio is NOT temporary like Programs and Projects.

New initiatives become a part of a Portfolio when they are identified, selected or approved.'!
!PMIPortfolio categoriesForClass!Kernel-Objects! !
!PMIPortfolio methodsFor!

addHigherLevelProgram: aPMIProgram

	aPMIProgram programParent: self.

	^higherLevelPrograms add: aPMIProgram!

addToCache

	^self class cache add: self!

description
	^description!

description: anObject
	description := anObject!

higherLevelPrograms
	^higherLevelPrograms!

higherLevelPrograms: anObject
	higherLevelPrograms := anObject!

initialize

	super initialize.

	name := ''.
	description := ''.
	higherLevelPrograms := OrderedCollection new.
	priority := 5.!

name
	^name!

name: anObject
	name := anObject!

pathName

	^self subclassResponsibility!

priority
	^priority!

priority: anObject
	priority := anObject!

removeFromCache

	^self class cache remove: self!

removeHigherLevelProgram: aPMIProgram

	aPMIProgram programParent: nil.

	^higherLevelPrograms remove: aPMIProgram! !
!PMIPortfolio categoriesFor: #addHigherLevelProgram:!public! !
!PMIPortfolio categoriesFor: #addToCache!public! !
!PMIPortfolio categoriesFor: #description!accessing!private! !
!PMIPortfolio categoriesFor: #description:!accessing!private! !
!PMIPortfolio categoriesFor: #higherLevelPrograms!accessing!private! !
!PMIPortfolio categoriesFor: #higherLevelPrograms:!accessing!private! !
!PMIPortfolio categoriesFor: #initialize!public! !
!PMIPortfolio categoriesFor: #name!accessing!private! !
!PMIPortfolio categoriesFor: #name:!accessing!private! !
!PMIPortfolio categoriesFor: #pathName!public! !
!PMIPortfolio categoriesFor: #priority!accessing!private! !
!PMIPortfolio categoriesFor: #priority:!accessing!private! !
!PMIPortfolio categoriesFor: #removeFromCache!public! !
!PMIPortfolio categoriesFor: #removeHigherLevelProgram:!public! !

!PMIPortfolio class methodsFor!

cache

	CacheOfPortfolios ifNil: [CacheOfPortfolios := OrderedCollection new].

	^CacheOfPortfolios!

icon

	^Metaclass icon! !
!PMIPortfolio class categoriesFor: #cache!public! !
!PMIPortfolio class categoriesFor: #icon!public! !

