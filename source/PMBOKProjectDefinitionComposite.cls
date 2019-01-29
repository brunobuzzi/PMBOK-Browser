"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKProjectDefinitionComposite
	instanceVariableNames: 'processDefinitionComposite processesPresenter categoryKnowledgePresenter categoryGroupPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProjectDefinitionComposite guid: (GUID fromString: '{1b091ce0-f170-4e2f-a551-4db87a8670b4}')!
PMBOKProjectDefinitionComposite comment: ''!
!PMBOKProjectDefinitionComposite categoriesForClass!MVP-Presenters! !
!PMBOKProjectDefinitionComposite methodsFor!

browseAreas

	^self topShell browseAreas!

browseGroups
	categoryGroupPresenter hasSelection
		ifFalse: [^PMBOKGroupsShell showOn: categoryGroupPresenter model asOrderedCollection allButFirst].
	PMBOKGroupsShell showOn: (OrderedCollection with: categoryGroupPresenter selection)!

createComponents
	super createComponents.
	processesPresenter := self add: ListPresenter new name: 'processes'.
	categoryKnowledgePresenter := self add: TreePresenter new name: 'categoryKnowledge'.
	categoryGroupPresenter := self add: TreePresenter new name: 'categoryGroup'.
	processDefinitionComposite := self add: PMBOKProcessDefinitionComposite new
				name: 'processDefinitionComposite'!

createSchematicWiring

	super createSchematicWiring.

	processesPresenter when: #selectionChanged send: #onProcessSelectionChanged to: self;
		when: #leftButtonDoubleClicked: send: #onImageDoubleClicked: to: self.

	categoryGroupPresenter when: #selectionChanged send: #onProcessFilterChanged to: self;
		when: #leftButtonDoubleClicked: send: #onGroupDoubleClicked: to: self.

	categoryKnowledgePresenter when: #selectionChanged send: #onProcessFilterChanged to: self;
		when: #leftButtonDoubleClicked: send: #onKnowledgeAreaDoubleClicked: to: self.!

customDrawGroupTree: aNMTVCUSTOMDRAW

	processesPresenter hasSelection ifFalse: [^self].

	(processesPresenter selection managementGroup == aNMTVCUSTOMDRAW item)
	ifTrue: [aNMTVCUSTOMDRAW font isBold: true.
			aNMTVCUSTOMDRAW backcolor: Color gray ].!

customDrawKnowledgeAreaTree: aNMTVCUSTOMDRAW

	processesPresenter hasSelection ifFalse: [^self].

	(processesPresenter selection knowledgeArea == aNMTVCUSTOMDRAW item)
	ifTrue: [aNMTVCUSTOMDRAW font isBold: true.
		aNMTVCUSTOMDRAW backcolor: Color gray ].!

inputTreePresenter

	^processDefinitionComposite inputTreePresenter!

model: aPMIProject
	| categoryGroup categoryKnowledge groupRoot knowledgeRoot |
	super model: aPMIProject.
	processesPresenter model: (ListModel on: aPMIProject processes).
	groupRoot := PMBOKManagementProcessGroup new.
	knowledgeRoot := PMBOKKnowledgeArea new.
	categoryGroup := TreeModel withRoots: (OrderedCollection with: groupRoot).
	categoryKnowledge := TreeModel withRoots: (OrderedCollection with: knowledgeRoot).
	aPMIProject getAllGroups do: [:each | categoryGroup add: each asChildOf: groupRoot].
	aPMIProject knowledgeAreas do: [:each | categoryKnowledge add: each asChildOf: knowledgeRoot].
	categoryGroupPresenter model: categoryGroup.
	categoryKnowledgePresenter model: categoryKnowledge!

