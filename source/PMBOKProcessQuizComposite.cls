"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKProcessQuizComposite
	instanceVariableNames: 'processesPresenter descriptionPresenter inputsPresenter toolsPresenter outputsPresenter processAreasPresenter processGroupsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessQuizComposite guid: (GUID fromString: '{58645256-db2d-45d4-b373-2bbd057a9812}')!
PMBOKProcessQuizComposite comment: ''!
!PMBOKProcessQuizComposite categoriesForClass!MVP-Presenters! !
!PMBOKProcessQuizComposite methodsFor!

addInput
	| input |

	input := DetalleDeOpciones listaCon: self projectModel deliverables para: 'PMI Deliverable list'.
	input ifNil: [^self].
	input := input first asInput.
	self model addInput: input.
	inputsPresenter model: (ListModel on: self model inputResults).

	inputsPresenter selection: input ifAbsent: []!

addInputArtifact
	| artifact |
	artifact := DetalleDeOpciones
				listaCon: (PMBOKArtifactDefinition allSubclasses collect: [:each | each new])
				para: 'PMI Artifacts types'
				titulo: 'Select Artifact Type'.
	artifact ifNil: [^self].
	artifact := artifact first.
	self model addInput: artifact.
	inputsPresenter model: (ListModel on: self model inputResults).
	inputsPresenter selection: artifact ifAbsent: []!

addOutput
	| output |

	output := DetalleDeOpciones listaCon: self projectModel deliverables para: 'PMI Deliverable list'.
	output ifNil: [^self].
	output := output first asOutput.
	self model addOutput: output.
	outputsPresenter model: (ListModel on: self model outputResults).
	outputsPresenter selection: output ifAbsent: []!

addOutputArtifact
	| artifact |
	artifact := DetalleDeOpciones
				listaCon: (PMBOKArtifactDefinition allSubclasses collect: [:each | each new])
				para: 'PMI Artifacts types'
				titulo: 'Select Artifact Type'.
	artifact ifNil: [^self].
	artifact := artifact first.
	self model addOutput: artifact.
	outputsPresenter model: (ListModel on: self model outputResults).
	outputsPresenter selection: artifact ifAbsent: []!

addTool
	| tool |

	tool := DetalleDeOpciones listaCon: self projectModel toolsAndTechniques para: 'PMI Tools and Techniques list'.
	tool ifNil: [^self].
	tool := tool first.
	self model addTool: tool.
	toolsPresenter model: (ListModel on: self model toolResults).

	toolsPresenter selection: tool ifAbsent: []!

createComponents

	super createComponents.

	processesPresenter := self add: ListPresenter new name: 'processes'.
	descriptionPresenter := self add: RichTextComposite new name: 'description'.
	inputsPresenter := self add: ListPresenter new name: 'inputs'.
	toolsPresenter := self add: ListPresenter new name: 'tools'.
	outputsPresenter := self add: ListPresenter new name: 'outputs'.
	processAreasPresenter := self add: ListPresenter new name: 'processAreas'.
	processGroupsPresenter := self add: ListPresenter new name: 'processGroups'.!

createSchematicWiring

	super createSchematicWiring.

	processesPresenter when: #selectionChanged send: #onProcessChanged to: self;
		when: #leftButtonDoubleClicked: send: #onProcessDoubleCliked: to: self.

	inputsPresenter when: #leftButtonDoubleClicked: send: #onInputDoubleClicked: to: self.

	toolsPresenter when: #leftButtonDoubleClicked: send: #onToolDoubleClicked: to: self.

	outputsPresenter when: #leftButtonDoubleClicked: send: #onOutputDoubleClicked: to: self.!

inputCustomDrawBlock

	^[:ctx | | prc |
		prc := ctx view presenter parentPresenter selectedProcessOrNil.
		ctx forecolor: (
			prc isNil
			ifTrue: [Color black] 
			ifFalse: [ (prc includesInputName: ctx item) ifTrue: [Color darkGreen] ifFalse: [Color darkRed] ]
		)]!

inputs

	^inputsPresenter model list!

inputsModel: anOrderedCollection

	inputsPresenter model: (ListModel on: anOrderedCollection)!

