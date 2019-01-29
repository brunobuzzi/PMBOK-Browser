"Filed out from Dolphin Smalltalk 7"!

PMBOKShell subclass: #PMBOKProcessQuizShell
	instanceVariableNames: 'processQuizComposite processComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessQuizShell guid: (GUID fromString: '{c7b82d85-ecb3-4dfd-af1c-1b5740f9d3de}')!
PMBOKProcessQuizShell comment: ''!
!PMBOKProcessQuizShell categoriesForClass!MVP-Presenters! !
!PMBOKProcessQuizShell methodsFor!

createComponents
	super createComponents.
	processQuizComposite := self add: PMBOKProcessQuizComposite new name: 'processQuizComposite'.
	processComposite := self add: PMBOKProcessDefinitionComposite new name: 'processComposite'!

model: aPMIProcessQuiz

	super model: aPMIProcessQuiz.

	processQuizComposite model: aPMIProcessQuiz!

setProcessTo: aPMIDefinitionProcessOrNil
	aPMIDefinitionProcessOrNil ifNil: [^processComposite model: PMBOKProcessDefinition new].
	processComposite model: aPMIDefinitionProcessOrNil!

startCompleteTest

	processQuizComposite unsetInputCustomDrawBlock.
	processQuizComposite unsetOutputCustomDrawBlock.
	processQuizComposite unsetToolCustomDrawBlock.

	processQuizComposite setProcessAreaComboBackcolor: Color white.
	processQuizComposite setProcessGroupComboBackcolor: Color white.

	view invalidate.

	processQuizComposite startCompleteTest.!

