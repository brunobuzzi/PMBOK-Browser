﻿"Filed out from Dolphin Smalltalk 7"!

PMBOKShell subclass: #PMBOKInputShell
	instanceVariableNames: 'pmiComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKInputShell guid: (GUID fromString: '{f30329c4-5345-49ff-bbd9-350c08e2eb67}')!
PMBOKInputShell comment: ''!
!PMBOKInputShell categoriesForClass!MVP-Presenters! !
!PMBOKInputShell methodsFor!

createComponents
	super createComponents.
	pmiComposite := self add: PMBOKInputComposite new name: 'pmiInputComposite'!

model: aModel

	super model: aModel.

	pmiComposite model: aModel.! !
!PMBOKInputShell categoriesFor: #createComponents!public! !
!PMBOKInputShell categoriesFor: #model:!public! !

!PMBOKInputShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor) 31 0 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 544 0 0 0 7 0 0 0 544 514 1 1 0 0 410 8 ##(Smalltalk.PushButton) 98 20 0 544 98 2 8 1140924416 1 640 0 0 0 7 0 0 0 640 0 8 4294903137 1180998 4 ##(Smalltalk.CommandDescription) 8 #exit 8 'Close' 1 1 0 0 32 0 0 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 2 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1139 1 930 141 71 640 866 8 #text: 98 1 8 'Close' 640 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 57 2 0 0 0 0 0 0 127 2 0 0 35 0 0 0] 98 0 930 193 193 0 29 0 0 234 256 98 0 0 802 202 208 98 1 866 896 98 2 930 1 835 930 1279 71 544 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 161 1 0 0 127 2 0 0 196 1 0 0] 98 1 640 1104 0 27 0 0 410 560 98 15 0 416 98 2 8 1140850688 131073 1312 0 0 0 7 0 0 0 1312 514 1 1 410 8 ##(Smalltalk.ReferenceView) 98 14 0 1312 98 2 8 1140850688 131073 1392 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 7 0 0 0 1392 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Toolbar) 8 #resource_PMI_Browser_toolbar 0 802 202 208 98 1 866 896 98 2 930 1 1 930 1279 51 1392 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 127 2 0 0 25 0 0 0] 1136 1104 0 27 0 0 0 410 1408 98 14 0 1312 98 2 8 1140850688 131073 1728 0 1474 8 4278190080 0 7 0 0 0 1728 1522 8 ##(Smalltalk.PMBOKInputComposite) 8 #resource_Default_view 0 802 202 208 98 1 866 896 98 2 930 1 51 930 1279 785 1728 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 127 2 0 0 161 1 0 0] 1136 1104 0 27 234 256 98 2 1728 8 'pmiInputComposite' 0 802 202 208 98 1 866 896 98 2 930 1 1 930 1279 835 1312 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 127 2 0 0 161 1 0 0] 98 2 1728 1392 1104 0 27 234 256 1136 0 461638 4 ##(Smalltalk.MenuBar) 0 16 98 4 265030 4 ##(Smalltalk.Menu) 0 16 98 5 983366 1 ##(Smalltalk.DividerMenuItem) 4097 984134 2 ##(Smalltalk.CommandMenuItem) 1 738 8 #setPmbookPath 8 'Set PMBOK Path' 1025 1 0 0 0 2370 1 738 8 #openPmbook 8 'Open PMBOK' 1 1 0 0 0 2338 4097 2370 1 738 768 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 20337 0 0 2290 0 16 98 18 2370 1 738 8 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 0 0 0 2370 1 738 8 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 0 0 0 2338 4097 2370 1 738 8 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 0 0 0 2370 1 738 8 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 0 0 0 2338 4097 2370 1 738 8 #searchText 8 'Search Text' 1 1 0 0 0 2338 4097 2370 1 738 8 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 0 0 0 2370 1 738 8 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 0 0 0 2370 1 738 8 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 0 0 0 2370 1 738 8 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 0 0 0 2370 1 738 8 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 0 0 0 2370 1 738 8 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 0 0 0 2370 1 738 8 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 0 0 0 2338 4097 2370 1 738 8 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 0 0 0 2370 1 738 8 #searchNonCreatedInput 8 'Non Created Input' 1 1 0 0 0 8 'Search' 0 134217729 0 0 20367 0 0 2290 0 16 98 1 2370 1 738 8 #openPortfolioBrowser 8 'Open PMI Portfolio Browser' 1 1 0 0 0 8 'Simulation' 0 134217729 0 0 20371 0 0 2370 1 738 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 2 866 896 98 2 930 3199 21 930 1311 1021 416 866 8 #updateMenuBar 1136 416 1042 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 206 8 0 0 8 2 0 0] 98 2 1312 544 1104 0 27)! !
!PMBOKInputShell class categoriesFor: #resource_Default_view!public!resources-views! !

