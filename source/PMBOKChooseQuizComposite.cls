"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKChooseQuizComposite
	instanceVariableNames: 'textPresenter optionsPresenter modePresenter passedPresenter failedPresenter ratePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKChooseQuizComposite guid: (GUID fromString: '{19b83710-a7f4-46cd-899d-64fb82b1cdb7}')!
PMBOKChooseQuizComposite comment: ''!
!PMBOKChooseQuizComposite categoriesForClass!MVP-Presenters! !
!PMBOKChooseQuizComposite methodsFor!

createComponents

	super createComponents.

	textPresenter := self add: TextPresenter new name: 'text'.
	optionsPresenter := self add: ListPresenter new name: 'options'.
	modePresenter := self add: ListPresenter new name: 'mode'.
	passedPresenter := self add: TextPresenter new name: 'passed'.
	failedPresenter := self add: TextPresenter new name: 'failed'.
	ratePresenter := self add: TextPresenter new name: 'rate'.
!

createFailedEffect
	| actualColor |

	[actualColor := failedPresenter view backcolor.
	failedPresenter view backcolor: Color darkRed.
	passedPresenter view invalidate.
	(Delay forMilliseconds: 200) wait.
	failedPresenter view backcolor: actualColor] forkAt: 6 .
!

createPassedEfect 
	| actualColor |

	[actualColor := passedPresenter view backcolor.
	passedPresenter view backcolor: Color darkGreen.
	passedPresenter view invalidate.
	(Delay forMilliseconds: 200) wait.
	passedPresenter view backcolor: actualColor] forkAt: 6 .
!

createSchematicWiring

	super createSchematicWiring.

	optionsPresenter when: #leftButtonDoubleClicked: send: #onOptionDoubleClicked: to: self!

getAllModes

	self subclassResponsibility!

model: aPMIChooseQuiz

	super model: aPMIChooseQuiz.

	modePresenter model: (ListModel on: self getAllModes).

	passedPresenter value: 0.
	failedPresenter value: 0.
	ratePresenter value: 0.!

newTest

	self subclassResponsibility!

onOptionDoubleClicked: aMouseEvent

	optionsPresenter hasSelection ifFalse: [^self].

	self test!

restart

	passedPresenter value: 0.

	failedPresenter value: 0.

	ratePresenter value: 0.!

test

	MessageBox notify: ((optionsPresenter selectionOrNil == model answer) ifTrue: ['Test Passed !!'] ifFalse: ['Test Failed !!']).

	(optionsPresenter selectionOrNil == model answer) 
		ifTrue: [self createPassedEfect] 
		ifFalse: [self createFailedEffect].

	(optionsPresenter selectionOrNil == model answer) 
	ifTrue: [passedPresenter value: passedPresenter value + 1] 
	ifFalse: [failedPresenter value: failedPresenter value + 1].

	ratePresenter value: (((100*passedPresenter value)/(passedPresenter value + failedPresenter value)) asScaledDecimal: 2).

	self newTest.! !
!PMBOKChooseQuizComposite categoriesFor: #createComponents!public! !
!PMBOKChooseQuizComposite categoriesFor: #createFailedEffect!public! !
!PMBOKChooseQuizComposite categoriesFor: #createPassedEfect!public! !
!PMBOKChooseQuizComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKChooseQuizComposite categoriesFor: #getAllModes!public! !
!PMBOKChooseQuizComposite categoriesFor: #model:!public! !
!PMBOKChooseQuizComposite categoriesFor: #newTest!public! !
!PMBOKChooseQuizComposite categoriesFor: #onOptionDoubleClicked:!public! !
!PMBOKChooseQuizComposite categoriesFor: #restart!public! !
!PMBOKChooseQuizComposite categoriesFor: #test!public! !

!PMBOKChooseQuizComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 0 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 0 234 256 98 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 601 786 1121 91 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 44 1 0 0 48 2 0 0 89 1 0 0] 98 2 410 8 ##(Smalltalk.PushButton)  98 20 0 560 98 2 8 1140924416 1 896 0 0 0 5 0 0 0 896 0 8 4294903017 1180998 4 ##(Smalltalk.CommandDescription)  8 #test 8 'Test' 1 1 0 0 32 0 0 0 658 202 208 98 3 722 752 98 2 786 911 1 786 181 91 896 722 8 #isEnabled: 98 1 32 896 722 8 #text: 98 1 8 'Test' 896 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 199 1 0 0 0 0 0 0 33 2 0 0 45 0 0 0] 98 0 786 193 193 0 29 410 912 98 20 0 560 98 2 8 1140924416 1 1344 0 0 0 5 0 0 0 1344 0 8 4294903017 994 8 #newTest 8 '&New Test' 1 1 0 0 32 0 0 0 658 202 208 98 3 722 752 98 2 786 701 1 786 181 91 1344 722 1184 98 1 32 1344 722 1232 98 1 8 '&New Test' 1344 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 94 1 0 0 0 0 0 0 184 1 0 0 45 0 0 0] 98 0 1328 0 29 1328 0 27 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 1712 0 0 0 5 0 0 0 1712 530 1 1 410 432 98 15 0 1712 98 2 8 1140850688 131073 1792 0 0 0 5 0 0 0 1792 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.TextEdit)  98 16 0 1792 98 2 8 1140916352 262145 1920 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1920 0 8 4294902819 852486 ##(Smalltalk.NullConverter)  0 0 1 658 202 208 98 3 722 752 98 2 786 41 41 786 1041 91 1920 722 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 1920 722 8 #isTextModified: 98 1 32 1920 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 20 0 0 0 28 2 0 0 65 0 0 0] 98 0 1328 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 41 2418 8 #fixedParentRight -39 2418 8 #fixedParentTop 41 2418 8 #fixedParentBottom -19 410 8 ##(Smalltalk.GroupBox)  98 14 0 1792 98 2 8 1140850695 65 2560 0 2002 8 4278190080 0 5 0 0 0 2560 0 8 4294903017 658 202 208 98 2 722 752 98 2 786 21 1 786 1081 151 2560 722 1232 98 1 8 'Quiz' 2560 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 38 2 0 0 75 0 0 0] 98 0 1328 0 27 2386 2432 21 2464 -19 2496 1 2528 1 234 256 98 2 1920 8 'text' 0 658 202 208 98 1 722 752 98 2 786 1 1 786 1121 151 1792 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 48 2 0 0 75 0 0 0] 98 2 1920 2560 1328 0 27 410 432 98 15 0 1712 98 2 8 1140850688 131073 3120 0 0 0 5 0 0 0 3120 1858 234 240 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 3120 98 2 8 1412498947 1025 3232 590662 2 ##(Smalltalk.ListModel)  202 208 640 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  2002 8 4278190080 0 5 0 0 0 3232 0 8 4294902823 459270 ##(Smalltalk.Message)  8 #displayString 98 0 640 401 658 202 208 98 1 722 752 98 2 786 41 61 786 521 47 3232 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 30 0 0 0 24 1 0 0 53 0 0 0] 98 0 1328 0 27 2386 2432 41 2464 -559 2496 61 2528 -79 410 2576 98 14 0 3120 98 2 8 1140850695 65 3680 0 2002 2656 0 5 0 0 0 3680 0 8 4294903017 658 202 208 98 2 722 752 98 2 786 21 1 786 1081 161 3680 722 1232 98 1 8 'Test Mode' 3680 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 0 0 0 0 38 2 0 0 80 0 0 0] 98 0 1328 0 27 2386 2432 21 2464 -19 2496 1 2528 -29 234 256 98 2 3232 8 'mode' 0 658 202 208 98 1 722 752 98 2 786 1 411 786 1121 191 3120 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 205 0 0 0 48 2 0 0 44 1 0 0] 98 2 3680 3232 1328 0 27 0 0 410 432 98 15 0 1712 98 2 8 1140850688 131073 4208 0 0 0 5 0 0 0 4208 1858 234 240 98 4 410 2576 98 14 0 4208 98 2 8 1140850695 65 4320 0 2002 2656 0 5 0 0 0 4320 0 8 4294903017 658 202 208 98 2 722 752 98 2 786 21 21 786 1081 221 4320 722 1232 98 1 8 'Select an Option' 4320 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 38 2 0 0 120 0 0 0] 98 0 1328 0 27 2386 2432 21 2464 -19 2496 1 2528 1 410 8 ##(Smalltalk.ListBox)  98 17 0 4208 98 2 8 1412497665 1025 4640 3314 202 208 640 0 3376 2002 8 4278190080 0 5 0 0 0 4640 0 8 4294901987 3442 8 #name 98 0 640 32 658 202 208 98 2 722 752 98 2 786 41 61 786 1041 161 4640 722 8 #horizontalExtent: 98 1 1 4640 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 30 0 0 0 28 2 0 0 110 0 0 0] 98 0 1328 0 27 2386 2432 41 2464 -39 2496 41 2528 -19 234 256 98 2 4640 8 'options' 590342 ##(Smalltalk.Rectangle)  786 1 21 786 1 21 658 202 208 98 1 722 752 98 2 786 1 151 786 1121 261 4208 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 75 0 0 0 48 2 0 0 205 0 0 0] 98 2 4640 4320 1328 0 27 234 256 640 0 658 202 208 98 1 722 752 98 2 786 1 1 786 1121 601 1712 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 48 2 0 0 44 1 0 0] 98 3 1792 4208 3120 1328 0 27 234 256 640 0 658 202 208 98 1 722 752 98 2 786 3199 21 786 1121 691 416 834 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 111 8 0 0 99 1 0 0] 98 2 1712 560 1328 0 27 )! !
!PMBOKChooseQuizComposite class categoriesFor: #resource_Default_view!public!resources-views! !

