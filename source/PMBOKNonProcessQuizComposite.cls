"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKNonProcessQuizComposite
	instanceVariableNames: 'listPresenter inputProcessesPresenter outputProcessesPresenter testsPresenter reversedPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKNonProcessQuizComposite guid: (GUID fromString: '{c9c96b28-724c-4fcf-89aa-5e540e5cba22}')!
PMBOKNonProcessQuizComposite comment: ''!
!PMBOKNonProcessQuizComposite categoriesForClass!MVP-Presenters! !
!PMBOKNonProcessQuizComposite methodsFor!

addElement!

addInputProcess
	| process |

	process := DetalleDeOpciones listaCon: (self projectModel getAllProcesses) para: 'PMI Process list' titulo: 'Select Process'.
	process ifNil: [^self].
	process := process first.
	testsPresenter selection addInputProcess: process.
	inputProcessesPresenter model: (ListModel on: testsPresenter selection inputProcesses).

	inputProcessesPresenter selection: process ifAbsent: []!

addOutputProcess
	| process |

	process := DetalleDeOpciones listaCon: (self projectModel getAllProcesses) para: 'PMI Process list' titulo: 'Select Process'.
	process ifNil: [^self].
	process := process first.
	testsPresenter selection addOutputProcess: process.
	outputProcessesPresenter model: (ListModel on: testsPresenter selection outputProcesses).

	outputProcessesPresenter selection: process ifAbsent: []!

createComponents

	super createComponents.

	listPresenter := self add: ListPresenter new name: 'list'.
	inputProcessesPresenter := self add: ListPresenter new name: 'inputProcesses'.
	outputProcessesPresenter := self add: ListPresenter new name: 'outputProcesses'.
	testsPresenter := self add: ListPresenter new name: 'tests'.
	reversedPresenter := self add: BooleanPresenter new name: 'reversed'.!

createSchematicWiring

	super createSchematicWiring.

	testsPresenter when: #selectionChanged send: #onTestChanged to: self.

	listPresenter when: #selectionChanged send: #onListElementChanged to: self.

	inputProcessesPresenter when: #leftButtonDoubleClicked: send: #onInputProcessDoubleCliked: to: self.

	outputProcessesPresenter when: #leftButtonDoubleClicked: send: #onOutputProcessDoubleCliked: to: self.!

getActualDrawBlockForInputProcess

	^testsPresenter selection getInputDrawBlockFrom: self!

getActualDrawBlockForOutputProcess

	^testsPresenter selection getOutputDrawBlockFrom: self!

inputArtifactCustomDrawBlock

	^[:ctx | | prc color |
		prc := ctx item.
		color := listPresenter selectionOrNil 
			ifNil: [Color darkRed] 
			ifNotNil: [:selection | (prc inputIncludesArtifactClass: selection) ifTrue: [Color darkGreen] ifFalse: [Color darkRed]].
		ctx forecolor: color]!

inputDeliverableCustomDrawBlock

	^[:ctx | | prc color |
		prc := ctx item.
		color := listPresenter selectionOrNil 
			ifNil: [Color darkRed] 
			ifNotNil: [:selection | (prc inputIncludesDeliverable: selection) ifTrue: [Color darkGreen] ifFalse: [Color darkRed]].
		ctx forecolor: color]!

model: aModel
	super model: aModel.
	testsPresenter
		model: (ListModel on: (PMBOKNonProcessQuiz allSubclasses collect: [:each | each new]))!

onInputProcessDoubleCliked: aMouseEvent

	inputProcessesPresenter hasSelection ifFalse: [^self].

	inputProcessesPresenter selection show!

onListElementChanged

	reversedPresenter value ifFalse: [^self].

	inputProcessesPresenter view invalidate.
	outputProcessesPresenter view invalidate.!

onOutputProcessDoubleCliked: aMouseEvent

	outputProcessesPresenter hasSelection ifFalse: [^self].

	outputProcessesPresenter selection show!

onTestChanged

	testsPresenter hasSelection ifFalse: [^listPresenter model: ListModel new].

	listPresenter model: (ListModel on: (testsPresenter selection listForQuiz)).

	inputProcessesPresenter model: (ListModel on: testsPresenter selection inputProcesses).
	outputProcessesPresenter model: (ListModel on: testsPresenter selection outputProcesses).

	self resetCustomDrawBlock.!

