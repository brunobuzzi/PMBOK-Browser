"Filed out from Dolphin Smalltalk 7"!

PMIComposite subclass: #PMIGroupsComposite
	instanceVariableNames: 'groupsPresenter processesPresenter inputPresenter toolsPresenter outputPresenter inputComposite toolComposite outputComposite descriptionComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIGroupsComposite guid: (GUID fromString: '{a72d98f4-89ec-4eb2-9c9d-b247c206e8c8}')!
PMIGroupsComposite comment: ''!
!PMIGroupsComposite categoriesForClass!MVP-Presenters! !
!PMIGroupsComposite methodsFor!

browseProcessWithInput

	self topShell showProcesses: (self projectModel getProcessesWithInput: inputPresenter selection) 
		caption: 'Processes with Input <', inputPresenter selection name, '>'
		searchedElement: inputPresenter selection!

browseProcessWithOutput

	self topShell showProcesses: (self projectModel getProcessesWithOutput: outputPresenter selection) 
		caption: 'Processes with Output <', outputPresenter selection name, '>'
		searchedElement: outputPresenter selection!

createComponents

	super createComponents.

	groupsPresenter := self add: ListPresenter new name: 'groups'.
	inputPresenter := self add: ListPresenter new name: 'input'.
	toolsPresenter := self add: ListPresenter new name: 'tools'.
	outputPresenter := self add: ListPresenter new name: 'output'.
	inputComposite := self add: PMIInputComposite new name: 'inputComposite'.
	toolComposite := self add: PMIToolComposite new name: 'toolComposite'.
	outputComposite := self add: PMIInputComposite new name: 'outputComposite'.
	processesPresenter := self add: ListPresenter new name: 'processes'.
	descriptionComposite := self add: RichTextComposite new name: 'description'.!

createSchematicWiring

	super createSchematicWiring.

	processesPresenter when: #leftButtonDoubleClicked: send: #onProcessDoubleClicked: to: self.

	groupsPresenter when: #selectionChanged send: #onGroupChanged to: self.

	inputPresenter when: #selectionChanged send: #onInputChanged to: self.

	toolsPresenter when: #selectionChanged send: #onToolChanged to: self.

	outputPresenter when: #selectionChanged send: #onOutputChanged to: self.!

model: anOrderedCollection

	super model: anOrderedCollection.

	groupsPresenter model: (ListModel on: anOrderedCollection).!

