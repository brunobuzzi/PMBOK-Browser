"Filed out from Dolphin Smalltalk 7"!

PMBOKQuizObject subclass: #PMBOKQuizBuilder
	instanceVariableNames: 'baseObject aspect'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKQuizBuilder guid: (GUID fromString: '{017b380b-66aa-4ce0-93a8-c4c5c96fc0b6}')!
PMBOKQuizBuilder comment: ''!
!PMBOKQuizBuilder categoriesForClass!Kernel-Objects! !
!PMBOKQuizBuilder methodsFor!

aspect
	^aspect!

aspect: anObject
	aspect := anObject!

aspectIsCollection

	^(baseObject perform: aspect) isKindOf: Collection!

baseObject
	^baseObject!

baseObject: anObject
	baseObject := anObject!

chooseOneOfTheCollection
	| random |

	random := Random new.

	^self getCollectionAspect randomPeekWith: random!

getCollectionAspect

	^baseObject perform: aspect! !
!PMBOKQuizBuilder categoriesFor: #aspect!accessing!private! !
!PMBOKQuizBuilder categoriesFor: #aspect:!accessing!private! !
!PMBOKQuizBuilder categoriesFor: #aspectIsCollection!public! !
!PMBOKQuizBuilder categoriesFor: #baseObject!accessing!private! !
!PMBOKQuizBuilder categoriesFor: #baseObject:!accessing!private! !
!PMBOKQuizBuilder categoriesFor: #chooseOneOfTheCollection!public! !
!PMBOKQuizBuilder categoriesFor: #getCollectionAspect!public! !

!PMBOKQuizBuilder class methodsFor!

baseObject: aPMIObject aspect: aSymbol

	^super new initialize
		baseObject: aPMIObject;
		aspect: aSymbol;
		yourself.! !
!PMBOKQuizBuilder class categoriesFor: #baseObject:aspect:!public! !

