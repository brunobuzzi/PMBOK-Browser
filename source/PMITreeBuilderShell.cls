"Filed out from Dolphin Smalltalk 7"!

PMIShell subclass: #PMITreeBuilderShell
	instanceVariableNames: 'builderComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMITreeBuilderShell guid: (GUID fromString: '{57440ccb-c39c-47ce-a2b9-481cb4856ff4}')!
PMITreeBuilderShell comment: ''!
!PMITreeBuilderShell categoriesForClass!MVP-Presenters! !
!PMITreeBuilderShell methodsFor!

createComponents

	super createComponents.

	builderComposite := self add: PMITreeBuilderComposite new name: 'builderComposite'.!

model: aModel

	super model: aModel.

	builderComposite model: aModel!

newTree

	builderComposite model: PMITreeModel new! !
!PMITreeBuilderShell categoriesFor: #createComponents!public! !
!PMITreeBuilderShell categoriesFor: #model:!public! !
!PMITreeBuilderShell categoriesFor: #newTree!public! !

!PMITreeBuilderShell class methodsFor!

icon

	^TreePresenter icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 560 0 721158 ##(Smalltalk.SystemColor)  31 0 7 0 0 0 560 530 1 1 0 0 0 410 8 ##(Smalltalk.Toolbar)  98 25 0 560 98 2 8 1409288972 131137 688 0 482 8 4278190080 0 519 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 688 482 784 8 4294902895 234 256 98 0 234 256 98 4 59593 1246982 ##(Smalltalk.ToolbarSystemButton)  59593 0 688 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #newTree 8 'New Tree' 1 1 0 1 13 59591 1010 59591 0 688 1 1042 8 #saveTree 8 'Save Tree' 1 1 0 1 17 98 3 1104 1024 1050118 ##(Smalltalk.ToolbarSeparator)  0 0 688 3 0 1 234 240 98 2 1 1 0 1 0 882 33 33 882 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 882 1 1 882 101 51 688 1378 8 #updateSize 960 688 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 50 0 0 0 25 0 0 0] 98 0 882 193 193 0 27 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 1584 0 482 8 4278190080 0 7 0 0 0 1584 1180166 ##(Smalltalk.ResourceIdentifier)  704 8 #resource_PMI_Browser_toolbar 0 1314 202 208 98 1 1378 1408 98 2 882 101 1 882 1879 51 1584 1506 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 50 0 0 0 0 0 0 0 221 3 0 0 25 0 0 0] 960 1568 0 27 234 256 960 0 1314 202 208 98 1 1378 1408 98 2 882 1 1 882 1979 51 560 1506 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 221 3 0 0 25 0 0 0] 98 2 1584 688 1568 0 27 0 0 0 410 1600 98 14 0 416 98 2 8 1140850688 131073 2064 0 482 1680 0 7 0 0 0 2064 1698 8 ##(Smalltalk.PMITreeBuilderComposite)  8 #resource_Default_view 0 1314 202 208 98 1 1378 1408 98 2 882 1 51 882 1979 1185 2064 1506 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 221 3 0 0 105 2 0 0] 960 1568 0 27 234 256 98 2 2064 8 'builderComposite' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 4 265030 4 ##(Smalltalk.Menu)  0 16 98 5 983366 1 ##(Smalltalk.DividerMenuItem)  4097 984134 2 ##(Smalltalk.CommandMenuItem)  1 1042 8 #setPmbookPath 8 'Set PMBOK Path' 1025 1 0 0 0 2514 1 1042 8 #openPmbook 8 'Open PMBOK' 1 1 0 0 0 2482 4097 2514 1 1042 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 59643 0 0 2434 0 16 98 18 2514 1 1042 8 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 0 0 0 2514 1 1042 8 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 0 0 0 2482 4097 2514 1 1042 8 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 0 0 0 2514 1 1042 8 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 0 0 0 2482 4097 2514 1 1042 8 #searchText 8 'Search Text' 1 1 0 0 0 2482 4097 2514 1 1042 8 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 0 0 0 2514 1 1042 8 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 0 0 0 2514 1 1042 8 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 0 0 0 2514 1 1042 8 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 0 0 0 2514 1 1042 8 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 0 0 0 2514 1 1042 8 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 0 0 0 2514 1 1042 8 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 0 0 0 2482 4097 2514 1 1042 8 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 0 0 0 2514 1 1042 8 #searchNonCreatedInput 8 'Non Created Input' 1 1 0 0 0 8 'Search' 0 134217729 0 0 59673 0 0 2434 0 16 98 1 2514 1 1042 8 #openPortfolioBrowser 8 'Open PMI Portfolio Browser' 1 1 0 0 0 8 'Simulation' 0 134217729 0 0 59677 0 0 2514 1 1042 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 1314 202 208 98 3 1378 1408 98 2 882 3199 21 882 2011 1351 416 1378 8 #text: 98 1 8 'PMI Tree Builder' 416 1378 8 #updateMenuBar 960 416 1506 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 44 10 0 0 173 2 0 0] 98 2 560 2064 1568 0 27 )! !
!PMITreeBuilderShell class categoriesFor: #icon!public! !
!PMITreeBuilderShell class categoriesFor: #resource_Default_view!public!resources-views! !

