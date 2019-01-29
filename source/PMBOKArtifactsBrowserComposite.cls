"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKArtifactsBrowserComposite
	instanceVariableNames: 'artifactsPresenter inputProcessesPresenter inputPresenter outputProcessesPresenter outputPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKArtifactsBrowserComposite guid: (GUID fromString: '{bd6a8105-44e4-4236-a436-4d593cb1ac90}')!
PMBOKArtifactsBrowserComposite comment: ''!
!PMBOKArtifactsBrowserComposite categoriesForClass!MVP-Presenters! !
!PMBOKArtifactsBrowserComposite methodsFor!

createComponents

	super createComponents.

	artifactsPresenter := self add: ListPresenter new name: 'artifacts'.
	inputProcessesPresenter := self add: ListPresenter new name: 'inputProcesses'.
	outputProcessesPresenter := self add: ListPresenter new name: 'outputProcesses'.
	inputPresenter := self add: ListPresenter new name: 'input'.
	outputPresenter := self add: ListPresenter new name: 'output'.!

createSchematicWiring

	super createSchematicWiring.

	artifactsPresenter when: #selectionChanged send: #onArtifactChanged to: self.

	inputProcessesPresenter when: #selectionChanged send: #onInputProcessChanged to: self;
		when: #leftButtonDoubleClicked: send: #onInputProcessDoubleCliked: to: self.

	outputProcessesPresenter when: #selectionChanged send: #onOuputProcessChanged to: self;
		when: #leftButtonDoubleClicked: send: #onOutputProcessDoubleCliked: to: self.!

model: anOrderedCollection

	super model: anOrderedCollection.

	artifactsPresenter model: (ListModel on: anOrderedCollection)!

onArtifactChanged

	artifactsPresenter hasSelection ifFalse: [inputProcessesPresenter model: ListModel new.  inputPresenter model: ListModel new.
		outputProcessesPresenter model: ListModel new. ^outputPresenter model: ListModel new].

	inputProcessesPresenter model: (ListModel on: (self projectModel getProcessesWithInputArtifact: artifactsPresenter selection)).
	outputProcessesPresenter model: (ListModel on: (self projectModel getProcessesWithOutputArtifact: artifactsPresenter selection)).
	!

onInputProcessChanged

	inputProcessesPresenter hasSelection ifFalse: [^inputPresenter model: ListModel new.].

	inputPresenter model: (ListModel on: (inputProcessesPresenter selection input select: [:each | each class == artifactsPresenter selection])).!

onInputProcessDoubleCliked: aMouseEvent

	inputProcessesPresenter hasSelection ifFalse: [^self].

	inputProcessesPresenter selection show!

onOuputProcessChanged

	outputProcessesPresenter hasSelection ifFalse: [^outputPresenter model: ListModel new.].

	outputPresenter model: (ListModel on: (outputProcessesPresenter selection output select: [:each | each class == artifactsPresenter selection])).!

onOutputProcessDoubleCliked: aMouseEvent

	outputProcessesPresenter hasSelection ifFalse: [^self].

	outputProcessesPresenter selection show! !
!PMBOKArtifactsBrowserComposite categoriesFor: #createComponents!public! !
!PMBOKArtifactsBrowserComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKArtifactsBrowserComposite categoriesFor: #model:!public! !
!PMBOKArtifactsBrowserComposite categoriesFor: #onArtifactChanged!public! !
!PMBOKArtifactsBrowserComposite categoriesFor: #onInputProcessChanged!public! !
!PMBOKArtifactsBrowserComposite categoriesFor: #onInputProcessDoubleCliked:!public! !
!PMBOKArtifactsBrowserComposite categoriesFor: #onOuputProcessChanged!public! !
!PMBOKArtifactsBrowserComposite categoriesFor: #onOutputProcessDoubleCliked:!public! !

!PMBOKArtifactsBrowserComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 656 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 341 818 1951 971 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 170 0 0 0 207 3 0 0 143 2 0 0] 98 3 410 432 98 15 0 560 98 2 8 1140850688 131073 928 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 928 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 432 98 15 0 928 98 2 8 1140850688 131073 1088 0 0 0 5 0 0 0 1088 498 234 240 656 16 234 256 98 4 410 8 ##(Smalltalk.ReferenceView)  98 14 0 1088 98 2 8 1140850688 131073 1216 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1216 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_PMI_Process_list 0 690 202 208 98 1 754 784 98 2 818 1 1 818 887 421 1216 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 1 0 0 210 0 0 0] 656 818 193 193 0 27 8 'inputProcesses' 410 8 ##(Smalltalk.ListView)  98 30 0 1088 98 2 8 1409355853 1025 1584 590662 2 ##(Smalltalk.ListModel)  202 208 656 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  1298 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 15 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #browseProcessWithInput 8 'Browse Process with Input' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1826 1 1858 8 #openCreatorProcess 8 'Open Creator Process' 1 1 0 0 0 1922 4097 1826 1 1858 8 #openAllInputs 8 'Open All' 1 1 0 0 0 1922 4097 1826 1 1858 8 #addTemplateToInput 8 'Add Template' 1 1 0 0 0 1826 1 1858 8 #removeTemplateFromInput 8 'Remove Template' 1 1 0 0 0 1778 0 16 98 0 8 'Templates' 8 #inputTemplates 134217729 0 0 0 0 0 1922 4097 1826 1 1858 8 #addInput 8 'Add Input' 1 1 0 0 0 1826 1 1858 8 #removeInput 8 'Remove Input' 1 1 0 0 0 1922 4097 1826 1 1858 8 #addInputArtifact 8 'Add Artifact' 1 1 0 0 0 1826 1 1858 8 #removeInputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 1584 0 8 4294902895 459270 ##(Smalltalk.Message)  8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn)  8 'Input' 661 8 #left 2626 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 2848 2896 7 513 0 0 0 1584 0 1 0 2882 0 0 2914 7 1 2880 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] 8 #item 8 #deliverableIsOrganizationAsset 8 #forecolor 327734 ##(Smalltalk.Float)  8 51 51 51 51 51 51 251 63 8 #fadedBy: 8 #forecolor: 3040 7 257 0 2770 8 'Creator Process' 201 2816 2626 8 #outputProcessName 98 0 2882 0 0 2914 2 1 2624 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] 3280 3312 7 513 0 0 0 1584 0 1 0 0 2770 8 'Type' 201 2816 2626 8 #printType 98 0 2882 0 0 2914 2 1 2624 8 'doIt' 8 '[:a : b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 3440 3472 7 513 0 0 0 1584 0 1 0 0 8 #report 656 0 131169 0 0 690 202 208 98 3 754 784 98 2 818 1 439 818 887 423 1584 754 8 #contextMenu: 98 1 1792 1584 754 8 #text: 98 1 8 'Input' 1584 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 219 0 0 0 187 1 0 0 174 1 0 0] 98 0 1552 0 27 8 'input' 0 690 202 208 98 1 754 784 98 2 818 41 71 818 887 861 1088 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 207 1 0 0 209 1 0 0] 98 3 1216 410 8 ##(Smalltalk.Splitter)  98 12 0 1088 98 2 8 1140850688 1 4016 0 1298 8 4278190080 0 517 0 0 0 4016 690 202 208 98 1 754 784 98 2 818 1 421 818 887 19 4016 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 210 0 0 0 187 1 0 0 219 0 0 0] 98 0 1552 0 27 1584 1552 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 41 4322 8 #fixedParentRight -39 4322 8 #fixedParentTop 71 4322 8 #fixedParentBottom -39 410 8 ##(Smalltalk.GroupBox)  98 14 0 928 98 2 8 1140850695 65 4464 0 1298 8 4278190080 0 5 0 0 0 4464 0 8 4294901905 690 202 208 98 2 754 784 98 2 818 21 21 818 927 931 4464 754 3744 98 1 8 'Input Processes' 4464 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 217 1 0 0 219 1 0 0] 98 0 1552 0 27 4290 4336 21 4368 -19 4400 21 4432 -19 234 256 656 0 690 202 208 98 1 754 784 98 2 818 1 1 818 967 971 928 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 227 1 0 0 229 1 0 0] 98 2 1088 4464 1552 0 27 410 4032 98 12 0 560 98 2 8 1140850688 1 4992 0 1298 8 4278190080 0 517 0 0 0 4992 690 202 208 98 1 754 784 98 2 818 967 1 818 19 971 4992 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 227 1 0 0 0 0 0 0 236 1 0 0 229 1 0 0] 98 0 1552 0 27 410 432 98 15 0 560 98 2 8 1140850688 131073 5248 0 994 31 0 5 0 0 0 5248 1026 234 240 98 4 410 432 98 15 0 5248 98 2 8 1140850688 131073 5376 0 0 0 5 0 0 0 5376 498 234 240 656 16 234 256 98 4 410 1600 98 30 0 5376 98 2 8 1409355853 1025 5504 1666 202 208 656 0 1728 1298 1760 0 5 1778 0 16 98 15 1826 1 1858 8 #browseProcessWithOutput 8 'Browse Process with Output' 1 1 0 0 0 1922 4097 1826 1 1858 8 #openAllOutputs 8 'Open All' 1 1 0 0 0 1922 4097 1826 1 1858 8 #addTemplateToOutput 8 'Add Template' 1 1 0 0 0 1826 1 1858 8 #removeTemplateFromOutput 8 'Remove Template' 1 1 0 0 0 1778 0 16 98 0 8 'Templates' 8 #outputTemplates 134217729 0 0 0 0 0 1922 4097 1778 0 16 98 0 8 'Images' 8 #outputImages 134217729 0 0 0 0 0 1922 4097 1826 1 1858 8 #addOutput 8 'Add Output' 1 1 0 0 0 1826 1 1858 8 #removeOutput 8 'Remove Output' 1 1 0 0 0 1922 4097 1826 1 1858 8 #addOutputArtifact 8 'Add Artifact' 1 1 0 0 0 1826 1 1858 8 #removeOutputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5504 0 8 4294902895 2626 2656 98 0 2688 2720 0 0 0 0 0 0 202 208 98 2 2770 8 'Output' 661 2816 2626 2848 98 0 2882 0 0 2914 2 1 2944 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 2848 6528 7 513 0 0 0 5504 0 1 0 0 2770 8 'Type' 201 2816 2626 3440 98 0 2882 0 0 2914 2 1 2624 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 3440 6672 7 513 0 0 0 5504 0 1 0 0 3552 656 0 131169 0 0 690 202 208 98 3 754 784 98 2 818 1 439 818 887 423 5504 754 3696 98 1 5616 5504 754 3744 98 1 8 'Output' 5504 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 219 0 0 0 187 1 0 0 174 1 0 0] 98 0 1552 0 27 8 'output' 410 1232 98 14 0 5376 98 2 8 1140850688 131073 7008 0 1298 1328 0 5 0 0 0 7008 1346 1376 1392 0 690 202 208 98 1 754 784 98 2 818 1 1 818 887 421 7008 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 187 1 0 0 210 0 0 0] 656 1552 0 27 8 'outputProcesses' 0 690 202 208 98 1 754 784 98 2 818 41 71 818 887 861 5376 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 207 1 0 0 209 1 0 0] 98 3 7008 410 4032 98 12 0 5376 98 2 8 1140850688 1 7424 0 1298 4112 0 517 0 0 0 7424 690 202 208 98 1 754 784 98 2 818 1 421 818 887 19 7424 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 210 0 0 0 187 1 0 0 219 0 0 0] 98 0 1552 0 27 5504 1552 0 27 4290 4336 41 4368 -39 4400 71 4432 -39 410 4480 98 14 0 5248 98 2 8 1140850695 65 7680 0 1298 4560 0 5 0 0 0 7680 0 8 4294901905 690 202 208 98 2 754 784 98 2 818 21 21 818 927 931 7680 754 3744 98 1 8 'Output Processes' 7680 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 217 1 0 0 219 1 0 0] 98 0 1552 0 27 4290 4336 21 4368 -19 4400 21 4432 -19 234 256 656 0 690 202 208 98 1 754 784 98 2 818 985 1 818 967 971 5248 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 236 1 0 0 0 0 0 0 207 3 0 0 229 1 0 0] 98 2 5376 7680 1552 0 27 1552 0 27 7 16 234 256 656 0 690 202 208 98 1 754 784 98 2 818 3199 21 818 1951 1311 416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 14 10 0 0 153 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 8352 0 0 0 5 0 0 0 8352 498 234 240 656 32 234 256 98 2 410 1600 98 30 0 8352 98 2 8 1409355853 1025 8480 1666 202 208 656 0 1728 1298 8 4278190080 0 5 0 0 0 8480 0 8 4294902895 2626 3440 98 0 2688 2720 0 0 0 0 0 0 202 208 98 1 2770 8 'Type' 601 2816 2626 3440 8640 8 ##(Smalltalk.SortedCollection)  0 0 8480 0 1 0 0 3552 656 0 131169 0 0 690 202 208 98 2 754 784 98 2 818 1 1 818 1951 323 8480 754 3744 98 1 8 'Type' 8480 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 207 3 0 0 161 0 0 0] 98 0 1552 0 27 8 'artifacts' 0 690 202 208 98 1 754 784 98 2 818 1 1 818 1951 323 8352 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 207 3 0 0 161 0 0 0] 98 1 8480 1552 0 27 410 4032 98 12 0 416 98 2 8 1140850688 1 9136 0 1298 5072 0 517 0 0 0 9136 690 202 208 98 1 754 784 98 2 818 1 323 818 1951 19 9136 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 161 0 0 0 207 3 0 0 170 0 0 0] 98 0 1552 0 27 560 1552 0 27 )! !
!PMBOKArtifactsBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

