"Filed out from Dolphin Smalltalk 7"!

PMBOKChooseQuizShell subclass: #PMBOKGroupChooseQuizShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKGroupChooseQuizShell guid: (GUID fromString: '{30f5ad01-6f65-455f-8507-0bc2b378d331}')!
PMBOKGroupChooseQuizShell comment: ''!
!PMBOKGroupChooseQuizShell categoriesForClass!MVP-Presenters! !
!PMBOKGroupChooseQuizShell methodsFor!

createComponents
	super createComponents.
	quizComposite := self add: PMBOKGroupChooseQuizComposite new name: 'composite'!

model: aModel

	super model: aModel.

	quizComposite model: aModel.! !
!PMBOKGroupChooseQuizShell categoriesFor: #createComponents!public! !
!PMBOKGroupChooseQuizShell categoriesFor: #model:!public! !

!PMBOKGroupChooseQuizShell class methodsFor!

defaultModel
	^PMBOKGroupChooseQuiz new!

icon
	^PMBOKManagementProcessGroup icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor) 31 0 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 544 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 7 0 0 0 544 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Toolbar) 8 #resource_PMI_Browser_toolbar 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 866 1109 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 42 2 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 560 98 14 0 416 98 2 8 1140850688 131073 992 0 626 8 4278190080 0 7 0 0 0 992 674 8 ##(Smalltalk.PMBOKGroupChooseQuizComposite) 8 #resource_Default_view 0 738 202 208 98 1 802 832 98 2 866 1 51 866 1109 825 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 42 2 0 0 181 1 0 0] 960 976 0 27 234 256 98 2 992 8 'composite' 0 461638 4 ##(Smalltalk.MenuBar) 0 16 98 4 265030 4 ##(Smalltalk.Menu) 0 16 98 5 983366 1 ##(Smalltalk.DividerMenuItem) 4097 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) 8 #setPmbookPath 8 'Set PMBOK Path' 1025 1 0 0 0 1458 1 1490 8 #openPmbook 8 'Open PMBOK' 1 1 0 0 0 1426 4097 1458 1 1490 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 15877 0 0 1378 0 16 98 18 1458 1 1490 8 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 0 0 0 1458 1 1490 8 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 0 0 0 1426 4097 1458 1 1490 8 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 0 0 0 1458 1 1490 8 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 0 0 0 1426 4097 1458 1 1490 8 #searchText 8 'Search Text' 1 1 0 0 0 1426 4097 1458 1 1490 8 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 0 0 0 1458 1 1490 8 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 0 0 0 1458 1 1490 8 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 0 0 0 1458 1 1490 8 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 0 0 0 1458 1 1490 8 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 0 0 0 1458 1 1490 8 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 0 0 0 1458 1 1490 8 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 0 0 0 1426 4097 1458 1 1490 8 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 0 0 0 1458 1 1490 8 #searchNonCreatedInput 8 'Non Created Input' 1 1 0 0 0 8 'Search' 0 134217729 0 0 15907 0 0 1378 0 16 98 1 1458 1 1490 8 #openPortfolioBrowser 8 'Open PMI Portfolio Browser' 1 1 0 0 0 8 'Simulation' 0 134217729 0 0 15911 0 0 1458 1 1490 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 3199 21 866 1141 991 416 802 8 #text: 98 1 8 'PMI Group Choose Quiz' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 121 8 0 0 249 1 0 0] 98 2 992 544 976 0 27)! !
!PMBOKGroupChooseQuizShell class categoriesFor: #defaultModel!public! !
!PMBOKGroupChooseQuizShell class categoriesFor: #icon!public! !
!PMBOKGroupChooseQuizShell class categoriesFor: #resource_Default_view!public!resources-views! !

