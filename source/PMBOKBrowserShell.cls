"Filed out from Dolphin Smalltalk 7"!

PMBOKShell subclass: #PMBOKBrowserShell
	instanceVariableNames: 'folderPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKBrowserShell guid: (GUID fromString: '{7567aa31-f8dd-4dc9-b16e-9f558587e1f1}')!
PMBOKBrowserShell comment: ''!
!PMBOKBrowserShell categoriesForClass!MVP-Presenters! !
!PMBOKBrowserShell methodsFor!

artifactsIcon
	^SmalltalkSystemIcon
		icon: PMBOKArtifactDefinition icon
		description: 'Artifacts Browser'
		openBlock: (MessageSend receiver: self selector: #browseArtifacts)!

createComponents

	super createComponents.

	folderPresenter := self add: FolderPresenter new name: 'folder'.!

deliverablesIcon
	^SmalltalkSystemIcon
		icon: PMBOKDocumentDefinition icon
		description: 'Deliverables Browser'
		openBlock: (MessageSend receiver: self selector: #browseDeliverables)!

groupsIcon
	^SmalltalkSystemIcon
		icon: PMBOKManagementProcessGroup icon
		description: 'Browse Groups'
		openBlock: (MessageSend receiver: self selector: #browseGroups)!

knowledgeAreaIcon
	^SmalltalkSystemIcon
		icon: PMBOKKnowledgeArea icon
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
		icon: (Icon fromFile: 'papirus-team-app-32.ico')
		description: 'Open PMBOK'
		openBlock: (MessageSend receiver: self selector: #openPmbook)!

pmiPortfolioIcon
	^SmalltalkSystemIcon
		icon: PMBOKPortfolio icon
		description: 'PMBOK Portfolio Manager'
		openBlock: (MessageSend receiver: self selector: #openPortfolioBrowser)!

pmiProjectIcon
	^SmalltalkSystemIcon
		icon: PMBOKProjectDefinition icon
		description: 'PMBOK Project Browser'
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
		icon: PMBOKToolOrTechnique icon
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
!PMBOKBrowserShell categoriesFor: #artifactsIcon!public! !
!PMBOKBrowserShell categoriesFor: #createComponents!public! !
!PMBOKBrowserShell categoriesFor: #deliverablesIcon!public! !
!PMBOKBrowserShell categoriesFor: #groupsIcon!public! !
!PMBOKBrowserShell categoriesFor: #knowledgeAreaIcon!public! !
!PMBOKBrowserShell categoriesFor: #nonProcessQuizIcon!public! !
!PMBOKBrowserShell categoriesFor: #onViewOpened!public! !
!PMBOKBrowserShell categoriesFor: #pmbokIcon!public! !
!PMBOKBrowserShell categoriesFor: #pmiPortfolioIcon!public! !
!PMBOKBrowserShell categoriesFor: #pmiProjectIcon!public! !
!PMBOKBrowserShell categoriesFor: #queryCommand:!public! !
!PMBOKBrowserShell categoriesFor: #quizFolder!public! !
!PMBOKBrowserShell categoriesFor: #toolsIcon!public! !
!PMBOKBrowserShell categoriesFor: #treeBuilderIcon!public! !
!PMBOKBrowserShell categoriesFor: #treeListIcon!public! !
!PMBOKBrowserShell categoriesFor: #up!public! !

!PMBOKBrowserShell class methodsFor!

defaultModel
	^PMBOKProjectDefinition default!

icon

	^Icon fromId: 'ClassHierarchyDiagram.ico'!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 nil nil 8 #(13565952 65536) 416 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 328198 ##(Smalltalk.Point) 949 501 37 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 576 nil nil nil 7 nil nil nil 576 546 1 1 nil nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 576 34 2 8 1140850688 131073 656 nil 480 nil 7 nil nil nil 656 1180230 1 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_PMI_Browser_toolbar nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 514 1 1 514 601 51 656 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 44 1 0 0 25 0 0 0] 8 #() 514 193 193 nil 27 410 ##(Smalltalk.Toolbar) 34 25 nil 576 34 2 8 1409288972 131137 976 nil 480 nil 519 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 514 193 193 nil 976 480 8 1949831345 170 192 944 170 192 34 2 21717 1115206 1 ##(Smalltalk.ToolbarIconButton) 976 1 1180998 4 ##(Smalltalk.CommandDescription) #up 8 'Upper Folder' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'FolderUp.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 21717 34 2 1049158 1 ##(Smalltalk.ToolbarSeparator) 976 1 1216 nil nil 1 nil 514 33 33 514 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 754 138 144 34 2 818 #createAt:extent: 34 2 514 601 1 514 339 51 976 818 #updateSizePosted 944 976 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 44 1 0 0 0 0 0 0 213 1 0 0 25 0 0 0] 8 #() 960 nil 27 170 192 944 nil 754 138 144 34 1 818 #createAt:extent: 34 2 514 1 1 514 939 51 576 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 213 1 0 0 25 0 0 0] 34 2 656 976 960 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 1872 nil nil nil 7 nil nil nil 1872 1180166 ##(Smalltalk.ProportionalLayout) 170 176 944 false 170 192 34 2 410 ##(Smalltalk.ListView) 34 30 nil 1872 34 2 8 1140936780 1025 2016 590662 2 ##(Smalltalk.ListModel) 138 144 944 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 196934 1 ##(Smalltalk.RGB) 18583439 nil 7 nil nil nil 2016 nil 8 1949885807 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 2 1 106 8 'Dolphin List Presenter' 8 'BasicListAbstract' 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] #description 2224 7 257 nil ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil 514 65 65 nil nil 138 144 34 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Column 1' 711 #left 2210 0 nil 2242 2 1 2272 8 'doIt' 8 '[:item | item description]' 8 #[30 105 226 0 106] #description 2496 7 257 nil ##(Smalltalk.SortedCollection) 459270 ##(Smalltalk.Message) #yourself 8 #() nil 2016 2448 3 nil nil #largeIcons 944 nil 131169 nil 8 #(nil) 754 138 144 34 2 818 #createAt:extent: 34 2 514 1 1 514 939 353 2016 818 #text: 34 1 8 'Column 1' 2016 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 213 1 0 0 176 0 0 0] 8 #() 960 nil 27 8 'folder' nil 754 138 144 34 1 818 #createAt:extent: 34 2 514 1 51 514 939 353 1872 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 213 1 0 0 201 0 0 0] 34 1 2016 960 nil 27 170 192 944 nil 461638 4 ##(Smalltalk.MenuBar) nil true 34 4 265030 4 ##(Smalltalk.Menu) nil true 34 5 983366 1 ##(Smalltalk.DividerMenuItem) 4097 984134 2 ##(Smalltalk.CommandMenuItem) 1 1234 #setPmbookPath 8 'Set PMBOK Path' 1025 1 nil nil nil 3170 1 1234 #openPmbook 8 'Open PMBOK' 1 1 nil nil nil 3138 4097 3170 1 1234 #exit 8 'Exit' 1 1 nil nil nil 8 'File' nil 134217729 nil nil 21655 nil nil 3090 nil true 34 18 3170 1 1234 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 nil nil nil 3170 1 1234 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 nil nil nil 3138 4097 3170 1 1234 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 nil nil nil 3170 1 1234 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 nil nil nil 3138 4097 3170 1 1234 #searchText 8 'Search Text' 1 1 nil nil nil 3138 4097 3170 1 1234 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 nil nil nil 3170 1 1234 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 nil nil nil 3170 1 1234 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 nil nil nil 3170 1 1234 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 nil nil nil 3170 1 1234 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 nil nil nil 3170 1 1234 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 nil nil nil 3170 1 1234 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 nil nil nil 3138 4097 3170 1 1234 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 nil nil nil 3170 1 1234 #searchNonCreatedInput 8 'Non Created Input' 1 1 nil nil nil 8 'Search' nil 134217729 nil nil 21685 nil nil 3090 nil true 34 1 3170 1 1234 #openPortfolioBrowser 8 'Open PMI Portfolio Browser' 1 1 nil nil nil 8 'Simulation' nil 134217729 nil nil 21689 nil nil 3170 1 1234 #aboutPMIBrowser 8 'About PMI Browser' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil nil 1 nil nil nil nil 1 nil nil 754 138 144 34 3 818 #createAt:extent: 34 2 514 3059 21 514 971 521 416 818 #text: 34 1 8 'PMBOK Browser' 416 818 #updateMenuBar 944 416 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 249 5 0 0 10 0 0 0 222 7 0 0 14 1 0 0] 34 2 1872 576 960 nil 27 )! !
!PMBOKBrowserShell class categoriesFor: #defaultModel!public! !
!PMBOKBrowserShell class categoriesFor: #icon!public! !
!PMBOKBrowserShell class categoriesFor: #resource_Default_view!public!resources-views! !