onGroupChanged

	groupsPresenter hasSelection ifFalse: [inputPresenter model: ListModel new. toolsPresenter model: ListModel new. ^outputPresenter model: ListModel new ].

	inputPresenter model: (ListModel on: groupsPresenter selection getAllInputs).
	toolsPresenter model: (ListModel on: groupsPresenter selection toolsAndTechniques).
	outputPresenter model: (ListModel on: groupsPresenter selection getAllOutputs).

	processesPresenter model: (ListModel on: groupsPresenter selection processes).

	descriptionComposite model: (groupsPresenter selection aspectValue: #description)!

onInputChanged

	inputComposite model: (inputPresenter hasSelection 
						ifFalse: [PMIInputDefinition new] 
						ifTrue: [inputPresenter selection])!

onOutputChanged

	outputComposite model: (outputPresenter hasSelection 
						ifFalse: [PMIOutputDefinition new] 
						ifTrue: [outputPresenter selection])!

onProcessDoubleClicked: aMouseEvent

	processesPresenter hasSelection ifFalse: [^self].

	PMIProcessDefinitionShell showOn: processesPresenter selection!

onToolChanged

	toolComposite model: (toolsPresenter hasSelection 
						ifFalse: [PMIToolOrTechnique new] 
						ifTrue: [toolsPresenter selection]).

	processesPresenter view invalidate.!

onViewOpened

	super onViewOpened.

	processesPresenter view columnsList first customDrawBlock: self toolProcessColorBlock.!

openCreatorProcess

	inputPresenter hasSelection ifFalse: [^self].

	inputPresenter selection outputProcess ifNotNil: [:value | PMIProcessDefinitionShell showOn: value]!

toolProcessColorBlock

	^[:ctx | 
toolsPresenter hasSelection 
ifFalse: [ctx forecolor: Color black]
ifTrue: [(ctx item includesToolOrTechnique: toolsPresenter selection)
	ifTrue: [ctx font beBold]
	ifFalse: [ctx font isBold: false]]
]! !
!PMIGroupsComposite categoriesFor: #browseProcessWithInput!public! !
!PMIGroupsComposite categoriesFor: #browseProcessWithOutput!public! !
!PMIGroupsComposite categoriesFor: #createComponents!public! !
!PMIGroupsComposite categoriesFor: #createSchematicWiring!public! !
!PMIGroupsComposite categoriesFor: #model:!public! !
!PMIGroupsComposite categoriesFor: #onGroupChanged!public! !
!PMIGroupsComposite categoriesFor: #onInputChanged!public! !
!PMIGroupsComposite categoriesFor: #onOutputChanged!public! !
!PMIGroupsComposite categoriesFor: #onProcessDoubleClicked:!public! !
!PMIGroupsComposite categoriesFor: #onToolChanged!public! !
!PMIGroupsComposite categoriesFor: #onViewOpened!public! !
!PMIGroupsComposite categoriesFor: #openCreatorProcess!public! !
!PMIGroupsComposite categoriesFor: #toolProcessColorBlock!public! !

!PMIGroupsComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 8 ##(Smalltalk.CardContainer)  98 16 0 416 98 2 8 1409286144 131073 560 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 560 655878 ##(Smalltalk.CardLayout)  202 208 98 2 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Group Description' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Group Description'' iconBlock: [String icon]' 8 #[29 30 34 112 31 161 106 194 105] 784 816 80 8 #icon 8 #text:iconBlock: 848 11 1 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 992 0 642 8 4278190080 0 5 0 0 0 992 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  9 49 1298 1955 885 992 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 210 1 0 0] 98 0 1298 193 193 0 27 754 786 8 'Properties' 834 0 0 866 6 1 896 8 'doIt' 8 'CardLabel text: ''Properties'' iconBlock: [ValueConverter icon]' 8 #[29 30 34 112 31 161 106 194 105] 784 1456 8 ##(Smalltalk.ValueConverter)  960 976 1472 11 1 0 0 410 432 98 15 0 560 98 2 8 1140850688 131073 1568 0 0 0 5 0 0 0 1568 498 234 240 1392 32 234 256 1392 0 1170 202 208 98 1 1234 1264 98 2 1298 9 49 1298 1955 885 1568 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 210 1 0 0] 98 5 410 432 98 15 0 1568 98 2 8 1140850688 131073 1840 0 0 0 5 0 0 0 1840 498 234 240 1392 16 234 256 98 4 410 8 ##(Smalltalk.ListView)  98 30 0 1840 98 2 8 1409355853 1025 1968 590662 2 ##(Smalltalk.ListModel)  202 208 1392 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  642 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 15 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #browseProcessWithInput 8 'Browse Process with Input' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 2210 1 2242 8 #openCreatorProcess 8 'Open Creator Process' 1 1 0 0 0 2306 4097 2210 1 2242 8 #openAllInputs 8 'Open All' 1 1 0 0 0 2306 4097 2210 1 2242 8 #addTemplateToInput 8 'Add Template' 1 1 0 0 0 2210 1 2242 8 #removeTemplateFromInput 8 'Remove Template' 1 1 0 0 0 2162 0 16 98 0 8 'Templates' 8 #inputTemplates 134217729 0 0 0 0 0 2306 4097 2210 1 2242 8 #addInput 8 'Add Input' 1 1 0 0 0 2210 1 2242 8 #removeInput 8 'Remove Input' 1 1 0 0 0 2306 4097 2210 1 2242 8 #addInputArtifact 8 'Add Artifact' 1 1 0 0 0 2210 1 2242 8 #removeInputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1968 0 8 4294902693 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn)  8 'Input' 661 8 #left 3010 8 #name 98 0 834 0 0 866 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3232 3264 7 513 0 0 0 1968 0 1 0 834 0 0 866 7 1 832 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] 8 #item 8 #deliverableIsOrganizationAsset 8 #forecolor 327734 ##(Smalltalk.Float)  8 51 51 51 51 51 51 251 63 8 #fadedBy: 8 #forecolor: 3392 7 257 0 3154 8 'Creator Process' 201 3200 3010 8 #outputProcessName 98 0 834 0 0 866 2 1 3008 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] 3632 3664 7 513 0 0 0 1968 0 1 0 0 3154 8 'Type' 201 3200 3010 8 #printType 98 0 834 0 0 866 2 1 3008 8 'doIt' 8 '[:a : b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 3792 3824 7 513 0 0 0 1968 0 1 0 0 8 #report 1392 0 131169 0 0 1170 202 208 98 3 1234 1264 98 2 1298 1 1 1298 639 433 1968 1234 8 #contextMenu: 98 1 2176 1968 1234 8 #text: 98 1 8 'Input' 1968 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 216 0 0 0] 98 0 1408 0 27 8 'input' 410 1008 98 14 0 1840 98 2 8 1140850688 131073 4208 0 642 8 4278190080 0 5 0 0 0 4208 1106 8 ##(Smalltalk.PMIInputComposite)  1152 0 1170 202 208 98 1 1234 1264 98 2 1298 1 451 1298 639 435 4208 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 225 0 0 0 63 1 0 0 186 1 0 0] 1392 1408 0 27 8 'inputComposite' 0 1170 202 208 98 1 1234 1264 98 2 1298 1 1 1298 639 885 1840 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 186 1 0 0] 98 3 1968 410 8 ##(Smalltalk.Splitter)  98 12 0 1840 98 2 8 1140850688 1 4656 0 642 8 4278190080 0 517 0 0 0 4656 1170 202 208 98 1 1234 1264 98 2 1298 1 433 1298 639 19 4656 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 216 0 0 0 63 1 0 0 225 0 0 0] 98 0 1408 0 27 4208 1408 0 27 410 4672 98 12 0 1568 98 2 8 1140850688 1 4928 0 642 8 4278190080 0 517 0 0 0 4928 1170 202 208 98 1 1234 1264 98 2 1298 639 1 1298 19 885 4928 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 1 0 0 0 0 0 0 72 1 0 0 186 1 0 0] 98 0 1408 0 27 410 432 98 15 0 1568 98 2 8 1140850688 131073 5184 0 0 0 5 0 0 0 5184 498 234 240 1392 16 234 256 98 4 410 1984 98 30 0 5184 98 2 8 1409355853 1025 5312 2050 202 208 1392 0 2112 642 2144 0 5 2162 0 16 98 6 2210 1 2242 8 #addTool 8 'Add Tool' 1 1 0 0 0 2210 1 2242 8 #removeTool 8 'Remove Tool' 1 1 0 0 0 2306 4097 2210 1 2242 8 #openAllTechniques 8 'Open All' 1 1 0 0 0 2306 4097 2162 0 16 98 0 8 'Images' 8 #images 134217729 0 0 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5312 0 8 4294902693 3010 3040 98 0 3072 3104 0 0 0 0 0 0 202 208 98 1 3154 8 'Tools and Techniques' 661 3200 3010 3232 98 0 834 0 0 866 2 1 3296 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3232 5904 7 513 0 0 0 5312 0 1 0 834 0 0 866 7 1 8 ##(Smalltalk.UndefinedObject)  8 'doIt' 8 '[:ctx | 
ctx item hasImages 
ifTrue: [ctx forecolor: Color darkBlue]
ifFalse: [ctx forecolor: Color black ]
]' 8 #[35 105 226 0 159 122 17 31 161 180 106 17 31 163 180 106] 3472 8 #hasImages 8 ##(Smalltalk.Color)  8 #darkBlue 3568 8 #black 5984 7 257 0 3904 1392 0 131169 0 0 1170 202 208 98 3 1234 1264 98 2 1298 1 1 1298 639 433 5312 1234 4048 98 1 5424 5312 1234 4096 98 1 8 'Tools and Techniques' 5312 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 63 1 0 0 216 0 0 0] 98 0 1408 0 27 8 'tools' 410 1008 98 14 0 5184 98 2 8 1140850688 131073 6400 0 642 4288 0 5 0 0 0 6400 1106 8 ##(Smalltalk.PMIToolComposite)  1152 0 1170 202 208 98 1 1234 1264 98 2 1298 1 451 1298 639 435 6400 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 225 0 0 0 63 1 0 0 186 1 0 0] 1392 1408 0 27 8 'toolComposite' 0 1170 202 208 98 1 1234 1264 98 2 1298 657 1 1298 639 885 5184 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 72 1 0 0 0 0 0 0 135 2 0 0 186 1 0 0] 98 3 5312 410 4672 98 12 0 5184 98 2 8 1140850688 1 6832 0 642 4752 0 517 0 0 0 6832 1170 202 208 98 1 1234 1264 98 2 1298 1 433 1298 639 19 6832 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 216 0 0 0 63 1 0 0 225 0 0 0] 98 0 1408 0 27 6400 1408 0 27 410 4672 98 12 0 1568 98 2 8 1140850688 1 7072 0 642 5008 0 517 0 0 0 7072 1170 202 208 98 1 1234 1264 98 2 1298 1295 1 1298 19 885 7072 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 135 2 0 0 0 0 0 0 144 2 0 0 186 1 0 0] 98 0 1408 0 27 410 432 98 15 0 1568 98 2 8 1140850688 131073 7312 0 0 0 5 0 0 0 7312 498 234 240 1392 16 234 256 98 4 410 1008 98 14 0 7312 98 2 8 1140850688 131073 7440 0 642 4288 0 5 0 0 0 7440 1106 4320 1152 0 1170 202 208 98 1 1234 1264 98 2 1298 1 451 1298 643 435 7440 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 225 0 0 0 65 1 0 0 186 1 0 0] 1392 1408 0 27 8 'outputComposite' 410 1984 98 30 0 7312 98 2 8 1409355853 1025 7696 2050 202 208 1392 0 2112 642 2144 0 5 2162 0 16 98 15 2210 1 2242 8 #browseProcessWithOutput 8 'Browse Process with Output' 1 1 0 0 0 2306 4097 2210 1 2242 8 #openAllOutputs 8 'Open All' 1 1 0 0 0 2306 4097 2210 1 2242 8 #addTemplateToOutput 8 'Add Template' 1 1 0 0 0 2210 1 2242 8 #removeTemplateFromOutput 8 'Remove Template' 1 1 0 0 0 2162 0 16 98 0 8 'Templates' 8 #outputTemplates 134217729 0 0 0 0 0 2306 4097 2162 0 16 98 0 8 'Images' 8 #outputImages 134217729 0 0 0 0 0 2306 4097 2210 1 2242 8 #addOutput 8 'Add Output' 1 1 0 0 0 2210 1 2242 8 #removeOutput 8 'Remove Output' 1 1 0 0 0 2306 4097 2210 1 2242 8 #addOutputArtifact 8 'Add Artifact' 1 1 0 0 0 2210 1 2242 8 #removeOutputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 7696 0 8 4294902693 3010 3040 98 0 3072 3104 0 0 0 0 0 0 202 208 98 2 3154 8 'Output' 661 3200 3010 3232 98 0 834 0 0 866 2 1 3296 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3232 8720 7 513 0 0 0 7696 0 1 0 0 3154 8 'Type' 201 3200 3010 3792 98 0 834 0 0 866 2 1 3008 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 3792 8864 7 513 0 0 0 7696 0 1 0 0 3904 1392 0 131169 0 0 1170 202 208 98 3 1234 1264 98 2 1298 1 1 1298 643 433 7696 1234 4048 98 1 7808 7696 1234 4096 98 1 8 'Output' 7696 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 65 1 0 0 216 0 0 0] 98 0 1408 0 27 8 'output' 0 1170 202 208 98 1 1234 1264 98 2 1298 1313 1 1298 643 885 7312 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 144 2 0 0 0 0 0 0 209 3 0 0 186 1 0 0] 98 3 7696 410 4672 98 12 0 7312 98 2 8 1140850688 1 9360 0 642 4752 0 517 0 0 0 9360 1170 202 208 98 1 1234 1264 98 2 1298 1 433 1298 643 19 9360 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 216 0 0 0 65 1 0 0 225 0 0 0] 98 0 1408 0 27 7440 1408 0 27 1408 0 27 1568 234 256 98 2 992 8 'description' 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 560 98 2 8 1140916736 1 9648 2050 202 208 98 2 800 1440 0 2112 0 0 1 0 0 0 9648 0 8 4294902927 834 0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 3040 9792 7 257 0 834 0 0 9810 2 3 3072 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 9888 7 257 0 3104 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 1170 202 208 98 3 1234 1264 98 2 1298 1 1 1298 1971 941 9648 1234 8 #basicSelectionsByIndex: 98 1 98 1 5 9648 1234 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 9648 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 214 1 0 0] 98 0 1408 0 27 1170 202 208 98 1 1234 1264 98 2 1298 1 331 1298 1971 941 560 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 165 0 0 0 217 3 0 0 123 2 0 0] 98 3 992 1568 9648 1408 0 27 7 16 234 256 1392 0 1170 202 208 98 1 1234 1264 98 2 1298 3199 21 1298 1971 1271 416 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 24 10 0 0 133 2 0 0] 98 3 410 8 ##(Smalltalk.SlideyInneyOuteyThing)  98 23 0 416 98 2 8 1409286144 131073 10592 0 642 8 4278190080 0 517 0 0 0 10592 690 202 208 98 1 754 786 8 'Groups' 834 0 0 866 6 1 896 8 'doIt' 8 '(CardLabel text: ''Groups'' iconBlock: [PMIManagementProcessGroup icon])' 8 #[29 30 34 112 31 161 106 194 105] 784 10784 8 ##(Smalltalk.PMIManagementProcessGroup)  960 976 10800 11 1 0 0 410 432 98 15 0 410 8 ##(Smalltalk.SlidingCardTray)  98 22 0 10592 98 2 8 1140850688 131073 10928 0 642 10688 0 5 0 0 0 10928 10704 234 256 1392 0 410 9664 98 28 0 10592 98 2 8 1140916736 1 11040 2050 202 208 98 1 10768 0 2112 642 10688 0 1 0 0 0 11040 0 8 4294902927 8 ##(Smalltalk.BasicListAbstract)  3072 3104 0 0 0 0 0 9968 0 0 0 0 0 1170 202 208 98 3 1234 1264 98 2 1298 1 1 1298 1971 313 11040 1234 10112 98 1 98 1 3 11040 1234 10176 98 2 -1 1 11040 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 156 0 0 0] 98 0 1408 0 27 0 10592 1298 33 33 1049862 ##(Smalltalk.ButtonInteractor)  10928 0 590342 ##(Smalltalk.Rectangle)  1298 1919 223 1298 1951 255 1 2242 8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 1170 202 208 98 1 1234 1264 98 2 1298 9 49 1298 1955 257 10928 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 213 3 0 0 152 0 0 0] 98 1 10896 1408 0 27 98 2 8 1140850688 131073 10896 0 0 0 5 0 0 0 10896 498 234 240 98 2 410 1008 98 14 0 10896 98 2 8 1140850688 131073 11840 0 642 8 4278190080 0 5 0 0 0 11840 1106 8 ##(Smalltalk.ListPresenter)  8 #resource_PMI_Process_list 0 1170 202 208 98 1 1234 1264 98 2 1298 503 1 1298 1453 221 11840 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 251 0 0 0 0 0 0 0 209 3 0 0 110 0 0 0] 1392 1408 0 27 7 32 234 256 98 4 11840 8 'processes' 410 1008 98 14 0 10896 98 2 8 1140850688 131073 12176 0 642 8 4278190080 0 5 0 0 0 12176 1106 11952 8 #resource_PMI_Processes_groups 0 1170 202 208 98 1 1234 1264 98 2 1298 1 1 1298 485 221 12176 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 242 0 0 0 110 0 0 0] 1392 1408 0 27 8 'groups' 0 1170 202 208 98 1 1234 1264 98 2 1298 1 1 1298 1955 221 10896 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 209 3 0 0 110 0 0 0] 98 3 12176 410 4672 98 12 0 10896 98 2 8 1140850688 1 12624 0 642 8 4278190080 0 517 0 0 0 12624 1170 202 208 98 1 1234 1264 98 2 1298 485 1 1298 19 221 12624 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 242 0 0 0 0 0 0 0 251 0 0 0 110 0 0 0] 98 0 1408 0 27 11840 1408 0 27 10896 234 256 1392 0 11040 10928 1298 201 201 401 1 31 0 0 1170 202 208 98 1 1234 1264 98 2 1298 1 1 1298 1971 313 10592 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 217 3 0 0 156 0 0 0] 98 2 10928 11040 1408 0 27 410 4672 98 12 0 416 98 2 8 1140850688 1 13072 0 642 8 4278190080 0 517 0 0 0 13072 1170 202 208 98 1 1234 1264 98 2 1298 1 313 1298 1971 19 13072 1346 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 156 0 0 0 217 3 0 0 165 0 0 0] 98 0 1408 0 27 560 1408 0 27 )! !
!PMIGroupsComposite class categoriesFor: #resource_Default_view!public!resources-views! !

