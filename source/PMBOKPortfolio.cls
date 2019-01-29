"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectExecution subclass: #PMBOKPortfolio
	instanceVariableNames: 'name description higherLevelPrograms priority'
	classVariableNames: 'CacheOfPortfolios'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKPortfolio guid: (GUID fromString: '{e88d3838-58be-41f9-bfae-6443456b277e}')!
PMBOKPortfolio comment: 'A Portfolio is NOT temporary like Programs and Projects.

New initiatives become a part of a Portfolio when they are identified, selected or approved.'!
!PMBOKPortfolio categoriesForClass!Kernel-Objects! !
!PMBOKPortfolio methodsFor!

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
!PMBOKPortfolio categoriesFor: #addHigherLevelProgram:!public! !
!PMBOKPortfolio categoriesFor: #addToCache!public! !
!PMBOKPortfolio categoriesFor: #description!accessing!private! !
!PMBOKPortfolio categoriesFor: #description:!accessing!private! !
!PMBOKPortfolio categoriesFor: #higherLevelPrograms!accessing!private! !
!PMBOKPortfolio categoriesFor: #higherLevelPrograms:!accessing!private! !
!PMBOKPortfolio categoriesFor: #initialize!public! !
!PMBOKPortfolio categoriesFor: #name!accessing!private! !
!PMBOKPortfolio categoriesFor: #name:!accessing!private! !
!PMBOKPortfolio categoriesFor: #pathName!public! !
!PMBOKPortfolio categoriesFor: #priority!accessing!private! !
!PMBOKPortfolio categoriesFor: #priority:!accessing!private! !
!PMBOKPortfolio categoriesFor: #removeFromCache!public! !
!PMBOKPortfolio categoriesFor: #removeHigherLevelProgram:!public! !

!PMBOKPortfolio class methodsFor!

cache

	CacheOfPortfolios ifNil: [CacheOfPortfolios := OrderedCollection new].

	^CacheOfPortfolios!

icon

	^Metaclass icon! !
!PMBOKPortfolio class categoriesFor: #cache!public! !
!PMBOKPortfolio class categoriesFor: #icon!public! !