model: aPMIProcessQuiz

	super model: aPMIProcessQuiz.

	processesPresenter model: (ListModel on: self projectModel getAllProcesses).

	processAreasPresenter model: (ListModel on: self projectModel knowledgeAreas).

	processGroupsPresenter model: (ListModel on: self projectModel groups).!

onInputDoubleClicked: aMouseEvent
	inputsPresenter hasSelection ifFalse: [^self].
	PMBOKInputShell showOn: inputsPresenter selection!

onOutputDoubleClicked: aMouseEvent
	outputsPresenter hasSelection ifFalse: [^self].
	PMBOKInputShell showOn: outputsPresenter selection!

onProcessChanged

	parentPresenter setProcessTo: processesPresenter selectionOrNil!

onProcessDoubleCliked: aMouseEvent
	processesPresenter hasSelection ifFalse: [^self].
	PMBOKProcessDefinitionShell showOn: processesPresenter selection!

onToolDoubleClicked: aMouseEvent
	toolsPresenter hasSelection ifFalse: [^self].
	PMBOKToolShell showOn: toolsPresenter selection!

outputCustomDrawBlock

	^[:ctx | | prc |
		prc := ctx view presenter parentPresenter selectedProcessOrNil.
		ctx forecolor: (
			prc isNil
			ifTrue: [Color black] 
			ifFalse: [ (prc includesOutputName: ctx item) ifTrue: [Color darkGreen] ifFalse: [Color darkRed] ]
		)]!

outputs

	^outputsPresenter model list!

outputsModel: anOrderedCollection

	outputsPresenter model: (ListModel on: anOrderedCollection)!

processArea

	^processAreasPresenter selectionOrNil!

processes

	^processesPresenter model list!

processGroup

	^processGroupsPresenter selectionOrNil!

removeInput

	inputsPresenter hasSelection ifFalse: [^self].

	self model removeInput: inputsPresenter selection.

	inputsPresenter model: (ListModel on: self model inputResults).!

removeInputArtifact

	inputsPresenter hasSelection ifFalse: [^self].

	self model removeInput: inputsPresenter selection.

	inputsPresenter model: (ListModel on: self model inputResults).!

removeOutput

	outputsPresenter hasSelection ifFalse: [^self].

	self model removeOutput: outputsPresenter selection.

	outputsPresenter model: (ListModel on: self model outputResults).!

removeOutputArtifact

	outputsPresenter hasSelection ifFalse: [^self].

	self model removeOutput: outputsPresenter selection.

	outputsPresenter model: (ListModel on: self model outputResults).
!

removeTool

	toolsPresenter hasSelection ifFalse: [^self].

	self model removeTool: toolsPresenter selection.

	toolsPresenter model: (ListModel on: self model toolResults).!

selectArea: anObject

	processAreasPresenter selection: anObject!

selectedProcessOrNil

	^processesPresenter selectionOrNil!

selectGroup: anObject

	processGroupsPresenter selection: anObject!

selectProcess: anObject

	processesPresenter selection: anObject!

setComboColors

	self selectedProcessOrNil ifNil: [^self].

	(processAreasPresenter selection == self selectedProcessOrNil knowledgeArea)
	ifTrue: [self setProcessAreaComboBackcolor: Color darkGreen] 
	ifFalse: [self setProcessAreaComboBackcolor: Color darkRed].

	(processGroupsPresenter selection == self selectedProcessOrNil managementGroup)
	ifTrue: [self setProcessGroupComboBackcolor: Color darkGreen] 
	ifFalse: [self setProcessGroupComboBackcolor: Color darkRed].

	!

setInputCustomDrawBlock

	inputsPresenter view columnsList first customDrawBlock: self inputCustomDrawBlock!

setOutputCustomDrawBlock

	outputsPresenter view columnsList first customDrawBlock: self outputCustomDrawBlock!

setProcessAreaComboBackcolor: aColor

	processAreasPresenter view editView backcolor: aColor!

setProcessGroupComboBackcolor: aColor

	processGroupsPresenter view editView backcolor: aColor!

setToolCustomDrawBlock

	toolsPresenter view columnsList first customDrawBlock: self toolCustomDrawBlock!

showProcessDefinition
	PMBOKProcessDefinitionShell showOn: processesPresenter selection!

