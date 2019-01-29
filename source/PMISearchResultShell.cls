"Filed out from Dolphin Smalltalk 7"!

PMIShell subclass: #PMISearchResultShell
	instanceVariableNames: 'searchResultComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMISearchResultShell guid: (GUID fromString: '{4649e774-4eca-49a0-946a-0901979bf83f}')!
PMISearchResultShell comment: ''!
!PMISearchResultShell categoriesForClass!MVP-Presenters! !
!PMISearchResultShell methodsFor!

createArtifactDefinitionList

	searchResultComposite createArtifactDefinitionList!

createComponents

	super createComponents.

	searchResultComposite := self add: self defaultSearchComposite name: 'searchResultComposite'.!

createProcessListFor: aPMIElement

	searchResultComposite createProcessListFor: aPMIElement!

defaultSearchComposite

	self subclassResponsibility!

model: anOrderedCollection

	super model: anOrderedCollection.

	searchResultComposite model: anOrderedCollection.!

showProcessDefinition
 
	^self defaultSearchComposite showProcessDefinition! !
!PMISearchResultShell categoriesFor: #createArtifactDefinitionList!public! !
!PMISearchResultShell categoriesFor: #createComponents!public! !
!PMISearchResultShell categoriesFor: #createProcessListFor:!public! !
!PMISearchResultShell categoriesFor: #defaultSearchComposite!public! !
!PMISearchResultShell categoriesFor: #model:!public! !
!PMISearchResultShell categoriesFor: #showProcessDefinition!public! !

!PMISearchResultShell class methodsFor!

icon

	^Icon fromId: 'GoSearch.ico'!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.Toolbar)  98 25 0 416 98 2 8 1409288972 131137 560 0 482 8 4278190080 0 519 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 328198 ##(Smalltalk.Point)  193 193 0 560 482 656 8 4294903709 234 256 98 0 234 256 98 20 28211 1115910 ##(Smalltalk.ToolbarIconButton)  28211 0 560 1 1180998 4 ##(Smalltalk.CommandDescription)  8 #showDefinitionBrowser 8 'PMI Process Browser' 1 1 263494 3 ##(Smalltalk.Icon)  0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator)  8 'StsProjectEdition.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy)  8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap)  0 16 0 0 0 0 3 754 33 33 1 28213 882 28213 0 560 1 914 8 #openPortfolioBrowser 8 'Portfolio Browser' 1 1 978 0 16 1024 8 'Metaclass.ico' 1072 1106 0 16 0 0 0 0 3 754 33 33 1 28215 882 28215 0 560 1 914 8 #openPmbook 8 'Open PMBOK' 1 1 978 0 16 1024 8 'pdf.ico' 0 1106 0 16 0 0 0 0 3 754 33 33 1 28217 882 28217 0 560 1 914 8 #browseGroups 8 'Browse Groups' 1 1 978 0 16 1024 8 'MethodProtocol.ico' 1072 1106 0 16 0 0 0 0 3 754 33 33 1 28219 882 28219 0 560 1 914 8 #browseAreas 8 'Browse Knowledge Areas' 1 1 978 0 16 1024 8 'EnvironmentBrowserShell.ico' 1072 1106 0 16 0 0 0 0 3 754 33 33 1 28221 882 28221 0 560 1 914 8 #browseDeliverables 8 'Browse Deliverables' 1 1 978 0 16 1024 5 786694 ##(Smalltalk.ShellLibrary)  1106 0 16 0 0 0 0 3 754 33 33 1 28223 882 28223 0 560 1 914 8 #browseArtifacts 8 'Browse Artifacts' 1 1 978 0 16 1024 8 'MemoryManager.ico' 1072 1106 0 16 0 0 0 0 3 754 33 33 1 28225 882 28225 0 560 1 914 8 #browseTool 8 'Browse Tools and Techniques' 1 1 978 0 16 1024 8 'Class.ico' 1072 1106 0 16 0 0 0 0 3 754 33 33 1 28227 882 28227 0 560 1 914 8 #openQuizBrowser 8 'Processes Quiz' 1 1 978 0 16 1024 8 'True.ico' 1072 1106 0 16 0 0 0 0 3 754 33 33 1 28229 882 28229 0 560 1 914 8 #openNonQuizBrowser 8 'Non Processes Quiz' 1 1 978 0 16 1024 8 'True.ico' 1072 1106 0 16 0 0 0 0 3 754 33 33 1 98 10 896 1152 1280 1408 1536 1664 1808 1936 2064 2192 234 240 98 20 1376 5 1120 1 1248 3 1504 7 1632 9 1776 11 1904 13 2032 15 2160 17 2288 19 0 1 0 754 33 33 754 45 45 0 656198 1 ##(Smalltalk.FlowLayout)  1 1 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 754 1 1 754 1409 51 560 2498 8 #updateSize 832 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 2 0 0 25 0 0 0] 98 0 754 193 193 0 27 0 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 2704 0 482 8 4278190080 0 7 0 0 0 2704 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.PMISearchResultComposite)  8 #resource_Default_view 0 2434 202 208 98 1 2498 2528 98 2 754 1 51 754 1409 775 2704 2626 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 192 2 0 0 156 1 0 0] 832 2688 0 27 234 256 98 2 2704 8 'searchResultComposite' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 4 265030 4 ##(Smalltalk.Menu)  0 16 98 5 983366 1 ##(Smalltalk.DividerMenuItem)  4097 984134 2 ##(Smalltalk.CommandMenuItem)  1 914 8 #setPmbookPath 8 'Set PMBOK Path' 1025 1 0 0 0 3202 1 914 1312 8 'Open PMBOK' 1 1 0 0 0 3170 4097 3202 1 914 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 27751 0 0 3122 0 16 98 18 3202 1 914 8 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 0 0 0 3202 1 914 8 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 0 0 0 3170 4097 3202 1 914 8 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 0 0 0 3202 1 914 8 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 0 0 0 3170 4097 3202 1 914 8 #searchText 8 'Search Text' 1 1 0 0 0 3170 4097 3202 1 914 8 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 0 0 0 3202 1 914 8 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 0 0 0 3202 1 914 8 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 0 0 0 3202 1 914 8 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 0 0 0 3202 1 914 8 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 0 0 0 3202 1 914 8 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 0 0 0 3202 1 914 8 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 0 0 0 3170 4097 3202 1 914 8 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 0 0 0 3202 1 914 8 #searchNonCreatedInput 8 'Non Created Input' 1 1 0 0 0 8 'Search' 0 134217729 0 0 27781 0 0 3122 0 16 98 1 3202 1 914 1184 8 'Open PMI Portfolio Browser' 1 1 0 0 0 8 'Simulation' 0 134217729 0 0 27785 0 0 3202 1 914 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 2434 202 208 98 3 2498 2528 98 2 754 3199 21 754 1441 941 416 2498 8 #text: 98 1 8 'PMI Search Result' 416 2498 8 #updateMenuBar 832 416 2626 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 15 9 0 0 224 1 0 0] 98 2 2704 560 2688 0 27 )! !
!PMISearchResultShell class categoriesFor: #icon!public! !
!PMISearchResultShell class categoriesFor: #resource_Default_view!public!resources-views! !

