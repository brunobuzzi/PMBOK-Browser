"Filed out from Dolphin Smalltalk 7"!

PMBOKShell subclass: #PMBOKPortfolioBrowserShell
	instanceVariableNames: 'porfolioComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKPortfolioBrowserShell guid: (GUID fromString: '{adfe64fb-720d-44c7-adf5-8258c3943abe}')!
PMBOKPortfolioBrowserShell comment: ''!
!PMBOKPortfolioBrowserShell categoriesForClass!MVP-Presenters! !
!PMBOKPortfolioBrowserShell methodsFor!

createComponents
	super createComponents.
	porfolioComposite := self add: PMBOKPortfolioBrowserComposite new name: 'porfolioComposite'!

model: aCollectionOfPortfolios

	super model: aCollectionOfPortfolios.

	porfolioComposite model: aCollectionOfPortfolios.! !
!PMBOKPortfolioBrowserShell categoriesFor: #createComponents!public! !
!PMBOKPortfolioBrowserShell categoriesFor: #model:!public! !

!PMBOKPortfolioBrowserShell class methodsFor!

defaultModel

	^OrderedCollection new!

icon
	^PMBOKPortfolio icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.PMBOKPortfolioBrowserComposite) 8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 930 1869 1165 624 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 166 3 0 0 70 2 0 0] 576 930 193 193 0 27 8 'porfolioComposite' 0 461638 4 ##(Smalltalk.MenuBar) 0 16 98 4 265030 4 ##(Smalltalk.Menu) 0 16 98 5 983366 1 ##(Smalltalk.DividerMenuItem) 4097 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) 8 #setPmbookPath 8 'Set PMBOK Path' 1025 1 0 0 0 1186 1 1218 8 #openPmbook 8 'Open PMBOK' 1 1 0 0 0 1154 4097 1186 1 1218 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 44601 0 0 1106 0 16 98 18 1186 1 1218 8 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 0 0 0 1186 1 1218 8 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 0 0 0 1154 4097 1186 1 1218 8 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 0 0 0 1186 1 1218 8 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 0 0 0 1154 4097 1186 1 1218 8 #searchText 8 'Search Text' 1 1 0 0 0 1154 4097 1186 1 1218 8 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 0 0 0 1186 1 1218 8 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 0 0 0 1186 1 1218 8 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 0 0 0 1186 1 1218 8 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 0 0 0 1186 1 1218 8 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 0 0 0 1186 1 1218 8 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 0 0 0 1186 1 1218 8 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 0 0 0 1154 4097 1186 1 1218 8 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 0 0 0 1186 1 1218 8 #searchNonCreatedInput 8 'Non Created Input' 1 1 0 0 0 8 'Search' 0 134217729 0 0 44631 0 0 1106 0 16 98 1 1186 1 1218 8 #openPortfolioBrowser 8 'Open PMI Portfolio Browser' 1 1 0 0 0 8 'Simulation' 0 134217729 0 0 44635 0 0 1186 1 1218 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 3199 21 930 1901 1281 416 866 8 #text: 98 1 8 'PMI Porfolios Browser' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 245 9 0 0 138 2 0 0] 98 1 624 1024 0 27)! !
!PMBOKPortfolioBrowserShell class categoriesFor: #defaultModel!public! !
!PMBOKPortfolioBrowserShell class categoriesFor: #icon!public! !
!PMBOKPortfolioBrowserShell class categoriesFor: #resource_Default_view!public!resources-views! !

