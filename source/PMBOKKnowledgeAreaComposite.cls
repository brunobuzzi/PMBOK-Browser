"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKKnowledgeAreaComposite
	instanceVariableNames: 'areasPresenter processesPresenter inputPresenter toolsPresenter outputPresenter inputComposite toolComposite outputComposite descriptionComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKKnowledgeAreaComposite guid: (GUID fromString: '{0ab2b858-a472-4f11-9522-2efb305a8cfe}')!
PMBOKKnowledgeAreaComposite comment: ''!
!PMBOKKnowledgeAreaComposite categoriesForClass!MVP-Presenters! !
!PMBOKKnowledgeAreaComposite methodsFor!

createComponents
	super createComponents.
	areasPresenter := self add: ListPresenter new name: 'areas'.
	inputPresenter := self add: ListPresenter new name: 'input'.
	toolsPresenter := self add: ListPresenter new name: 'tools'.
	outputPresenter := self add: ListPresenter new name: 'output'.
	inputComposite := self add: PMBOKInputComposite new name: 'inputComposite'.
	toolComposite := self add: PMBOKToolComposite new name: 'toolComposite'.
	outputComposite := self add: PMBOKInputComposite new name: 'outputComposite'.
	processesPresenter := self add: ListPresenter new name: 'processes'.
	descriptionComposite := self add: RichTextComposite new name: 'description'!

createSchematicWiring

	super createSchematicWiring.

	areasPresenter when: #selectionChanged send: #onAreaChanged to: self.

	inputPresenter when: #selectionChanged send: #onInputChanged to: self.

	toolsPresenter when: #selectionChanged send: #onToolChanged to: self;
		when: #leftButtonDoubleClicked: send: #onToolDoubleClicked: to: self.

	outputPresenter when: #selectionChanged send: #onOutputChanged to: self.

	processesPresenter when: #leftButtonDoubleClicked: send: #onProcessDoubleClicked: to: self.!

model: anOrderedCollection

	super model: anOrderedCollection.

	areasPresenter model: (ListModel on: anOrderedCollection).
!