startCompleteTest

	inputsPresenter model: ListModel new.
	toolsPresenter model: ListModel new.
	outputsPresenter model: ListModel new.

	processAreasPresenter resetSelection.
	processGroupsPresenter resetSelection.

	self model: self model class new.!

toolCustomDrawBlock

	^[:ctx | | prc |
		prc := ctx view presenter parentPresenter selectedProcessOrNil.
		ctx forecolor: (
			prc isNil
			ifTrue: [Color black] 
			ifFalse: [ (prc includesToolOrTechniqueName: ctx item) ifTrue: [Color darkGreen] ifFalse: [Color darkRed] ]
		)]!

tools

	^toolsPresenter model list!

toolsModel: anOrderedCollection

	toolsPresenter model: (ListModel on: anOrderedCollection)!

unsetInputCustomDrawBlock

	inputsPresenter view columnsList first customDrawBlock: nil!

unsetOutputCustomDrawBlock

	outputsPresenter view columnsList first customDrawBlock: nil!

unsetToolCustomDrawBlock

	toolsPresenter view columnsList first customDrawBlock: nil! !
!PMBOKProcessQuizComposite categoriesFor: #addInput!public! !
!PMBOKProcessQuizComposite categoriesFor: #addInputArtifact!public! !
!PMBOKProcessQuizComposite categoriesFor: #addOutput!public! !
!PMBOKProcessQuizComposite categoriesFor: #addOutputArtifact!public! !
!PMBOKProcessQuizComposite categoriesFor: #addTool!public! !
!PMBOKProcessQuizComposite categoriesFor: #createComponents!public! !
!PMBOKProcessQuizComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKProcessQuizComposite categoriesFor: #inputCustomDrawBlock!custom draw blocks!public!run test! !
!PMBOKProcessQuizComposite categoriesFor: #inputs!public! !
!PMBOKProcessQuizComposite categoriesFor: #inputsModel:!public! !
!PMBOKProcessQuizComposite categoriesFor: #model:!public! !
!PMBOKProcessQuizComposite categoriesFor: #onInputDoubleClicked:!public! !
!PMBOKProcessQuizComposite categoriesFor: #onOutputDoubleClicked:!public! !
!PMBOKProcessQuizComposite categoriesFor: #onProcessChanged!public! !
!PMBOKProcessQuizComposite categoriesFor: #onProcessDoubleCliked:!public! !
!PMBOKProcessQuizComposite categoriesFor: #onToolDoubleClicked:!public! !
!PMBOKProcessQuizComposite categoriesFor: #outputCustomDrawBlock!custom draw blocks!public!run test! !
!PMBOKProcessQuizComposite categoriesFor: #outputs!public! !
!PMBOKProcessQuizComposite categoriesFor: #outputsModel:!public! !
!PMBOKProcessQuizComposite categoriesFor: #processArea!public! !
!PMBOKProcessQuizComposite categoriesFor: #processes!public! !
!PMBOKProcessQuizComposite categoriesFor: #processGroup!public! !
!PMBOKProcessQuizComposite categoriesFor: #removeInput!public! !
!PMBOKProcessQuizComposite categoriesFor: #removeInputArtifact!public! !
!PMBOKProcessQuizComposite categoriesFor: #removeOutput!public! !
!PMBOKProcessQuizComposite categoriesFor: #removeOutputArtifact!public! !
!PMBOKProcessQuizComposite categoriesFor: #removeTool!public! !
!PMBOKProcessQuizComposite categoriesFor: #selectArea:!public! !
!PMBOKProcessQuizComposite categoriesFor: #selectedProcessOrNil!public! !
!PMBOKProcessQuizComposite categoriesFor: #selectGroup:!public! !
!PMBOKProcessQuizComposite categoriesFor: #selectProcess:!public! !
!PMBOKProcessQuizComposite categoriesFor: #setComboColors!public! !
!PMBOKProcessQuizComposite categoriesFor: #setInputCustomDrawBlock!custom draw blocks!public!run test! !
!PMBOKProcessQuizComposite categoriesFor: #setOutputCustomDrawBlock!custom draw blocks!public!run test! !
!PMBOKProcessQuizComposite categoriesFor: #setProcessAreaComboBackcolor:!public! !
!PMBOKProcessQuizComposite categoriesFor: #setProcessGroupComboBackcolor:!public! !
!PMBOKProcessQuizComposite categoriesFor: #setToolCustomDrawBlock!public!run test! !
!PMBOKProcessQuizComposite categoriesFor: #showProcessDefinition!public! !
!PMBOKProcessQuizComposite categoriesFor: #startCompleteTest!public! !
!PMBOKProcessQuizComposite categoriesFor: #toolCustomDrawBlock!custom draw blocks!public!run test! !
!PMBOKProcessQuizComposite categoriesFor: #tools!public! !
!PMBOKProcessQuizComposite categoriesFor: #toolsModel:!public! !
!PMBOKProcessQuizComposite categoriesFor: #unsetInputCustomDrawBlock!custom draw blocks!public! !
!PMBOKProcessQuizComposite categoriesFor: #unsetOutputCustomDrawBlock!custom draw blocks!public! !
!PMBOKProcessQuizComposite categoriesFor: #unsetToolCustomDrawBlock!custom draw blocks!public! !