onGroupDoubleClicked: aMouseEvent
	| presenter |

	categoryGroupPresenter hasSelection ifFalse: [^self].

	presenter := RichTextShell show.
	presenter view caption: 'PMI Processes Groups'.
	presenter model: (categoryGroupPresenter selection aspectValue: #description).

	presenter view extent: 659@600.!

onImageDoubleClicked: aMouseEvent

	processesPresenter hasSelection ifFalse: [^self].
	processesPresenter selection hasImage ifFalse: [^self].

	"PMIProcessImageComposite showOn: self currentProcessImage"


	^ShellLibrary default shellOpen: (processesPresenter selection imagePath, processesPresenter selection image)!

onKnowledgeAreaDoubleClicked: aMouseEvent
	| presenter |

	categoryKnowledgePresenter hasSelection ifFalse: [^self].

	presenter := RichTextShell show.
	presenter view caption: 'PMI Knowledge Areas'.
	presenter model: (categoryKnowledgePresenter selection aspectValue: #description).

	presenter view extent: 659@600.!

onProcessFilterChanged
	| group knowledgeArea |

	self setProcessesList.

	group := categoryGroupPresenter selectionOrNil.
	knowledgeArea := categoryKnowledgePresenter selectionOrNil.

	group notNil
	ifTrue: [processesPresenter model: (ListModel on: (processesPresenter model select: [:each | each managementGroup == group])).].

	knowledgeArea notNil
	ifTrue: [processesPresenter model: (ListModel on: (processesPresenter model select: [:each | each knowledgeArea == knowledgeArea])).].!

onProcessSelectionChanged

	processesPresenter hasSelection ifFalse: [^processDefinitionComposite resetModel].

	processDefinitionComposite model: processesPresenter selection. 

	categoryKnowledgePresenter view invalidate.
	categoryGroupPresenter view invalidate.


!

onViewOpened

	super onViewOpened.

	categoryGroupPresenter view expandAll.

	categoryKnowledgePresenter view expandAll.!

outputTreePresenter

	^processDefinitionComposite outputTreePresenter!

queryCommand: aCommandQuery
	| cmd |

	cmd := aCommandQuery commandSymbol.

	cmd == #browseGroups ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #browseAreas ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #showProcessDefinition ifTrue: [aCommandQuery isEnabled: processesPresenter hasSelection.^true].
	cmd == #openPmbook ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell. ^true].
	cmd == #setPmbookPath ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell. ^true].
	cmd == #openPMIDefinitionBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #openPortfolioBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #openPMIBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #setProcessesListResetFilterSelection ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchProcessesWithInput ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchProcessesWithInputArtifact ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchProcessesWithOutput ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchProcessesWithOutputArtifact ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchDocumentUpdateWithText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchChangedRequestStatusUpdateWithText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchChangeRequestWithText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchDeliverableArtifactWithText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchProductServiceWithText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchValidatedChangeWithText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
	cmd == #searchApprovedChangedWithText ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell.^true].
!

resetFilterSelection

	categoryGroupPresenter resetSelection.

	categoryKnowledgePresenter resetSelection.!

setProcessesList

	processesPresenter model: (ListModel on: self model processes).!

setProcessesListResetFilterSelection

	self setProcessesList.

	self resetFilterSelection.!

showInputsOfGroup

	self halt.!

showOutputsOfGroup

	self halt.!

showProcessDefinition
	PMBOKProcessDefinitionShell showOn: processesPresenter selection!

showToolsOfArea

	self halt.!

showToolsOfGroup

	self halt.! !
!PMBOKProjectDefinitionComposite categoriesFor: #browseAreas!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #browseGroups!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #createComponents!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #customDrawGroupTree:!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #customDrawKnowledgeAreaTree:!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #inputTreePresenter!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #model:!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #onGroupDoubleClicked:!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #onImageDoubleClicked:!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #onKnowledgeAreaDoubleClicked:!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #onProcessFilterChanged!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #onProcessSelectionChanged!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #onViewOpened!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #outputTreePresenter!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #queryCommand:!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #resetFilterSelection!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #setProcessesList!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #setProcessesListResetFilterSelection!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #showInputsOfGroup!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #showOutputsOfGroup!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #showProcessDefinition!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #showToolsOfArea!public! !
!PMBOKProjectDefinitionComposite categoriesFor: #showToolsOfGroup!public! !

!PMBOKProjectDefinitionComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor) 31 0 5 0 0 0 528 498 1 1 0 0 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 528 98 2 8 1140850688 131073 640 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 5 0 0 0 640 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Toolbar) 8 #resource_PMI_Browser_toolbar 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 962 461 51 640 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 230 0 0 0 25 0 0 0] 98 0 962 193 193 0 27 410 800 98 25 0 528 98 2 8 1409288972 131137 1088 0 722 8 4278190080 0 517 0 263174 ##(Smalltalk.Font) 0 16 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 962 193 193 0 1088 722 1168 8 4294903709 234 256 1056 234 256 98 4 25195 1115910 ##(Smalltalk.ToolbarIconButton) 25195 0 1088 1 1180998 4 ##(Smalltalk.CommandDescription) 8 #showProcessDefinition 8 'View Process' 1 1 263494 3 ##(Smalltalk.Icon) 0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'BasicInspector.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap) 0 16 0 0 0 0 3 962 33 33 1 25193 853766 ##(Smalltalk.ToolbarButton) 25193 0 1088 1 1394 8 #setProcessesListResetFilterSelection 8 'Set Original Process Order' 1 1 1458 0 16 1504 8 'Object.ico' 1552 1586 0 16 1504 8 'Tools.bmp' 1552 0 71 962 1857 33 85 98 5 1050118 ##(Smalltalk.ToolbarSeparator) 0 0 1088 3 0 1 1648 1810 0 0 1088 3 0 1 1376 1810 0 0 1088 3 0 1 234 240 98 4 1744 1 1600 117 0 1 0 962 33 33 962 45 45 0 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 834 202 208 98 2 898 928 98 2 962 461 1 962 1611 51 1088 898 8 #updateSize 1056 1088 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 230 0 0 0 0 0 0 0 11 4 0 0 25 0 0 0] 98 0 1072 0 27 234 256 1056 0 834 202 208 98 1 898 928 98 2 962 1 1 962 2071 51 528 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 25 0 0 0] 98 2 1088 640 1072 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 2336 0 0 0 5 0 0 0 2336 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 2 410 432 98 15 0 2336 98 2 8 1140850688 131073 2464 0 0 0 5 0 0 0 2464 2402 234 240 1056 32 234 256 98 2 410 656 98 14 0 2464 98 2 8 1140850688 131073 2592 0 722 8 4278190080 0 5 0 0 0 2592 770 8 ##(Smalltalk.PMBOKProcessDefinitionComposite) 8 #resource_Default_view 0 834 202 208 98 1 898 928 98 2 962 1 1 962 2071 889 2592 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 188 1 0 0] 1056 1072 0 27 8 'processDefinitionComposite' 0 834 202 208 98 1 898 928 98 2 962 1 473 962 2071 889 2464 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 236 0 0 0 11 4 0 0 168 2 0 0] 98 1 2592 1072 0 27 5 16 234 256 1056 0 834 202 208 98 1 898 928 98 2 962 1 51 962 2071 1361 2336 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 11 4 0 0 193 2 0 0] 98 3 410 8 ##(Smalltalk.SlideyInneyOuteyThing) 98 23 0 2336 98 2 8 1140850688 131073 3232 0 594 31 0 517 0 0 0 3232 655878 ##(Smalltalk.CardLayout) 202 208 98 1 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Processes List' 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 6 1 8 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Processes List'' iconBlock: [PMIProcessDefinition icon]' 8 #[29 30 34 112 31 161 106 194 105] 3424 3456 8 ##(Smalltalk.PMBOKProcessDefinition) 8 #icon 8 #text:iconBlock: 3488 11 1 0 0 410 432 98 15 0 410 8 ##(Smalltalk.SlidingCardTray) 98 22 0 3232 98 2 8 1140850688 131073 3680 0 722 8 4278190080 0 5 0 0 0 3680 3344 234 256 1056 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 3232 98 2 8 1140916736 1 3808 590662 2 ##(Smalltalk.ListModel) 202 208 98 1 3440 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 3312 0 1 0 0 0 3808 0 8 4294902741 3474 0 0 918822 ##(Smalltalk.CompiledMethod) 2 3 8 ##(Smalltalk.ListControlView) 8 #defaultGetTextBlock 390769155 8 #[30 105 226 0 106] 8 #displayString 4000 7 257 0 3474 0 0 4018 2 3 8 ##(Smalltalk.IconicListAbstract) 8 #defaultGetImageBlock 396680515 8 #[30 105 226 0 106] 8 #iconImageIndex 4112 7 257 0 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 834 202 208 98 3 898 928 98 2 962 1 1 962 2071 443 3808 898 8 #basicSelectionsByIndex: 98 1 98 1 3 3808 898 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 3808 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 221 0 0 0] 98 0 1072 0 27 0 3232 962 33 33 1049862 ##(Smalltalk.ButtonInteractor) 3680 0 590342 ##(Smalltalk.Rectangle) 962 2019 353 962 2051 385 1 1394 8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 834 202 208 98 1 898 928 98 2 962 9 49 962 2055 387 3680 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 7 4 0 0 217 0 0 0] 98 1 3648 1072 0 27 98 2 8 1140850688 131073 3648 0 0 0 5 0 0 0 3648 2402 234 240 98 2 410 432 98 15 0 3648 98 2 8 1140850688 131073 4928 0 0 0 5 0 0 0 4928 2402 234 240 1056 32 234 256 98 2 410 656 98 14 0 4928 98 2 8 1140850688 131073 5056 0 722 8 4278190080 0 5 0 0 0 5056 770 8 ##(Smalltalk.ListPresenter) 8 #resource_PMI_Process_list 0 834 202 208 98 1 898 928 98 2 962 1 1 962 1527 351 5056 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 251 2 0 0 175 0 0 0] 1056 1072 0 27 8 'processes' 0 834 202 208 98 1 898 928 98 2 962 1 1 962 1527 351 4928 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 251 2 0 0 175 0 0 0] 98 1 5056 1072 0 27 7 32 234 256 1056 0 834 202 208 98 1 898 928 98 2 962 1 1 962 2055 351 3648 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 175 0 0 0] 98 3 4928 410 8 ##(Smalltalk.Splitter) 98 12 0 3648 98 2 8 1140850688 1 5696 0 722 8 4278190080 0 517 0 0 0 5696 834 202 208 98 1 898 928 98 2 962 1527 1 962 19 351 5696 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 251 2 0 0 0 0 0 0 4 3 0 0 175 0 0 0] 98 0 1072 0 27 410 432 98 15 0 3648 98 2 8 1140850688 131073 5968 0 0 0 5 0 0 0 5968 2402 234 240 1056 32 234 256 98 4 410 8 ##(Smalltalk.TreeView) 98 27 0 5968 98 2 8 1409352231 1025 6096 590918 3 ##(Smalltalk.TreeModel) 0 3968 525062 ##(Smalltalk.TreeNode) 0 0 0 234 256 1056 722 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu) 0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem) 1 1394 8 #browseAreas 8 'Browse Areas' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 6096 0 8 4294904503 459270 ##(Smalltalk.Message) 8 #areaName 98 0 4144 4224 0 0 3474 0 0 3506 5 1 3472 8 'doIt' 8 '[:ctx | ctx view presenter parentPresenter customDrawKnowledgeAreaTree: ctx]' 8 #[33 105 226 0 159 160 17 179 106] 8 #view 8 #presenter 8 #parentPresenter 8 #customDrawKnowledgeAreaTree: 6512 7 257 0 0 0 234 240 1056 17 4240 1 0 834 202 208 98 2 898 928 98 2 962 1 1 962 245 351 6096 898 8 #contextMenu: 98 1 6304 6096 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 122 0 0 0 175 0 0 0] 98 0 1072 0 27 8 'categoryKnowledge' 410 6112 98 27 0 5968 98 2 8 1409352231 1025 6896 6178 0 3968 6210 0 0 0 234 256 1056 722 6272 0 5 6290 0 16 98 1 6338 1 1394 8 #browseGroups 8 'Browse Groups' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 6896 0 8 4294904503 6450 8 #groupName 98 0 4144 4224 0 0 3474 0 0 3506 5 1 8 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:ctx | ctx view presenter parentPresenter customDrawGroupTree: ctx]' 8 #[33 105 226 0 159 160 17 179 106] 6592 6608 6624 8 #customDrawGroupTree: 7200 7 257 0 0 0 234 240 1056 17 4240 1 0 834 202 208 98 2 898 928 98 2 962 267 1 962 245 351 6896 898 6800 98 1 7024 6896 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 133 0 0 0 0 0 0 0 255 0 0 0 175 0 0 0] 98 0 1072 0 27 8 'categoryGroup' 0 834 202 208 98 1 898 928 98 2 962 1545 1 962 511 351 5968 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 3 0 0 0 0 0 0 3 4 0 0 175 0 0 0] 98 3 6096 410 5712 98 12 0 5968 98 2 8 1140850688 262145 7696 0 722 8 4278190080 0 517 0 0 0 7696 834 202 208 98 1 898 928 98 2 962 245 1 962 23 351 7696 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 122 0 0 0 0 0 0 0 133 0 0 0 175 0 0 0] 98 0 1072 0 27 6896 1072 0 27 1072 0 27 3648 234 256 1056 0 3808 3680 962 201 201 401 1 23 0 0 834 202 208 98 1 898 928 98 2 962 1 1 962 2071 443 3232 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 221 0 0 0] 98 2 3680 3808 1072 0 27 410 5712 98 12 0 2336 98 2 8 1140850688 263169 8144 0 722 8 4278190080 0 517 0 0 0 8144 834 202 208 98 1 898 928 98 2 962 1 443 962 2071 31 8144 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 221 0 0 0 11 4 0 0 236 0 0 0] 98 0 1072 0 27 2464 1072 0 27 234 256 1056 0 834 202 208 98 1 898 928 98 2 962 3199 21 962 2071 1411 416 1010 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 74 10 0 0 203 2 0 0] 98 2 528 2336 1072 0 27)! !
!PMBOKProjectDefinitionComposite class categoriesFor: #resource_Default_view!public!resources-views! !