onAreaChanged

	areasPresenter hasSelection ifFalse: [inputPresenter model: ListModel new. toolsPresenter model: ListModel new. ^outputPresenter model: ListModel new ].

	inputPresenter model: (ListModel on: areasPresenter selection getAllInputs).
	toolsPresenter model: (ListModel on: areasPresenter selection toolsAndTechniques).
	outputPresenter model: (ListModel on: areasPresenter selection getAllOutputs).

	processesPresenter model: (ListModel on: areasPresenter selection processes).

	descriptionComposite model: (areasPresenter selection aspectValue: #description).!

onInputChanged
	inputComposite model: (inputPresenter hasSelection
				ifFalse: [PMBOKInputDefinition new]
				ifTrue: [inputPresenter selection])!

onOutputChanged
	outputComposite model: (outputPresenter hasSelection
				ifFalse: [PMBOKOutputDefinition new]
				ifTrue: [outputPresenter selection])!

onProcessDoubleClicked: aMouseEvent
	processesPresenter hasSelection ifFalse: [^self].
	PMBOKProcessDefinitionShell showOn: processesPresenter selection!

onToolChanged
	toolComposite model: (toolsPresenter hasSelection
				ifFalse: [PMBOKToolOrTechnique new]
				ifTrue: [toolsPresenter selection]).
	processesPresenter view invalidate!

onToolDoubleClicked:  aMouseEvent

	toolsPresenter hasSelection ifFalse: [^self].

	self topShell searchProcessesWithToolOrTechnique: toolsPresenter selection!

onViewOpened

	super onViewOpened.

	processesPresenter view columnsList first customDrawBlock: self toolProcessColorBlock.!

toolProcessColorBlock

	^[:ctx | 
toolsPresenter hasSelection 
ifFalse: [ctx forecolor: Color black]
ifTrue: [(ctx item includesToolOrTechnique: toolsPresenter selection)
	ifTrue: [ctx font beBold]
	ifFalse: [ctx font isBold: false]]
]! !
!PMBOKKnowledgeAreaComposite categoriesFor: #createComponents!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #model:!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #onAreaChanged!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #onInputChanged!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #onOutputChanged!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #onProcessDoubleClicked:!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #onToolChanged!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #onToolDoubleClicked:!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #onViewOpened!public! !
!PMBOKKnowledgeAreaComposite categoriesFor: #toolProcessColorBlock!public! !

!PMBOKKnowledgeAreaComposite class methodsFor!

defaultModel

	^OrderedCollection new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 4 410 8 ##(Smalltalk.SlideyInneyOuteyThing) 98 23 0 416 98 2 8 1409286144 131073 560 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 517 0 0 0 560 655878 ##(Smalltalk.CardLayout) 202 208 98 2 721414 ##(Smalltalk.Association) 0 410 8 ##(Smalltalk.SlidingCardTray) 98 22 0 560 98 2 8 1140850688 131073 784 0 642 672 0 5 0 0 0 784 704 234 256 98 0 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 560 98 2 8 1140916736 1 912 590662 2 ##(Smalltalk.ListModel) 202 208 98 1 590662 1 ##(Smalltalk.CardLabel) 8 'Areas' 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 7 1 8 ##(Smalltalk.SmallInteger) 8 'doIt' 8 '(CardLabel text: ''Areas'' iconBlock: [Icon fromId: ''EnvironmentBrowserShell.ico''])' 8 #[29 30 35 113 31 32 180 106 195 105] 1056 1088 8 ##(Smalltalk.Icon) 8 'EnvironmentBrowserShell.ico' 8 #fromId: 8 #text:iconBlock: 1120 11 1 0 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 642 672 0 1 0 0 0 912 0 8 4294902927 8 ##(Smalltalk.BasicListAbstract) 8 ##(Smalltalk.IconicListAbstract) 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 3 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 1570 1971 319 912 1506 8 #basicSelectionsByIndex: 98 1 98 1 3 912 1506 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 912 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 159 0 0 0] 98 0 1570 193 193 0 27 0 560 1570 33 33 1049862 ##(Smalltalk.ButtonInteractor) 784 0 590342 ##(Smalltalk.Rectangle) 1570 1919 229 1570 1951 261 1 1180998 4 ##(Smalltalk.CommandDescription) 8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 1442 202 208 98 1 1506 1536 98 2 1570 9 49 1570 1955 263 784 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 155 0 0 0] 98 1 410 432 98 15 0 784 98 2 8 1140850688 131073 2144 0 0 0 5 0 0 0 2144 498 234 240 98 2 410 8 ##(Smalltalk.ReferenceView) 98 14 0 2144 98 2 8 1140850688 131073 2256 0 642 8 4278190080 0 5 0 0 0 2256 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.ListPresenter) 8 #resource_PMI_Process_list 0 1442 202 208 98 1 1506 1536 98 2 1570 503 1 1570 1453 227 2256 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 251 0 0 0 0 0 0 0 209 3 0 0 113 0 0 0] 896 1792 0 27 7 32 234 256 98 4 2256 8 'processes' 410 2272 98 14 0 2144 98 2 8 1140850688 131073 2624 0 642 8 4278190080 0 5 0 0 0 2624 2370 2400 8 #resource_PMI_Knowledge_areas 0 1442 202 208 98 1 1506 1536 98 2 1570 1 1 1570 485 227 2624 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 242 0 0 0 113 0 0 0] 896 1792 0 27 8 'areas' 0 1442 202 208 98 1 1506 1536 98 2 1570 1 1 1570 1955 227 2144 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 209 3 0 0 113 0 0 0] 98 3 2624 410 8 ##(Smalltalk.Splitter) 98 12 0 2144 98 2 8 1140850688 1 3072 0 642 8 4278190080 0 517 0 0 0 3072 1442 202 208 98 1 1506 1536 98 2 1570 485 1 1570 19 227 3072 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 242 0 0 0 0 0 0 0 251 0 0 0 113 0 0 0] 98 0 1792 0 27 2256 1792 0 27 1792 0 27 754 1072 2144 2144 234 256 896 0 912 784 1570 201 201 401 1 31 0 0 1442 202 208 98 1 1506 1536 98 2 1570 1 1 1570 1971 319 560 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 159 0 0 0] 98 2 784 912 1792 0 27 3 410 8 ##(Smalltalk.CardContainer) 98 16 0 416 98 2 8 1409286144 131073 3552 0 642 8 4278190080 0 5 0 0 0 3552 690 202 208 98 2 754 1058 8 'Area Description' 1106 0 0 1138 7 1 1056 8 'doIt' 8 '(CardLabel text: ''Area Description'' iconBlock: [Icon fromId: ''String.ico''])' 8 #[29 30 35 113 31 32 180 106 195 105] 1056 3744 1232 8 'String.ico' 1264 1280 3760 11 1 0 0 410 2272 98 14 0 3552 98 2 8 1140850688 131073 3856 0 642 8 4278190080 0 5 0 0 0 3856 2370 8 ##(Smalltalk.RichTextComposite) 8 #resource_Default_view 0 1442 202 208 98 1 1506 1536 98 2 1570 9 49 1570 1955 899 3856 1730 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 217 1 0 0] 896 1792 0 27 754 1058 8 'Properties' 1106 0 0 1138 6 1 1168 8 'doIt' 8 'CardLabel text: ''Properties'' iconBlock: [ValueConverter icon]' 8 #[29 30 34 112 31 161 106 194 105] 1056 4176 8 ##(Smalltalk.ValueConverter) 8 #icon 1280 4192 11 1 0 0 410 432 98 15 0 3552 98 2 8 1140850688 131073 4304 0 0 0 5 0 0 0 4304 498 234 240 896 32 234 256 896 0 1442 202 208 98 1 1506 1536 98 2 1570 9 49 1570 1955 899 4304 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 217 1 0 0] 98 5 410 432 98 15 0 4304 98 2 8 1140850688 131073 4576 0 0 0 5 0 0 0 4576 498 234 240 896 16 234 256 98 4 410 2272 98 14 0 4576 98 2 8 1140850688 131073 4704 0 642 8 4278190080 0 5 0 0 0 4704 2370 8 ##(Smalltalk.PMBOKInputComposite) 3984 0 1442 202 208 98 1 1506 1536 98 2 1570 1 459 1570 639 441 4704 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 229 0 0 0 63 1 0 0 193 1 0 0] 896 1792 0 27 8 'inputComposite' 410 8 ##(Smalltalk.ListView) 98 30 0 4576 98 2 8 1409355853 1025 4992 994 202 208 896 0 1312 642 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu) 0 16 98 15 984134 2 ##(Smalltalk.CommandMenuItem) 1 1922 8 #browseProcessWithInput 8 'Browse Process with Input' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem) 4097 5186 1 1922 8 #openCreatorProcess 8 'Open Creator Process' 1 1 0 0 0 5266 4097 5186 1 1922 8 #openAllInputs 8 'Open All' 1 1 0 0 0 5266 4097 5186 1 1922 8 #addTemplateToInput 8 'Add Template' 1 1 0 0 0 5186 1 1922 8 #removeTemplateFromInput 8 'Remove Template' 1 1 0 0 0 5138 0 16 98 0 8 'Templates' 8 #inputTemplates 134217729 0 0 0 0 0 5266 4097 5186 1 1922 8 #addInput 8 'Add Input' 1 1 0 0 0 5186 1 1922 8 #removeInput 8 'Remove Input' 1 1 0 0 0 5266 4097 5186 1 1922 8 #addInputArtifact 8 'Add Artifact' 1 1 0 0 0 5186 1 1922 8 #removeInputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 4992 0 8 4294902693 459270 ##(Smalltalk.Message) 8 #displayString 98 0 1376 1408 0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn) 8 'Input' 661 8 #left 5970 8 #name 98 0 1106 0 0 1138 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 6144 6176 7 513 0 0 0 4992 0 1 0 1106 0 0 1138 7 1 1104 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] 8 #item 8 #deliverableIsOrganizationAsset 8 #forecolor 327734 ##(Smalltalk.Float) 8 51 51 51 51 51 51 251 63 8 #fadedBy: 8 #forecolor: 6304 7 257 0 6066 8 'Creator Process' 201 6112 5970 8 #outputProcessName 98 0 1106 0 0 1138 2 1 5968 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] 6544 6576 7 513 0 0 0 4992 0 1 0 0 6066 8 'Type' 201 6112 5970 8 #printType 98 0 1106 0 0 1138 2 1 5968 8 'doIt' 8 '[:a : b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 6704 6736 7 513 0 0 0 4992 0 1 0 0 8 #report 896 0 131169 0 0 1442 202 208 98 3 1506 1536 98 2 1570 1 1 1570 639 441 4992 1506 8 #contextMenu: 98 1 5152 4992 1506 8 #text: 98 1 8 'Input' 4992 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 220 0 0 0] 98 0 1792 0 27 8 'input' 0 1442 202 208 98 1 1506 1536 98 2 1570 1 1 1570 639 899 4576 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 193 1 0 0] 98 3 4992 410 3088 98 12 0 4576 98 2 8 1140850688 1 7280 0 642 8 4278190080 0 517 0 0 0 7280 1442 202 208 98 1 1506 1536 98 2 1570 1 441 1570 639 19 7280 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 220 0 0 0 63 1 0 0 229 0 0 0] 98 0 1792 0 27 4704 1792 0 27 410 3088 98 12 0 4304 98 2 8 1140850688 1 7536 0 642 8 4278190080 0 517 0 0 0 7536 1442 202 208 98 1 1506 1536 98 2 1570 639 1 1570 19 899 7536 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 1 0 0 0 0 0 0 72 1 0 0 193 1 0 0] 98 0 1792 0 27 410 432 98 15 0 4304 98 2 8 1140850688 131073 7792 0 0 0 5 0 0 0 7792 498 234 240 896 16 234 256 98 4 410 5008 98 30 0 7792 98 2 8 1409355853 1025 7920 994 202 208 896 0 1312 642 5120 0 5 5138 0 16 98 6 5186 1 1922 8 #addTool 8 'Add Tool' 1 1 0 0 0 5186 1 1922 8 #removeTool 8 'Remove Tool' 1 1 0 0 0 5266 4097 5186 1 1922 8 #openAllTechniques 8 'Open All' 1 1 0 0 0 5266 4097 5138 0 16 98 0 8 'Images' 8 #images 134217729 0 0 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 7920 0 8 4294902693 5970 6000 98 0 1376 1408 0 0 0 0 0 0 202 208 98 1 6066 8 'Tools and Techniques' 661 6112 5970 6144 98 0 1106 0 0 1138 2 1 6208 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 6144 8512 7 513 0 0 0 7920 0 1 0 1106 0 0 1138 7 1 8 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:ctx | 
ctx item hasImages 
ifTrue: [ctx forecolor: Color darkBlue]
ifFalse: [ctx forecolor: Color black ]
]' 8 #[35 105 226 0 159 122 17 31 161 180 106 17 31 163 180 106] 6384 8 #hasImages 8 ##(Smalltalk.Color) 8 #darkBlue 6480 8 #black 8592 7 257 0 6816 896 0 131169 0 0 1442 202 208 98 3 1506 1536 98 2 1570 1 1 1570 639 441 7920 1506 6960 98 1 8032 7920 1506 7008 98 1 8 'Tools and Techniques' 7920 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 220 0 0 0] 98 0 1792 0 27 8 'tools' 410 2272 98 14 0 7792 98 2 8 1140850688 131073 9008 0 642 4784 0 5 0 0 0 9008 2370 8 ##(Smalltalk.PMBOKToolComposite) 3984 0 1442 202 208 98 1 1506 1536 98 2 1570 1 459 1570 639 441 9008 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 229 0 0 0 63 1 0 0 193 1 0 0] 896 1792 0 27 8 'toolComposite' 0 1442 202 208 98 1 1506 1536 98 2 1570 657 1 1570 639 899 7792 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 72 1 0 0 0 0 0 0 135 2 0 0 193 1 0 0] 98 3 7920 410 3088 98 12 0 7792 98 2 8 1140850688 1 9440 0 642 7360 0 517 0 0 0 9440 1442 202 208 98 1 1506 1536 98 2 1570 1 441 1570 639 19 9440 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 220 0 0 0 63 1 0 0 229 0 0 0] 98 0 1792 0 27 9008 1792 0 27 410 3088 98 12 0 4304 98 2 8 1140850688 1 9680 0 642 7616 0 517 0 0 0 9680 1442 202 208 98 1 1506 1536 98 2 1570 1295 1 1570 19 899 9680 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 135 2 0 0 0 0 0 0 144 2 0 0 193 1 0 0] 98 0 1792 0 27 410 432 98 15 0 4304 98 2 8 1140850688 131073 9920 0 0 0 5 0 0 0 9920 498 234 240 896 16 234 256 98 4 410 5008 98 30 0 9920 98 2 8 1409355853 1025 10048 994 202 208 896 0 1312 642 5120 0 5 5138 0 16 98 15 5186 1 1922 8 #browseProcessWithOutput 8 'Browse Process with Output' 1 1 0 0 0 5266 4097 5186 1 1922 8 #openAllOutputs 8 'Open All' 1 1 0 0 0 5266 4097 5186 1 1922 8 #addTemplateToOutput 8 'Add Template' 1 1 0 0 0 5186 1 1922 8 #removeTemplateFromOutput 8 'Remove Template' 1 1 0 0 0 5138 0 16 98 0 8 'Templates' 8 #outputTemplates 134217729 0 0 0 0 0 5266 4097 5138 0 16 98 0 8 'Images' 8 #outputImages 134217729 0 0 0 0 0 5266 4097 5186 1 1922 8 #addOutput 8 'Add Output' 1 1 0 0 0 5186 1 1922 8 #removeOutput 8 'Remove Output' 1 1 0 0 0 5266 4097 5186 1 1922 8 #addOutputArtifact 8 'Add Artifact' 1 1 0 0 0 5186 1 1922 8 #removeOutputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 10048 0 8 4294902693 5970 6000 98 0 1376 1408 0 0 0 0 0 0 202 208 98 2 6066 8 'Output' 661 6112 5970 6144 98 0 1106 0 0 1138 2 1 6208 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 6144 11072 7 513 0 0 0 10048 0 1 0 0 6066 8 'Type' 201 6112 5970 6704 98 0 1106 0 0 1138 2 1 5968 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 6704 11216 7 513 0 0 0 10048 0 1 0 0 6816 896 0 131169 0 0 1442 202 208 98 3 1506 1536 98 2 1570 1 1 1570 643 441 10048 1506 6960 98 1 10160 10048 1506 7008 98 1 8 'Output' 10048 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 65 1 0 0 220 0 0 0] 98 0 1792 0 27 8 'output' 410 2272 98 14 0 9920 98 2 8 1140850688 131073 11552 0 642 4784 0 5 0 0 0 11552 2370 4816 3984 0 1442 202 208 98 1 1506 1536 98 2 1570 1 459 1570 643 441 11552 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 229 0 0 0 65 1 0 0 193 1 0 0] 896 1792 0 27 8 'outputComposite' 0 1442 202 208 98 1 1506 1536 98 2 1570 1313 1 1570 643 899 9920 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 144 2 0 0 0 0 0 0 209 3 0 0 193 1 0 0] 98 3 10048 410 3088 98 12 0 9920 98 2 8 1140850688 1 11968 0 642 7360 0 517 0 0 0 11968 1442 202 208 98 1 1506 1536 98 2 1570 1 441 1570 643 19 11968 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 220 0 0 0 65 1 0 0 229 0 0 0] 98 0 1792 0 27 11552 1792 0 27 1792 0 27 4304 234 256 98 2 3856 8 'description' 0 410 928 98 28 0 3552 98 2 8 1140916736 1 12256 994 202 208 98 2 3728 4160 0 1312 0 0 1 0 0 0 12256 0 8 4294902927 1106 0 0 918822 ##(Smalltalk.CompiledMethod) 2 3 8 ##(Smalltalk.ListControlView) 8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 6000 12384 7 257 0 1106 0 0 12402 2 3 1376 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 12480 7 257 0 1408 0 0 0 0 0 1424 0 0 0 0 0 1442 202 208 98 3 1506 1536 98 2 1570 1 1 1570 1971 955 12256 1506 1632 98 1 98 1 5 12256 1506 1696 98 2 -1 1 12256 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 221 1 0 0] 98 0 1792 0 27 1442 202 208 98 1 1506 1536 98 2 1570 1 337 1570 1971 955 3552 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 168 0 0 0 217 3 0 0 133 2 0 0] 98 3 3856 4304 12256 1792 0 27 7 16 234 256 896 0 1442 202 208 98 1 1506 1536 98 2 1570 3199 21 1570 1971 1291 416 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 24 10 0 0 143 2 0 0] 98 3 560 410 3088 98 12 0 416 98 2 8 1140850688 1 13136 0 642 8 4278190080 0 517 0 0 0 13136 1442 202 208 98 1 1506 1536 98 2 1570 1 319 1570 1971 19 13136 1730 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 159 0 0 0 217 3 0 0 168 0 0 0] 98 0 1792 0 27 3552 1792 0 27)! !
!PMBOKKnowledgeAreaComposite class categoriesFor: #defaultModel!public! !
!PMBOKKnowledgeAreaComposite class categoriesFor: #resource_Default_view!public!resources-views! !

