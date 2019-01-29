"Filed out from Dolphin Smalltalk 7"!

PMIQuizObject subclass: #PMIQuizBuilder
	instanceVariableNames: 'baseObject aspect'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIQuizBuilder guid: (GUID fromString: '{017b380b-66aa-4ce0-93a8-c4c5c96fc0b6}')!
PMIQuizBuilder comment: ''!
!PMIQuizBuilder categoriesForClass!Kernel-Objects! !
!PMIQuizBuilder methodsFor!

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
!PMIQuizBuilder categoriesFor: #aspect!accessing!private! !
!PMIQuizBuilder categoriesFor: #aspect:!accessing!private! !
!PMIQuizBuilder categoriesFor: #aspectIsCollection!public! !
!PMIQuizBuilder categoriesFor: #baseObject!accessing!private! !
!PMIQuizBuilder categoriesFor: #baseObject:!accessing!private! !
!PMIQuizBuilder categoriesFor: #chooseOneOfTheCollection!public! !
!PMIQuizBuilder categoriesFor: #getCollectionAspect!public! !

!PMIQuizBuilder class methodsFor!

baseObject: aPMIObject aspect: aSymbol

	^super new initialize
		baseObject: aPMIObject;
		aspect: aSymbol;
		yourself.! !
!PMIQuizBuilder class categoriesFor: #baseObject:aspect:!public! !