outputArtifactCustomDrawBlock

	^[:ctx | | prc color |
		prc := ctx item.
		color := listPresenter selectionOrNil 
			ifNil: [Color darkRed] 
			ifNotNil: [:selection | (prc outputIncludesArtifactClass: selection) ifTrue: [Color darkGreen] ifFalse: [Color darkRed]].
		ctx forecolor: color]!

outputDeliverableCustomDrawBlock

	^[:ctx | | prc color |
		prc := ctx item.
		color := listPresenter selectionOrNil 
			ifNil: [Color darkRed] 
			ifNotNil: [:selection | (prc outputIncludesDeliverable: selection) ifTrue: [Color darkGreen] ifFalse: [Color darkRed]].
		ctx forecolor: color]!

removeElement!

removeInputProcess

	inputProcessesPresenter hasSelection ifFalse: [^self].

	testsPresenter selection removeInputProcess: inputProcessesPresenter selection.

	inputProcessesPresenter model: (ListModel on: testsPresenter selection inputProcesses).!

removeOutputProcess

	outputProcessesPresenter hasSelection ifFalse: [^self].

	testsPresenter selection removeOutputProcess: outputProcessesPresenter selection.

	outputProcessesPresenter model: (ListModel on: testsPresenter selection outputProcesses).!

resetCustomDrawBlock

	inputProcessesPresenter view columnsList first customDrawBlock: nil.
	outputProcessesPresenter view columnsList first customDrawBlock: nil.
	 !

resetTest

	self resetCustomDrawBlock.

	testsPresenter selection reset.

	self onTestChanged.!

runNormalTest

	inputProcessesPresenter view columnsList first customDrawBlock: self getActualDrawBlockForInputProcess.
	outputProcessesPresenter view columnsList first customDrawBlock: self getActualDrawBlockForOutputProcess.

	inputProcessesPresenter view invalidate.
	outputProcessesPresenter view invalidate.
	 !

runReversedTest
	| element inputPrcesses outputProcesses |

	element := testsPresenter selection listForQuiz randomPeek.
	inputPrcesses := self projectModel getAllProcesses select: [:each | each perform: element searchInProcessInputSelector with: element].
	outputProcesses := self projectModel getAllProcesses select: [:each | each perform: element searchInProcessOutputSelector with: element].

	inputProcessesPresenter model: (ListModel on: inputPrcesses).
	outputProcessesPresenter model: (ListModel on: outputProcesses).

	inputProcessesPresenter view columnsList first customDrawBlock: self getActualDrawBlockForInputProcess.
	outputProcessesPresenter view columnsList first customDrawBlock: self getActualDrawBlockForOutputProcess.

	inputProcessesPresenter view invalidate.
	outputProcessesPresenter view invalidate.
	 !

runTest

	reversedPresenter value 
	ifTrue: [self runReversedTest] 
	ifFalse: [self runNormalTest].!

toolCustomDrawBlock

	^[:ctx | | prc color |
		prc := ctx item.
		color := listPresenter selectionOrNil 
			ifNil: [Color darkRed] 
			ifNotNil: [:selection | (prc includesToolOrTechniqueName: selection) ifTrue: [Color darkGreen] ifFalse: [Color darkRed]].
		ctx forecolor: color]! !
!PMBOKNonProcessQuizComposite categoriesFor: #addElement!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #addInputProcess!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #addOutputProcess!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #createComponents!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #getActualDrawBlockForInputProcess!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #getActualDrawBlockForOutputProcess!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #inputArtifactCustomDrawBlock!custom draw blocks!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #inputDeliverableCustomDrawBlock!custom draw blocks!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #model:!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #onInputProcessDoubleCliked:!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #onListElementChanged!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #onOutputProcessDoubleCliked:!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #onTestChanged!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #outputArtifactCustomDrawBlock!custom draw blocks!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #outputDeliverableCustomDrawBlock!custom draw blocks!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #removeElement!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #removeInputProcess!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #removeOutputProcess!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #resetCustomDrawBlock!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #resetTest!public! !
!PMBOKNonProcessQuizComposite categoriesFor: #runNormalTest!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #runReversedTest!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #runTest!public!quiz! !
!PMBOKNonProcessQuizComposite categoriesFor: #toolCustomDrawBlock!custom draw blocks!public!quiz! !

!PMBOKNonProcessQuizComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  3199 21 706 1561 941 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 75 9 0 0 224 1 0 0] 98 1 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 498 234 240 544 16 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1561 941 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 12 3 0 0 214 1 0 0] 98 3 410 432 98 15 0 816 98 2 8 1140850688 131073 1088 0 0 0 5 0 0 0 1088 498 234 240 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 1088 98 2 8 1409290317 1025 1200 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 2 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #addElement 8 'Add Element' 1 1 0 0 0 1458 1 1490 8 #removeElement 8 'Remove Element' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1200 0 8 4294903981 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Name' 901 8 #left 1650 8 #quizName 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 8 #name 1920 7 513 0 0 0 1200 0 1 0 0 8 #report 544 0 131169 0 0 578 202 208 98 3 642 672 98 2 706 1 1 706 781 461 1200 642 8 #contextMenu: 98 1 1424 1200 642 8 #text: 98 1 8 'Name' 1200 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 134 1 0 0 230 0 0 0] 98 0 706 193 193 0 27 3 32 234 256 98 2 1200 8 'list' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1561 461 1088 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 12 3 0 0 230 0 0 0] 98 2 1200 410 432 98 15 0 1088 98 2 8 1140850688 131073 2592 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 2592 0 234 256 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 2592 98 2 8 1412498947 1025 2720 1282 202 208 544 0 1344 1362 8 4278190080 0 5 0 0 0 2720 0 8 4294903095 1650 1872 98 0 544 401 578 202 208 98 1 642 672 98 2 706 71 111 706 391 47 2720 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 35 0 0 0 55 0 0 0 230 0 0 0 78 0 0 0] 98 0 2368 0 27 8 'tests' 410 8 ##(Smalltalk.CheckBox)  98 16 0 2592 98 2 8 1409363203 1 3088 721990 2 ##(Smalltalk.ValueHolder)  0 0 1114118 ##(Smalltalk.NeverSearchPolicy)  32 0 0 5 0 0 0 3088 0 8 4294903137 852486 ##(Smalltalk.NullConverter)  0 0 0 578 202 208 98 2 642 672 98 2 706 81 241 706 381 41 3088 642 2272 98 1 8 'Reverse Test' 3088 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 40 0 0 0 120 0 0 0 230 0 0 0 140 0 0 0] 98 0 2368 0 27 8 'reversed' 0 578 202 208 98 1 642 672 98 2 706 781 1 706 781 461 2592 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 134 1 0 0 0 0 0 0 12 3 0 0 230 0 0 0] 98 5 410 8 ##(Smalltalk.GroupBox)  98 14 0 2592 98 2 8 1140850695 65 3664 0 1362 8 4278190080 0 5 0 0 0 3664 0 8 4294903137 578 202 208 98 2 642 672 98 2 706 41 41 706 431 291 3664 642 2272 98 1 8 'Select Quiz' 3664 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 20 0 0 0 235 0 0 0 165 0 0 0] 98 0 2368 0 27 2720 3088 410 8 ##(Smalltalk.PushButton)  98 20 0 2592 98 2 8 1140924416 1 4000 0 0 0 5 0 0 0 4000 0 8 4294903137 1490 8 #runTest 8 'Run Test' 1 1 0 0 16 0 0 0 578 202 208 98 3 642 672 98 2 706 531 101 706 201 71 4000 642 8 #isEnabled: 98 1 32 4000 642 2272 98 1 8 'Run Test' 4000 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 9 1 0 0 50 0 0 0 109 1 0 0 85 0 0 0] 98 0 2368 0 29 410 4016 98 20 0 2592 98 2 8 1140924416 1 4400 0 0 0 5 0 0 0 4400 0 8 4294903137 1490 8 #resetTest 8 'Reset Test' 1 1 0 0 32 0 0 0 578 202 208 98 3 642 672 98 2 706 531 191 706 201 71 4400 642 4272 98 1 32 4400 642 2272 98 1 8 'Reset Test' 4400 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 9 1 0 0 95 0 0 0 109 1 0 0 130 0 0 0] 98 0 2368 0 29 2368 0 27 2368 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 816 98 2 8 1140850688 1 4768 0 1362 8 4278190080 0 517 0 0 0 4768 578 202 208 98 1 642 672 98 2 706 1 461 706 1561 19 4768 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 230 0 0 0 12 3 0 0 239 0 0 0] 98 0 2368 0 27 410 432 98 15 0 816 98 2 8 1140850688 131073 5040 0 0 0 5 0 0 0 5040 498 234 240 544 32 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 479 706 1561 463 5040 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 239 0 0 0 12 3 0 0 214 1 0 0] 98 3 410 432 98 15 0 5040 98 2 8 1140850688 131073 5312 0 2658 31 0 5 0 0 0 5312 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 3680 98 14 0 5312 98 2 8 1140850695 65 5456 0 1362 8 4278190080 0 5 0 0 0 5456 0 8 4294903137 578 202 208 98 2 642 672 98 2 706 21 21 706 731 423 5456 642 2272 98 1 8 'Processes with Input' 5456 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 119 1 0 0 221 0 0 0] 98 0 2368 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 21 5810 8 #fixedParentRight -19 5810 8 #fixedParentTop 21 5810 8 #fixedParentBottom -19 410 8 ##(Smalltalk.ReferenceView)  98 14 0 5312 98 2 8 1140850688 131073 5952 0 1362 8 4278190080 0 5 1410 0 16 98 2 1458 1 1490 8 #addInputProcess 8 'Add Process' 1 1 0 0 0 1458 1 1490 8 #removeInputProcess 8 'Remove Process' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5952 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_PMI_Process_list 0 578 202 208 98 2 642 672 98 2 706 41 71 706 691 353 5952 642 2224 98 1 6064 5952 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 109 1 0 0 211 0 0 0] 544 2368 0 27 5778 5824 41 5856 -39 5888 71 5920 -39 234 256 98 2 5952 8 'inputProcesses' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 771 463 5312 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 129 1 0 0 231 0 0 0] 98 2 5952 5456 2368 0 27 410 4784 98 12 0 5040 98 2 8 1140850688 1 6704 0 1362 8 4278190080 0 517 0 0 0 6704 578 202 208 98 1 642 672 98 2 706 771 1 706 19 463 6704 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 0 0 0 0 138 1 0 0 231 0 0 0] 98 0 2368 0 27 410 432 98 15 0 5040 98 2 8 1140850688 131073 6960 0 2658 31 0 5 0 0 0 6960 5394 234 240 98 4 410 3680 98 14 0 6960 98 2 8 1140850695 65 7088 0 1362 5536 0 5 0 0 0 7088 0 8 4294903137 578 202 208 98 2 642 672 98 2 706 21 21 706 733 423 7088 642 2272 98 1 8 'Processes with Output' 7088 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 120 1 0 0 221 0 0 0] 98 0 2368 0 27 5778 5824 21 5856 -19 5888 21 5920 -19 410 5968 98 14 0 6960 98 2 8 1140850688 131073 7408 0 1362 6048 0 5 1410 0 16 98 2 1458 1 1490 8 #addOutputProcess 8 'Add Process' 1 1 0 0 0 1458 1 1490 8 #removeOutputProcess 8 'Remove Process' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 7408 6242 6272 6288 0 578 202 208 98 2 642 672 98 2 706 41 71 706 693 353 7408 642 2224 98 1 7488 7408 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 110 1 0 0 211 0 0 0] 544 2368 0 27 5778 5824 41 5856 -39 5888 71 5920 -39 234 256 98 2 7408 8 'outputProcesses' 0 578 202 208 98 1 642 672 98 2 706 789 1 706 773 463 6960 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 138 1 0 0 0 0 0 0 12 3 0 0 231 0 0 0] 98 2 7408 7088 2368 0 27 2368 0 27 2368 0 27 2368 0 27 )! !
!PMBOKNonProcessQuizComposite class categoriesFor: #resource_Default_view!public!resources-views! !