startCustomTest
	| configuration randomProcess |
	randomProcess := processQuizComposite selectedProcessOrNil.
	self startCompleteTest.
	configuration := PMBOKCustomTestShell showModal.
	randomProcess := randomProcess
				ifNil: [processQuizComposite processes randomPeek]
				ifNotNil: 
					[:value |
					processQuizComposite selectProcess: value.
					value].
	(configuration at: #area) ifTrue: [processQuizComposite selectArea: randomProcess knowledgeArea].
	(configuration at: #group)
		ifTrue: [processQuizComposite selectGroup: randomProcess managementGroup].
	(configuration at: #inputs) ifTrue: [processQuizComposite inputsModel: randomProcess input].
	(configuration at: #tools)
		ifTrue: [processQuizComposite toolsModel: randomProcess toolsAndTechniques].
	(configuration at: #outputs) ifTrue: [processQuizComposite outputsModel: randomProcess output]!

testQuiz

	self model processToQuiz: processQuizComposite selectedProcessOrNil.

	self model processToQuiz ifNil: [^MessageBox notify: 'You have to select a Process !!'].

	processQuizComposite setInputCustomDrawBlock.
	processQuizComposite setOutputCustomDrawBlock.
	processQuizComposite setToolCustomDrawBlock.

	processQuizComposite setComboColors. 

	view invalidate.



	! !
!PMBOKProcessQuizShell categoriesFor: #createComponents!public! !
!PMBOKProcessQuizShell categoriesFor: #model:!public! !
!PMBOKProcessQuizShell categoriesFor: #setProcessTo:!public! !
!PMBOKProcessQuizShell categoriesFor: #startCompleteTest!public! !
!PMBOKProcessQuizShell categoriesFor: #startCustomTest!public! !
!PMBOKProcessQuizShell categoriesFor: #testQuiz!public! !

!PMBOKProcessQuizShell class methodsFor!

defaultModel
	^PMBOKProcessQuiz new!

icon

	^True icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 560 0 721158 ##(Smalltalk.SystemColor) 31 0 7 0 0 0 560 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 0 32 234 256 720 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 882 2129 51 560 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 40 4 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.ReferenceView) 98 14 0 560 98 2 8 1140850688 131073 992 0 482 8 4278190080 0 7 0 0 0 992 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Toolbar) 8 #resource_PMI_Browser_toolbar 0 754 202 208 98 1 818 848 98 2 882 1 1 882 2129 51 992 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 40 4 0 0 25 0 0 0] 720 882 193 193 0 27 1312 0 27 410 576 98 15 0 416 98 2 8 1140850688 131073 1328 0 642 31 0 7 0 0 0 1328 530 1 1 0 0 410 8 ##(Smalltalk.PushButton) 98 20 0 1328 98 2 8 1140924416 1 1424 0 0 0 7 0 0 0 1424 0 8 4294902971 1180998 4 ##(Smalltalk.CommandDescription) 8 #testQuiz 8 'Test' 1 1 0 0 32 0 0 0 754 202 208 98 3 818 848 98 2 882 1929 1 882 201 81 1424 818 8 #isEnabled: 98 1 32 1424 818 8 #text: 98 1 8 'Test' 1424 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 196 3 0 0 0 0 0 0 40 4 0 0 40 0 0 0] 98 0 1312 0 29 410 1440 98 20 0 1328 98 2 8 1140924416 1 1856 0 0 0 7 0 0 0 1856 0 8 4294902971 1522 8 #startCompleteTest 8 'Complete Test' 1 1 0 0 32 0 0 0 754 202 208 98 3 818 848 98 2 882 1 1 882 199 81 1856 818 1712 98 1 32 1856 818 1760 98 1 8 'Complete Test' 1856 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 99 0 0 0 40 0 0 0] 98 0 1312 0 29 0 234 256 720 0 754 202 208 98 1 818 848 98 2 882 1 1235 882 2129 81 1328 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 105 2 0 0 40 4 0 0 145 2 0 0] 98 3 1424 1856 410 1440 98 20 0 1328 98 2 8 1140924416 1 2400 0 0 0 7 0 0 0 2400 0 8 4294902971 1522 8 #startCustomTest 8 'Custom Test' 1 1 0 0 32 0 0 0 754 202 208 98 3 818 848 98 2 882 251 1 882 199 81 2400 818 1712 98 1 32 2400 818 1760 98 1 8 'Custom Test' 2400 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 125 0 0 0 0 0 0 0 224 0 0 0 40 0 0 0] 98 0 1312 0 29 1312 0 27 0 0 410 8 ##(Smalltalk.CardContainer) 98 16 0 416 98 2 8 1409286144 131073 2768 0 482 8 4278190080 0 7 0 0 0 2768 655878 ##(Smalltalk.CardLayout) 202 208 98 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Quiz' 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 6 1 8 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Quiz'' iconBlock: [True icon]' 8 #[29 30 34 112 31 161 106 194 105] 2976 3008 8 ##(Smalltalk.True) 8 #icon 8 #text:iconBlock: 3040 11 1 0 0 410 1008 98 14 0 2768 98 2 8 1140850688 131073 3200 0 482 8 4278190080 0 7 0 0 0 3200 1106 8 ##(Smalltalk.PMBOKProcessQuizComposite) 8 #resource_Default_view 0 754 202 208 98 1 818 848 98 2 882 9 49 882 2113 1129 3200 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 36 4 0 0 76 2 0 0] 720 1312 0 27 2946 2978 8 'Process Information' 3026 0 0 3058 6 1 3088 8 'doIt' 8 'CardLabel text: ''Process Information'' iconBlock: [PMIProcessDefinition icon]' 8 #[29 30 34 112 31 161 106 194 105] 2976 3520 8 ##(Smalltalk.PMBOKProcessDefinition) 3168 3184 3536 11 1 0 0 410 1008 98 14 0 2768 98 2 8 1140850688 131073 3632 0 482 8 4278190080 0 5 0 0 0 3632 1106 8 ##(Smalltalk.PMBOKProcessDefinitionComposite) 3328 0 754 202 208 98 1 818 848 98 2 882 9 49 882 2113 1129 3632 930 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 36 4 0 0 76 2 0 0] 720 1312 0 27 3200 234 256 98 4 3200 8 'processQuizComposite' 3632 8 'processComposite' 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 2768 98 2 8 1140916736 1 3968 590662 2 ##(Smalltalk.ListModel) 202 208 98 2 2992 3504 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 0 0 1 0 0 0 3968 0 8 4294902959 3026 0 0 918822 ##(Smalltalk.CompiledMethod) 2 3 8 ##(Smalltalk.ListControlView) 8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 8 #displayString 4160 7 257 0 3026 0 0 4178 2 3 8 ##(Smalltalk.IconicListAbstract) 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 4272 7 257 0 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 754 202 208 98 3 818 848 98 2 882 1 1 882 2129 1185 3968 818 8 #basicSelectionsByIndex: 98 1 98 1 3 3968 818 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 3968 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 40 4 0 0 80 2 0 0] 98 0 1312 0 27 754 202 208 98 1 818 848 98 2 882 1 51 882 2129 1185 2768 930 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 40 4 0 0 105 2 0 0] 98 3 3200 3632 3968 1312 0 27 234 256 720 0 461638 4 ##(Smalltalk.MenuBar) 0 16 98 4 265030 4 ##(Smalltalk.Menu) 0 16 98 5 983366 1 ##(Smalltalk.DividerMenuItem) 4097 984134 2 ##(Smalltalk.CommandMenuItem) 1 1522 8 #setPmbookPath 8 'Set PMBOK Path' 1025 1 0 0 0 4994 1 1522 8 #openPmbook 8 'Open PMBOK' 1 1 0 0 0 4962 4097 4994 1 1522 8 #exit 8 'Exit' 1 1 0 0 0 8 'File' 0 134217729 0 0 44685 0 0 4914 0 16 98 18 4994 1 1522 8 #searchProcessesWithInput 8 'Processes with Inputs' 1 1 0 0 0 4994 1 1522 8 #searchProcessesWithOutput 8 'Processes with Outputs' 1 1 0 0 0 4962 4097 4994 1 1522 8 #searchProcessesWithInputArtifact 8 'Processes with Input Artifact' 1 1 0 0 0 4994 1 1522 8 #searchProcessesWithOutputArtifact 8 'Processes with Output Artifact' 1 1 0 0 0 4962 4097 4994 1 1522 8 #searchText 8 'Search Text' 1 1 0 0 0 4962 4097 4994 1 1522 8 #searchApprovedChangedWithText 8 'Search Approved Changed with Text' 1 1 0 0 0 4994 1 1522 8 #searchChangeRequestWithText 8 'Search Change Request with Text' 1 1 0 0 0 4994 1 1522 8 #searchChangedRequestStatusUpdateWithText 8 'Search Changed Request Status Update with Text' 1 1 0 0 0 4994 1 1522 8 #searchDeliverableArtifactWithText 8 'Search Deliverable Artifact with Text' 1 1 0 0 0 4994 1 1522 8 #searchDocumentUpdateWithText 8 'Search Document Update with Text' 1 1 0 0 0 4994 1 1522 8 #searchProductServiceWithText 8 'Search Product/Service with Text' 1 1 0 0 0 4994 1 1522 8 #searchValidatedChangeWithText 8 'Search Validated Change with Text' 1 1 0 0 0 4962 4097 4994 1 1522 8 #searchNonReferencedOutput 8 'Non Referenced Output' 1 1 0 0 0 4994 1 1522 8 #searchNonCreatedInput 8 'Non Created Input' 1 1 0 0 0 8 'Search' 0 134217729 0 0 44715 0 0 4914 0 16 98 1 4994 1 1522 8 #openPortfolioBrowser 8 'Open PMI Portfolio Browser' 1 1 0 0 0 8 'Simulation' 0 134217729 0 0 44719 0 0 4994 1 1522 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 754 202 208 98 3 818 848 98 2 882 3199 21 882 2161 1431 416 818 1760 98 1 8 'PMI Quiz' 416 818 8 #updateMenuBar 720 416 930 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 119 10 0 0 213 2 0 0] 98 3 560 2768 1328 1312 0 27)! !
!PMBOKProcessQuizShell class categoriesFor: #defaultModel!public! !
!PMBOKProcessQuizShell class categoriesFor: #icon!public! !
!PMBOKProcessQuizShell class categoriesFor: #resource_Default_view!public!resources-views! !

