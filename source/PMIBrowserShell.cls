"Filed out from Dolphin Smalltalk 7"!

PMIShell subclass: #PMIBrowserShell
	instanceVariableNames: 'folderPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIBrowserShell guid: (GUID fromString: '{7567aa31-f8dd-4dc9-b16e-9f558587e1f1}')!
PMIBrowserShell comment: ''!
!PMIBrowserShell categoriesForClass!MVP-Presenters! !
!PMIBrowserShell methodsFor!

artifactsIcon

	^SmalltalkSystemIcon 
		icon: PMIArtifactDefinition icon
		description: 'Artifacts Browser'
		openBlock: (MessageSend receiver: self selector: #browseArtifacts)!

createComponents

	super createComponents.

	folderPresenter := self add: FolderPresenter new name: 'folder'.!

deliverablesIcon

	^SmalltalkSystemIcon 
		icon: PMIDocumentDefinition icon
		description: 'Deliverables Browser'
		openBlock: (MessageSend receiver: self selector: #browseDeliverables)!

groupsIcon

	^SmalltalkSystemIcon 
		icon: (PMIManagementProcessGroup icon)
		description: 'Browse Groups'
		openBlock: (MessageSend receiver: self selector: #browseGroups)!

knowledgeAreaIcon

	^SmalltalkSystemIcon 
		icon: (PMIKnowledgeArea icon)
		description: 'Browse Areas'
		openBlock: (MessageSend receiver: self selector: #browseAreas)!

nonProcessQuizIcon

	^SmalltalkSystemIcon 
		icon: CheckBox icon
		description: 'Non Process Quiz Browser'
		openBlock: (MessageSend receiver: self selector: #openNonQuizBrowser)!

onViewOpened
	| icons |

	super onViewOpened.
	icons := OrderedCollection new.
	icons
		add: self pmbokIcon;
		add: self pmiProjectIcon;
		add: self pmiPortfolioIcon;
		add: self groupsIcon;
		add: self knowledgeAreaIcon;
		add: self deliverablesIcon;
		add: self artifactsIcon;
		add: self toolsIcon;
		add: self treeBuilderIcon;
		add: self treeListIcon;
		add: self quizFolder.
	folderPresenter openBlock: [:toolPresenter :iconTool | iconTool isFolder ifTrue: [iconTool openBlock value: toolPresenter value: iconTool] ifFalse: [iconTool openBlock value]].
	folderPresenter model: (TreeModel withRoots: icons).

	self addQuizChildrenTo: icons last.
!

pmbokIcon

	^SmalltalkSystemIcon 
		icon: (Icon fromFile: 'pdf4.ico')
		description: 'Open PMBOK'
		openBlock: (MessageSend receiver: self selector: #openPmbook)!

pmiPortfolioIcon

	^SmalltalkSystemIcon 
		icon: PMIPortfolio icon
		description: 'PMI Portfolio Manager'
		openBlock: (MessageSend receiver: self selector: #openPortfolioBrowser)!

pmiProjectIcon

	^SmalltalkSystemIcon 
		icon: PMIProjectDefinition icon
		description: 'PMI Project Browser'
		openBlock: (MessageSend receiver: self selector: #showDefinitionBrowser)!

queryCommand: aCommandQuery
	| cmd |

	super queryCommand: aCommandQuery.

	cmd := aCommandQuery commandSymbol.
	cmd == #openPmbook ifTrue: [aCommandQuery isEnabled: true. ^true].
	cmd == #setPmbookPath ifTrue: [aCommandQuery isEnabled: true. ^true].
	cmd == #openPMIDefinitionBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #openPortfolioBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #openPMIBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchProcessesWithInput ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchProcessesWithInputArtifact ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchProcessesWithOutput ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchProcessesWithOutputArtifact ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchText ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchDocumentUpdateWithText ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchChangedRequestStatusUpdateWithText ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchChangeRequestWithText ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchDeliverableArtifactWithText ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchProductServiceWithText ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchValidatedChangeWithText ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #searchApprovedChangedWithText ifTrue: [aCommandQuery isEnabled: true.^true].
!

quizFolder

	^SmalltalkSystemFolder 
		icon: SmalltalkSystemFolder icon 
		description: 'Quiz Folder'!

toolsIcon

	^SmalltalkSystemIcon 
		icon: PMIToolOrTechnique icon
		description: 'Tools or Technique Browser'
		openBlock: (MessageSend receiver: self selector: #browseTool)!

treeBuilderIcon

	^SmalltalkSystemIcon 
		icon: ViewComposer icon
		description: 'Tree Builder'
		openBlock: (MessageSend receiver: self selector: #showTreeBuilder)!

treeListIcon

	^SmalltalkSystemIcon 
		icon: TreePresenter icon
		description: 'My Trees'
		openBlock: (MessageSend receiver: self selector: #showMyTrees)!

up

	folderPresenter up! !
!PMIBrowserShell categoriesFor: #artifactsIcon!public! !
!PMIBrowserShell categoriesFor: #createComponents!public! !
!PMIBrowserShell categoriesFor: #deliverablesIcon!public! !
!PMIBrowserShell categoriesFor: #groupsIcon!public! !
!PMIBrowserShell categoriesFor: #knowledgeAreaIcon!public! !
!PMIBrowserShell categoriesFor: #nonProcessQuizIcon!public! !
!PMIBrowserShell categoriesFor: #onViewOpened!public! !
!PMIBrowserShell categoriesFor: #pmbokIcon!public! !
!PMIBrowserShell categoriesFor: #pmiPortfolioIcon!public! !
!PMIBrowserShell categoriesFor: #pmiProjectIcon!public! !
!PMIBrowserShell categoriesFor: #queryCommand:!public! !
!PMIBrowserShell categoriesFor: #quizFolder!public! !
!PMIBrowserShell categoriesFor: #toolsIcon!public! !
!PMIBrowserShell categoriesFor: #treeBuilderIcon!public! !
!PMIBrowserShell categoriesFor: #treeListIcon!public! !
!PMIBrowserShell categoriesFor: #up!public! !

!PMIBrowserShell class methodsFor!

defaultModel

	^PMIProjectDefinition default!

icon

	^Icon fromId: 'ClassHierarchyDiagram.ico'!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  751 521 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 562 1 1 0 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 592 98 2 8 1140850688 131073 688 0 482 8 4278190080 0 7 0 0 0 688 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_PMI_Browser_toolbar 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 1 1 530 601 51 688 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 44 1 0 0 25 0 0 0] 98 0 530 193 193 0 27 410 832 98 25 0 592 98 2 8 1409288972 131137 1104 0 482 8 4278190080 0 519 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 530 193 193 0 1104 482 1184 8 4294902799 234 256 1072 234 256 98 2 8907 1115910 ##(Smalltalk.ToolbarIconButton)  8907 0 1104 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #up 8 'Upper Folder' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'Up.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 530 33 33 1 98 2 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 1104 3 0 1 1392 234 240 98 2 1616 1 0 1 0 530 33 33 530 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 866 202 208 98 2 930 960 98 2 530 601 1 530 317 51 1104 930 8 #updateSize 1072 1104 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 44 1 0 0 0 0 0 0 202 1 0 0 25 0 0 0] 98 0 1088 0 27 234 256 1072 0 866 202 208 98 1 930 960 98 2 530 1 1 530 917 51 592 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 202 1 0 0 25 0 0 0] 98 2 688 1104 1088 0 27 0 0 0 410 608 98 15 0 416 98 2 8 1140850688 131073 2160 0 0 0 7 0 0 0 2160 1180166 ##(Smalltalk.ProportionalLayout)  234 240 1072 32 234 256 98 2 410 8 ##(Smalltalk.ListView)  98 30 0 2160 98 2 8 1140936780 1025 2304 590662 2 ##(Smalltalk.ListModel)  202 208 1072 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  196934 1 ##(Smalltalk.RGB)  18583439 0 7 0 0 0 2304 0 8 4294903149 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin List Presenter' 8 'BasicListAbstract' 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] 8 #description 2528 7 257 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 530 65 65 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Column 1' 711 8 #left 2514 0 0 2546 2 1 2576 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] 2672 2848 7 257 0 8 ##(Smalltalk.SortedCollection)  459270 ##(Smalltalk.Message)  8 #yourself 98 0 0 2304 2784 3 0 0 8 #largeIcons 1072 0 131169 0 0 866 202 208 98 2 930 960 98 2 530 1 1 530 917 335 2304 930 8 #text: 98 1 8 'Column 1' 2304 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 202 1 0 0 167 0 0 0] 98 0 1088 0 27 8 'folder' 0 866 202 208 98 1 930 960 98 2 530 1 51 530 917 335 2160 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 202 1 0 0 192 0 0 0] 98 1 2304 1088 0 27 234 256 1072 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 4 265030 4 ##(Smalltalk.Menu)  0 16 98 5 983366 1 ##(Smalltalk.DividerMenuItem)  4097 984134 2 ##(Smalltalk.CommandMenuItem)  1 1410 8 #setPmbookPath 8 'Set PMBOK Path' 1025 1 0 0 0 3570 1 1410 8 #openPmbook 8 'Open PMBOK' 1 1 0 0 0 3538 4097 3570 1 1410 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 8553 0 0 3490 0 16 98 18 3570 1 1410 8 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 0 0 0 3570 1 1410 8 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 0 0 0 3538 4097 3570 1 1410 8 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 0 0 0 3570 1 1410 8 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 0 0 0 3538 4097 3570 1 1410 8 #searchText 8 'Search Text' 1 1 0 0 0 3538 4097 3570 1 1410 8 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 0 0 0 3570 1 1410 8 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 0 0 0 3570 1 1410 8 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 0 0 0 3570 1 1410 8 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 0 0 0 3570 1 1410 8 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 0 0 0 3570 1 1410 8 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 0 0 0 3570 1 1410 8 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 0 0 0 3538 4097 3570 1 1410 8 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 0 0 0 3570 1 1410 8 #searchNonCreatedInput 8 'Non Created Input' 1 1 0 0 0 8 'Search' 0 134217729 0 0 8653 0 0 3490 0 16 98 1 3570 1 1410 8 #openPortfolioBrowser 8 'Open PMI Portfolio Browser' 1 1 0 0 0 8 'Simulation' 0 134217729 0 0 8657 0 0 3570 1 1410 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 866 202 208 98 3 930 960 98 2 530 3199 21 530 949 501 416 930 3152 98 1 8 'PMI Browser' 416 930 8 #updateMenuBar 1072 416 1026 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 25 8 0 0 4 1 0 0] 98 2 2160 592 1088 0 27 )! !
!PMIBrowserShell class categoriesFor: #defaultModel!public! !
!PMIBrowserShell class categoriesFor: #icon!public! !
!PMIBrowserShell class categoriesFor: #resource_Default_view!public!resources-views! !