!PMBOKProcessQuizComposite class methodsFor!

defaultModel
	^PMBOKProcessQuiz new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 16 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  3199 21 706 2051 1311 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 64 10 0 0 153 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 788230 ##(Smalltalk.BorderLayout)  1 1 0 0 410 432 98 15 0 816 98 2 8 1140850688 131073 912 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 912 0 234 256 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 912 98 2 8 1412498946 1025 1040 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1040 0 8 4294903105 459270 ##(Smalltalk.Message)  8 #groupName 98 0 544 401 578 202 208 98 1 642 672 98 2 706 31 71 706 441 47 1040 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 35 0 0 0 235 0 0 0 58 0 0 0] 98 0 706 193 193 0 27 8 'processGroups' 410 1056 98 17 0 912 98 2 8 1412498946 1025 1520 1122 202 208 544 0 1184 1202 1232 0 5 0 0 0 1520 0 8 4294903105 1266 8 #areaName 1312 544 401 578 202 208 98 1 642 672 98 2 706 31 211 706 441 47 1520 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 15 0 0 0 105 0 0 0 235 0 0 0 128 0 0 0] 98 0 1488 0 27 8 'processAreas' 0 578 202 208 98 1 642 672 98 2 706 1561 1 706 491 647 912 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 12 3 0 0 0 0 0 0 1 4 0 0 67 1 0 0] 98 4 1040 1520 410 8 ##(Smalltalk.GroupBox)  98 14 0 912 98 2 8 1140850695 65 2016 0 1202 8 4278190080 0 5 0 0 0 2016 0 8 4294903077 578 202 208 98 2 642 672 98 2 706 11 21 706 471 121 2016 642 8 #text: 98 1 8 'Process Group' 2016 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 10 0 0 0 240 0 0 0 70 0 0 0] 98 0 1488 0 27 410 2032 98 14 0 912 98 2 8 1140850695 65 2368 0 1202 2112 0 5 0 0 0 2368 0 8 4294903077 578 202 208 98 2 642 672 98 2 706 11 171 706 471 121 2368 642 2272 98 1 8 'Knowledge Area' 2368 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 85 0 0 0 240 0 0 0 145 0 0 0] 98 0 1488 0 27 1488 0 27 0 410 432 98 15 0 816 98 2 8 1140850688 131073 2672 0 978 31 0 5 0 0 0 2672 0 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 2672 98 2 8 1409355853 1025 2784 1122 202 208 544 0 1184 1202 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #showProcessDefinition 8 'Show Process Definition' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 2784 0 8 4294903067 1266 8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Name' 1201 8 #left 1266 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3312 3360 7 513 0 0 0 2784 0 1 0 0 8 #report 544 0 131169 0 0 578 202 208 98 3 642 672 98 2 706 51 71 706 1441 481 2784 642 8 #contextMenu: 98 1 2944 2784 642 2272 98 1 8 'Name' 2784 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 25 0 0 0 35 0 0 0 233 2 0 0 19 1 0 0] 98 0 1488 0 27 8 'processes' 590342 ##(Smalltalk.Rectangle)  706 1 31 706 1 1 578 202 208 98 1 642 672 98 2 706 1 1 706 1561 647 2672 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 12 3 0 0 67 1 0 0] 98 2 2784 410 2032 98 14 0 2672 98 2 8 1140850695 65 4016 0 1202 8 4278190080 0 5 0 0 0 4016 0 8 4294903077 578 202 208 98 2 642 672 98 2 706 21 21 706 1511 551 4016 642 2272 98 1 8 'PMI Processes' 4016 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 253 2 0 0 29 1 0 0] 98 0 1488 0 27 1488 0 27 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 1 706 2051 647 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 1 4 0 0 67 1 0 0] 98 2 2672 912 1488 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 4512 0 1202 8 4278190080 0 517 0 0 0 4512 578 202 208 98 1 642 672 98 2 706 1 647 706 2051 19 4512 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 67 1 0 0 1 4 0 0 76 1 0 0] 98 0 1488 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 4784 0 0 0 5 0 0 0 4784 498 234 240 98 2 410 432 98 15 0 4784 98 2 8 1140850688 131073 4896 0 0 0 5 0 0 0 4896 498 234 240 544 32 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 1 706 2051 647 4896 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 1 4 0 0 67 1 0 0] 98 5 410 432 98 15 0 4896 98 2 8 1140850688 131073 5168 0 978 31 0 5 0 0 0 5168 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 2800 98 30 0 5168 98 2 8 1409290317 1025 5312 1122 202 208 544 0 1184 1202 8 4278190080 0 5 2930 0 16 98 5 2978 1 3010 8 #addInput 8 'Add Input' 1 1 0 0 0 2978 1 3010 8 #removeInput 8 'Remove Input' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 2978 1 3010 8 #addInputArtifact 8 'Add Artifact' 1 1 0 0 0 2978 1 3010 8 #removeInputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5312 0 8 4294903067 1266 3120 98 0 3152 3184 0 0 0 0 0 0 202 208 98 1 3234 8 'Name' 901 3280 1266 3312 98 0 3346 0 0 3378 2 1 3408 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3312 5920 7 513 0 0 0 5312 0 1 0 0 3504 544 0 131169 0 0 578 202 208 98 3 642 672 98 2 706 41 71 706 591 537 5312 642 3648 98 1 5440 5312 642 2272 98 1 8 'Name' 5312 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 59 1 0 0 47 1 0 0] 98 0 1488 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 41 6274 8 #fixedParentRight -39 6274 8 #fixedParentTop 71 6274 8 #fixedParentBottom -39 410 2032 98 14 0 5168 98 2 8 1140850695 65 6416 0 1202 8 4278190080 0 5 0 0 0 6416 0 8 4294903077 578 202 208 98 2 642 672 98 2 706 21 21 706 631 607 6416 642 2272 98 1 8 'Inputs' 6416 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 69 1 0 0 57 1 0 0] 98 0 1488 0 27 6242 6288 21 6320 -19 6352 21 6384 -19 234 256 98 2 5312 8 'inputs' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 671 647 5168 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 79 1 0 0 67 1 0 0] 98 2 5312 6416 1488 0 27 410 4528 98 12 0 4896 98 2 8 1140850688 1 6960 0 1202 8 4278190080 0 517 0 0 0 6960 578 202 208 98 1 642 672 98 2 706 671 1 706 19 647 6960 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 79 1 0 0 0 0 0 0 88 1 0 0 67 1 0 0] 98 0 1488 0 27 410 432 98 15 0 4896 98 2 8 1140850688 131073 7216 0 978 31 0 5 0 0 0 7216 5250 234 240 98 4 410 2032 98 14 0 7216 98 2 8 1140850695 65 7344 0 1202 6496 0 5 0 0 0 7344 0 8 4294903077 578 202 208 98 2 642 672 98 2 706 21 21 706 631 607 7344 642 2272 98 1 8 'Tools' 7344 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 69 1 0 0 57 1 0 0] 98 0 1488 0 27 6242 6288 21 6320 -19 6352 21 6384 -19 410 2800 98 30 0 7216 98 2 8 1409290317 1025 7664 1122 202 208 544 0 1184 1202 8 4278190080 0 5 2930 0 16 98 2 2978 1 3010 8 #addTool 8 'Add Tool' 1 1 0 0 0 2978 1 3010 8 #removeTool 8 'Remove Tool' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 7664 0 8 4294903067 1266 3120 98 0 3152 3184 0 0 0 0 0 0 202 208 98 1 3234 8 'Name' 901 3280 1266 3312 98 0 3346 0 0 3378 2 1 3408 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3312 8112 7 513 0 0 0 7664 0 1 0 0 3504 544 0 131169 0 0 578 202 208 98 3 642 672 98 2 706 41 71 706 591 537 7664 642 3648 98 1 7792 7664 642 2272 98 1 8 'Name' 7664 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 59 1 0 0 47 1 0 0] 98 0 1488 0 27 6242 6288 41 6320 -39 6352 71 6384 -39 234 256 98 2 7664 8 'tools' 0 578 202 208 98 1 642 672 98 2 706 689 1 706 671 647 7216 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 88 1 0 0 0 0 0 0 167 2 0 0 67 1 0 0] 98 2 7664 7344 1488 0 27 410 4528 98 12 0 4896 98 2 8 1140850688 1 8656 0 1202 7040 0 517 0 0 0 8656 578 202 208 98 1 642 672 98 2 706 1359 1 706 19 647 8656 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 167 2 0 0 0 0 0 0 176 2 0 0 67 1 0 0] 98 0 1488 0 27 410 432 98 15 0 4896 98 2 8 1140850688 131073 8896 0 978 31 0 5 0 0 0 8896 5250 234 240 98 4 410 2800 98 30 0 8896 98 2 8 1409290317 1025 9024 1122 202 208 544 0 1184 1202 5424 0 5 2930 0 16 98 5 2978 1 3010 8 #addOutput 8 'Add Output' 1 1 0 0 0 2978 1 3010 8 #removeOutput 8 'Remove Output' 1 1 0 0 0 5602 4097 2978 1 3010 8 #addOutputArtifact 8 'Add Artifact' 1 1 0 0 0 2978 1 3010 8 #removeOutputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 9024 0 8 4294903067 1266 3120 98 0 3152 3184 0 0 0 0 0 0 202 208 98 1 3234 8 'Name' 901 3280 1266 3312 98 0 3346 0 0 3378 2 1 3408 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3312 9600 7 513 0 0 0 9024 0 1 0 0 3504 544 0 131169 0 0 578 202 208 98 3 642 672 98 2 706 41 71 706 595 537 9024 642 3648 98 1 9136 9024 642 2272 98 1 8 'Name' 9024 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 61 1 0 0 47 1 0 0] 98 0 1488 0 27 6242 6288 41 6320 -39 6352 71 6384 -39 410 2032 98 14 0 8896 98 2 8 1140850695 65 9936 0 1202 6496 0 5 0 0 0 9936 0 8 4294903077 578 202 208 98 2 642 672 98 2 706 21 21 706 635 607 9936 642 2272 98 1 8 'Outputs' 9936 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 71 1 0 0 57 1 0 0] 98 0 1488 0 27 6242 6288 21 6320 -19 6352 21 6384 -19 234 256 98 2 9024 8 'outputs' 0 578 202 208 98 1 642 672 98 2 706 1377 1 706 675 647 8896 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 176 2 0 0 0 0 0 0 1 4 0 0 67 1 0 0] 98 2 9024 9936 1488 0 27 1488 0 27 7 16 234 256 544 0 578 202 208 98 1 642 672 98 2 706 1 665 706 2051 647 4784 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 76 1 0 0 1 4 0 0 143 2 0 0] 98 2 410 4528 98 12 0 4784 98 2 8 1140850688 1 10640 0 1202 7040 0 517 0 0 0 10640 578 202 208 98 1 642 672 98 2 706 1 231 706 2191 19 10640 754 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 115 0 0 0 71 4 0 0 124 0 0 0] 98 0 1488 0 27 4896 1488 0 27 1488 0 27 )! !
!PMBOKProcessQuizComposite class categoriesFor: #defaultModel!public! !
!PMBOKProcessQuizComposite class categoriesFor: #resource_Default_view!public!resources-views! !

