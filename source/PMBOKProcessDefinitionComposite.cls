"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKProcessDefinitionComposite
	instanceVariableNames: 'processDescriptionPresenter inputsPresenter inputDescriptionPresenter toolsPresenter outputsPresenter toolDescriptionPresenter outputDescriptionPresenter processImagePresenter inputDeliverableDescriptionPresenter outputDeliverableDescriptionPresenter inputTreePresenter outputTreePresenter inputDependenciesInputListPresenter inputDependenciesOutputListPresenter outputDependenciesInputListPresenter outputDependenciesOutputListPresenter toolSpecificDescriptionPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessDefinitionComposite guid: (GUID fromString: '{1eb8e633-389d-4151-a039-e70be5b753db}')!
PMBOKProcessDefinitionComposite comment: ''!
!PMBOKProcessDefinitionComposite categoriesForClass!MVP-Presenters! !
!PMBOKProcessDefinitionComposite methodsFor!

addInput
	| input |

	input := DetalleDeOpciones listaCon: self projectModel deliverables para: 'PMI Deliverable list'.
	input ifNil: [^self].
	input := input first asInput.
	self model addInput: input.
	inputsPresenter model: (ListModel on: self model input).

	inputsPresenter selection: input ifAbsent: []!

addInputArtifact
	| artifact artifactName |
	artifact := DetalleDeOpciones
				listaCon: (PMBOKArtifactDefinition allSubclasses collect: [:each | each new])
				para: 'PMI Artifacts types'
				titulo: 'Select Artifact Type'.
	artifact ifNil: [^self].
	artifactName := (Prompter prompt: 'Enter Artifact Name' caption: 'PMI Browser')
				ifNil: [^nil]
				ifNotNil: [:value | value].
	artifactName isEmpty ifTrue: [^self].
	artifact := artifact first.
	artifact name: artifactName.
	self model addInput: artifact.
	inputsPresenter model: (ListModel on: self model input).
	inputsPresenter selection: artifact ifAbsent: []!

addOutput
	| output |

	output := DetalleDeOpciones listaCon: self projectModel deliverables para: 'PMI Deliverable list'.
	output ifNil: [^self].
	output := output first asOutput.
	self model addOutput: output.
	outputsPresenter model: (ListModel on: self model output).

	outputsPresenter selection: output ifAbsent: []!

addOutputArtifact
	| artifact artifactName |
	artifact := DetalleDeOpciones
				listaCon: (PMBOKArtifactDefinition allSubclasses collect: [:each | each new])
				para: 'PMI Artifacts types'
				titulo: 'Select Artifact Type'.
	artifact ifNil: [^self].
	artifactName := (Prompter prompt: 'Enter Artifact Name' caption: 'PMI Browser')
				ifNil: [^nil]
				ifNotNil: [:value | value].
	artifactName isEmpty ifTrue: [^self].
	artifact := artifact first.
	artifact name: artifactName.
	self model addOutput: artifact.
	outputsPresenter model: (ListModel on: self model output).
	outputsPresenter selection: artifact ifAbsent: []!

addTemplate: pathFile to: aDeliverable

	[File copy: pathFile to: (model templatesPath, (File splitFilenameFrom: pathFile))] on: Error do: [:ex | ^MessageBox notify: ex description].

	aDeliverable addTemplate: (File splitFilenameFrom: pathFile).!

addTemplateToInput
	| file deliverable |

	inputsPresenter hasSelection ifFalse: [^self].

	deliverable := inputsPresenter selection deliverable.
	file :=  ((FileOpenDialog new)
				fileTypes: #(#('All Documents (*.*)' '*.*'));
				caption: 'Import Document';
				showModal) ifNotNil: [:value | value] ifNil: [^nil].

	self addTemplate: file to: deliverable.!

addTemplateToOutput
	| file deliverable |

	outputsPresenter hasSelection ifFalse: [^self].

	deliverable := outputsPresenter selection deliverable.
	file :=  ((FileOpenDialog new)
				fileTypes: #(#('All Documents (*.*)' '*.*'));
				caption: 'Import Document';
				showModal) ifNotNil: [:value | value] ifNil: [^nil].

	self addTemplate: file to: deliverable.!

addTool
	| tool |

	tool := DetalleDeOpciones listaCon: self projectModel toolsAndTechniques para: 'PMI Tools and Techniques list'.
	tool ifNil: [^self].
	tool := tool first.
	self model addToolOrTechnique: tool.
	toolsPresenter model: (ListModel on: self model toolsAndTechniques).

	toolsPresenter selection: tool ifAbsent: []!

browseProcessWithInput

	self topShell showProcesses: (self projectModel getProcessesWithInput: inputsPresenter selection) 
		caption: 'Processes with Input <', inputsPresenter selection name, '>'
		searchedElement: inputsPresenter selection!

browseProcessWithOutput

	self topShell showProcesses: (self projectModel getProcessesWithOutput: outputsPresenter selection) 
		caption: 'Processes with Output <', outputsPresenter selection name, '>'
		searchedElement: outputsPresenter selection!

createComponents

	super createComponents.

	processDescriptionPresenter := self add: RichTextComposite new name: 'processDescription'.
	inputsPresenter := self add: ListPresenter new name: 'inputs'.
	inputDescriptionPresenter := self add: RichTextComposite new name: 'inputDescription'.
	toolsPresenter := self add: ListPresenter new name: 'tools'.
	toolDescriptionPresenter := self add: RichTextComposite new name: 'toolDescription'.
	outputsPresenter := self add: ListPresenter new name: 'outputs'.
	outputDescriptionPresenter := self add: RichTextComposite new name: 'outputDescription'.
	processImagePresenter := self add: ImagePresenter new name: 'processImage'.
	inputDeliverableDescriptionPresenter := self add: RichTextComposite new name: 'inputDeliverableDescription'.
	outputDeliverableDescriptionPresenter := self add: RichTextComposite new name: 'outputDeliverableDescription'.
	inputTreePresenter := self add: TreePresenter new name: 'inputTree'.
	outputTreePresenter := self add: TreePresenter new name: 'outputTree'.
	inputDependenciesInputListPresenter := self add: ListPresenter new name: 'inputDependenciesInputList'.
	inputDependenciesOutputListPresenter := self add: ListPresenter new name: 'inputDependenciesOutputList'.
	outputDependenciesInputListPresenter := self add: ListPresenter new name: 'outputDependenciesInputList'.
	outputDependenciesOutputListPresenter := self add: ListPresenter new name: 'outputDependenciesOutputList'.
	toolSpecificDescriptionPresenter := self add: RichTextComposite new name: 'toolSpecificDescription'.
!

createSchematicWiring

	super createSchematicWiring.

	processImagePresenter when: #leftButtonDoubleClicked: send: #onImageDoubleClicked: to: self.

	inputsPresenter when: #selectionChanged send: #onInputSelected to: self;
		when: #leftButtonDoubleClicked: send: #onInputDoubleClicked: to: self.

	toolsPresenter when: #selectionChanged send: #onToolSelected to: self;
		when: #leftButtonDoubleClicked: send: #onToolDoubleClicked:  to: self. 

	outputsPresenter when: #selectionChanged send: #onOutputSelected to: self;
		when: #leftButtonDoubleClicked: send: #onOutputDoubleClicked: to: self.

	inputTreePresenter when: #selectionChanged send: #onInputTreeChanged to: self;
		when: #leftButtonDoubleClicked: send: #onInputTreeDoubleClicked:  to: self.

	outputTreePresenter when: #selectionChanged send: #onOutputTreeChanged to: self;
		when: #leftButtonDoubleClicked: send: #onOutputTreeDoubleClicked:  to: self.

	inputDependenciesInputListPresenter when: #leftButtonDoubleClicked: send: #onInputDependenciesInputClicked: to: self.
	inputDependenciesOutputListPresenter when: #leftButtonDoubleClicked: send: #onInputDependenciesOutputClicked: to: self.

	outputDependenciesInputListPresenter when: #leftButtonDoubleClicked: send: #onOutputDependenciesInputClicked: to: self.
	outputDependenciesOutputListPresenter when: #leftButtonDoubleClicked: send: #onOutputDependenciesOutputClicked: to: self.!

currentProcessImage

	^OLEPicture fromFile: (self model imagePath, self model image)!

customDrawGroupTree: aNMTVCUSTOMDRAW

	(self model managementGroup == aNMTVCUSTOMDRAW item)
	ifTrue: [aNMTVCUSTOMDRAW font isBold: true.
			aNMTVCUSTOMDRAW backcolor: Color gray ].!

customDrawKnowledgeAreaTree: aNMTVCUSTOMDRAW

	(self model knowledgeArea == aNMTVCUSTOMDRAW item)
	ifTrue: [aNMTVCUSTOMDRAW font isBold: true.
		aNMTVCUSTOMDRAW backcolor: Color gray ].!

generateDeliverableTree
	| newTree |
	outputTreePresenter selection isDeliverable ifTrue: [^self].
	newTree := self selectedProcess 
				generateInputTreeForDeliverable: outputDependenciesOutputListPresenter selection.
	outputTreePresenter model addTree: newTree asChildOf: outputTreePresenter selection!

generateInputTree

	inputTreePresenter selection isDeliverable ifTrue: [^self].
	(inputTreePresenter selection input select: [:each | each isProcessOI]) do: [:each | | newTree |
		newTree := inputTreePresenter selection generateOutTreeForDeliverable: each.
		inputTreePresenter model addTree: newTree asChildOf: inputTreePresenter selection]!

generateOutputTree

	outputTreePresenter selection isDeliverable ifTrue: [^self].
	(outputTreePresenter selection output select: [:each | each isProcessOI]) do: [:each | | newTree |
		newTree := outputTreePresenter selection generateInputTreeForDeliverable: each.
		outputTreePresenter model addTree: newTree asChildOf: outputTreePresenter selection]!

gotoGeneratorProcess
	| proc |

	proc := (outputTreePresenter model asOrderedCollection reject: [:each | each isDeliverable]) 
				detect: [:each | each outputIncludesDeliverableOf: outputDependenciesInputListPresenter selection] ifNone: [^self].

	outputTreePresenter selection: proc ifAbsent: []!

inputTreePresenter
	^inputTreePresenter!

inputTreePresenter: anObject
	inputTreePresenter := anObject!

model: aPMIProcessDefinition

	super model: aPMIProcessDefinition.

	processDescriptionPresenter model: (self model aspectValue: #description). 

	aPMIProcessDefinition hasImage
	ifTrue: [processImagePresenter model: self currentProcessImage]
	ifFalse: [processImagePresenter value: nil.].

	inputsPresenter model: (ListModel on: aPMIProcessDefinition input).
	toolsPresenter model: (ListModel on: aPMIProcessDefinition toolsAndTechniques).
	outputsPresenter model: (ListModel on: aPMIProcessDefinition output).

	inputDependenciesInputListPresenter model: ListModel new.
	inputDependenciesOutputListPresenter model: ListModel new.
	outputDependenciesInputListPresenter model: ListModel new.
	outputDependenciesOutputListPresenter model: ListModel new.!

moveInputDown
	| toMove index |

	toMove := inputsPresenter selection.
	index := self model indexOfInput: toMove.
	self model removeInput: toMove.
	self model addInput: toMove afterIndex: index.
	inputsPresenter model: (ListModel on: self model input).
	inputsPresenter selection: toMove ifAbsent: [].!

moveInputUp
	| toMove index |

	toMove := inputsPresenter selection.
	index := self model indexOfInput: toMove.
	self model removeInput: toMove.
	self model addInput: toMove beforeIndex: (index - 1).
	inputsPresenter model: (ListModel on: self model input).
	inputsPresenter selection: toMove ifAbsent: [].!

moveOutputDown
	| toMove index |

	toMove := outputsPresenter selection.
	index := self model indexOfOutput: toMove.
	self model removeOutput: toMove.
	self model addOutput: toMove afterIndex: index.
	outputsPresenter model: (ListModel on: self model output).
	outputsPresenter selection: toMove ifAbsent: [].!

moveOutputUp
	| toMove index |

	toMove := outputsPresenter selection.
	index := self model indexOfOutput: toMove.
	self model removeOutput: toMove.
	self model addOutput: toMove beforeIndex: (index - 1).
	outputsPresenter model: (ListModel on: self model output).
	outputsPresenter selection: toMove ifAbsent: [].!

moveToolDown
	| toMove index |

	toMove := toolsPresenter selection.
	index := self model indexOfTool: toMove.
	self model removeToolOrTechnique: toMove.
	self model addToolOrTechnique: toMove afterIndex: index.
	toolsPresenter model: (ListModel on: self model toolsAndTechniques).
	toolsPresenter selection: toMove ifAbsent: [].!

moveToolUp
	| toMove index |

	toMove := toolsPresenter selection.
	index := self model indexOfTool: toMove.
	self model removeToolOrTechnique: toMove.
	self model addToolOrTechnique: toMove beforeIndex: (index - 1).
	toolsPresenter model: (ListModel on: self model toolsAndTechniques).
	toolsPresenter selection: toMove ifAbsent: [].!

onAboutToDisplayMenu: popup 
	"The system is about to display the <Menu>, popup, this is our chance
	to fiddle with it."

	super onAboutToDisplayMenu: popup.
	(popup name == #inputTemplates)
		ifTrue: [| docMenu deliverable |  
			docMenu := popup "find: 'Templates' ifAbsent: [^nil]". 
			docMenu clear.	
			deliverable := inputsPresenter selection deliverable.
			deliverable notNil
			ifTrue: [ deliverable templates do: [:each | | msg |
					msg := MessageSend receiver: self selector: #openTemplate: argument: each. 
					docMenu addCommand: msg description: each].].].

	(popup name == #outputTemplates)
		ifTrue: [| docMenu deliverable |  
			docMenu := popup. 
			docMenu clear.	
			deliverable := outputsPresenter selection deliverable.
			deliverable notNil
			ifTrue: [ deliverable templates do: [:each | | msg |
					msg := MessageSend receiver: self selector: #openTemplate: argument: each. 
					docMenu addCommand: msg description: each].].].

	(popup name == #images)
		ifTrue: [| docImages selectedTechnique |  
			docImages := popup "find: 'images' ifAbsent: [^nil]". 
			docImages clear.	
			selectedTechnique :=  toolsPresenter selection.
			selectedTechnique images do: [:each | | msg |
				msg := MessageSend receiver: self selector: #openTechniqueImage: argument: each. 
				docImages addCommand: msg description: each].].

	(popup name == #outputImages)
		ifTrue: [| docImages selectedOutput |  
			docImages := popup "find: 'images' ifAbsent: [^nil]". 
			docImages clear.	
			selectedOutput :=  outputsPresenter selection.
			selectedOutput images do: [:each | | msg |
				msg := MessageSend receiver: self selector: #openOutputImage: argument: each. 
				docImages addCommand: msg description: each].].
!

onImageDoubleClicked: aMouseEvent

	self model hasImage ifFalse: [^self].

	"PMIProcessImageComposite showOn: self currentProcessImage"

	^ShellLibrary default shellOpen: (self model imagePath, self model image)!

onInputDependenciesInputClicked: aMouseEvent

	inputDependenciesInputListPresenter hasSelection ifFalse: [^self].

	self showInputDependenciesFor: inputDependenciesInputListPresenter selection!

onInputDependenciesOutputClicked: aMouseEvent

	inputDependenciesOutputListPresenter hasSelection ifFalse: [^self].

	self showOutputDependenciesFor: inputDependenciesOutputListPresenter selection!

onInputDoubleClicked: aMouseEvent

	inputsPresenter hasSelection ifFalse: [^self].

	self showInputDependenciesFor: inputsPresenter selection!

onInputSelected

	inputsPresenter hasSelection ifFalse: [inputDeliverableDescriptionPresenter model: nil.
		inputDependenciesInputListPresenter model: ListModel new.
		inputDependenciesOutputListPresenter model: ListModel new.
		inputTreePresenter model: TreeModel new.
		^inputDescriptionPresenter model: nil].

	inputsPresenter selection isProcessOI 
	ifFalse: [inputDeliverableDescriptionPresenter model: (inputsPresenter selection aspectValue: #deliverableDescription).
		^inputDescriptionPresenter model: (inputsPresenter selection aspectValue: #description)].

	inputDescriptionPresenter model: (inputsPresenter selection aspectValue: #description).

	inputDeliverableDescriptionPresenter model: (inputsPresenter selection aspectValue: #deliverableDescription).

	inputTreePresenter model: (self model generateOutTreeForDeliverable: inputsPresenter selection)
!

onInputTreeChanged

	inputTreePresenter hasSelection ifFalse: [inputDependenciesInputListPresenter model: ListModel new. ^inputDependenciesOutputListPresenter model: ListModel new.].

	inputTreePresenter selection isDeliverable ifTrue: [^self].

	inputDependenciesInputListPresenter model: (ListModel on: inputTreePresenter selection input).

	inputDependenciesOutputListPresenter model: (ListModel on: inputTreePresenter selection output). !

onInputTreeDoubleClicked:  aMouseEvent
	| presenter |

	inputTreePresenter hasSelection ifFalse: [^self].


	presenter := RichTextShell show.
	presenter model: (inputTreePresenter selection aspectValue: #description).
	presenter view caption: inputTreePresenter selection name.

	presenter view extent: 659@600.!

onOutputDependenciesInputClicked: aMouseEvent

	outputDependenciesInputListPresenter hasSelection ifFalse: [^self].

	self showInputDependenciesFor: outputDependenciesInputListPresenter selection.!

onOutputDependenciesOutputClicked: aMouseEvent

	outputDependenciesOutputListPresenter hasSelection ifFalse: [^self].

	self showOutputDependenciesFor: outputDependenciesOutputListPresenter selection!

onOutputDoubleClicked: aMouseEvent

	outputsPresenter hasSelection ifFalse: [^self].

	self showOutputDependenciesFor: outputsPresenter selection!

onOutputSelected

	outputsPresenter hasSelection 
		ifFalse: [outputDeliverableDescriptionPresenter model: nil.
			outputDependenciesInputListPresenter model: ListModel new.
			outputDependenciesOutputListPresenter model: ListModel new.
			outputTreePresenter model: TreeModel new.
			^outputDescriptionPresenter model: nil].

	outputsPresenter selection isProcessOI 
	ifFalse: [outputDeliverableDescriptionPresenter model: (outputsPresenter selection aspectValue: #deliverableDescription).
		^outputDescriptionPresenter model: (outputsPresenter selection aspectValue: #description)].

	outputDescriptionPresenter model: (outputsPresenter selection aspectValue: #description).
	outputDeliverableDescriptionPresenter 
		model: (outputsPresenter selection aspectValue: #deliverableDescription).
	outputTreePresenter 
		model: (self model generateInputTreeForDeliverable: outputsPresenter selection)!

onOutputTreeChanged

	outputTreePresenter hasSelection ifFalse: [outputDependenciesInputListPresenter model: ListModel new. ^outputDependenciesOutputListPresenter model: ListModel new.].

	outputTreePresenter selection isDeliverable ifTrue: [^self].

	outputDependenciesInputListPresenter model: (ListModel on: outputTreePresenter selection input).

	outputDependenciesOutputListPresenter model: (ListModel on: outputTreePresenter selection output). !

onOutputTreeDoubleClicked:  aMouseEvent
	| presenter |

	outputTreePresenter hasSelection ifFalse: [^self].


	presenter := RichTextShell show.
	presenter model: (outputTreePresenter selection aspectValue: #description).
	presenter view caption: outputTreePresenter selection name.

	presenter view extent: 659@600.!

onToolDoubleClicked:  aMouseEvent

	toolsPresenter hasSelection ifFalse: [^self].

	self topShell searchProcessesWithToolOrTechnique: toolsPresenter selection!

onToolSelected

	toolsPresenter hasSelection 
	ifFalse: [toolSpecificDescriptionPresenter model:  nil.
		^toolDescriptionPresenter model: nil].

	toolDescriptionPresenter model: (toolsPresenter selection aspectValue: #description).

	toolSpecificDescriptionPresenter model: (toolsPresenter selection aspectValue: #specificDescription).!

onViewOpened

	super onViewOpened.

	processDescriptionPresenter model: (self model aspectValue: #description). !

openAllInputs

	^self openAllItems: inputsPresenter model aspect: #deliverableDescription!

openAllItems: anOrderedCollection aspect: aSymbol

	anOrderedCollection do: [:each |  | presenter |
		presenter := RichTextShell show.
		presenter model: (each aspectValue: aSymbol).
		presenter view extent: 659@600.
]!

openAllOutputs

	^self openAllItems: outputsPresenter model aspect: #deliverableDescription!

openAllTechniques

	^self openAllItems: toolsPresenter model aspect: #description!

openCreatorProcess
	inputsPresenter hasSelection ifFalse: [^self].
	inputsPresenter selection outputProcess
		ifNotNil: [:value | PMBOKProcessDefinitionShell showOn: value]!

openOutputImage: aString

	(File exists: self model imagePath, aString) ifFalse: [^MessageBox notify: 'File not found !!'].

	ShellLibrary default shellOpen: (self model imagePath, aString).!

openProcessInputTreeImage

	inputTreePresenter hasSelection ifFalse: [^self].
	inputTreePresenter selection hasImage ifFalse: [^self].

	^ShellLibrary default shellOpen: (inputTreePresenter selection imagePath, inputTreePresenter selection image)!

openProcessOutputTreeImage
	outputTreePresenter hasSelection ifFalse: [^self].
	outputTreePresenter selection hasImage ifFalse: [^self].
	PMBOKProcessImageComposite showOn: (OLEPicture
				fromFile: outputTreePresenter selection imagePath , outputTreePresenter selection image)!

openTechniqueImage: aString

	(File exists: self model imagePath, aString) ifFalse: [^MessageBox notify: 'File not found !!'].

	ShellLibrary default shellOpen: (self model imagePath, aString).!

openTemplate: aString

	^ShellLibrary default shellOpen: (self model templatesPath, aString)!

outputTreePresenter
	^outputTreePresenter!

outputTreePresenter: anObject
	outputTreePresenter := anObject!

projectModel
	^self defaultLanguage defaultPMIModel !

queryCommand: aCommandQuery
	| cmd |

	super queryCommand: aCommandQuery.

	cmd := aCommandQuery commandSymbol.
	cmd == #addInput ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #images ifTrue: [aCommandQuery isEnabled: toolsPresenter hasSelection].
	cmd == #outputImages ifTrue: [aCommandQuery isEnabled: outputsPresenter hasSelection].
	cmd == #inputTemplates ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection and: [inputsPresenter selection isProcessOI]) . ^true].
	cmd == #addTemplateToInput ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection and: [inputsPresenter selection isProcessOI]) . ^true].
	cmd == #removeTemplateFromInput ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection and: [inputsPresenter selection isProcessOI]) . ^true].
	cmd == #outputTemplates ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection and: [outputsPresenter selection isProcessOI]). ^true].
	cmd == #addTemplateToOutput ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection and: [outputsPresenter selection isProcessOI]). ^true].
	cmd == #removeTemplateFromOutput ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection and: [outputsPresenter selection isProcessOI]). ^true].	
	cmd == #addInputArtifact ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #removeInput ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection).^true].
	cmd == #addOutput ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #removeOutput ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection).^true].
	cmd == #addOutputArtifact ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #moveInputDown ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection and: [inputsPresenter model last ~~ inputsPresenter selection]).^true].
	cmd == #moveInputUp ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection and: [inputsPresenter model first ~~ inputsPresenter selection]).^true].
	cmd == #moveOutputDown ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection and: [outputsPresenter model last ~~ outputsPresenter selection]).^true].
	cmd == #moveOutputUp ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection and: [outputsPresenter model first ~~ outputsPresenter selection]).^true].
	cmd == #moveToolDown ifTrue: [aCommandQuery isEnabled: (toolsPresenter hasSelection and: [toolsPresenter model last ~~ toolsPresenter selection]).^true].
	cmd == #moveToolUp ifTrue: [aCommandQuery isEnabled: (toolsPresenter hasSelection and: [toolsPresenter model first ~~ toolsPresenter selection]).^true].
	cmd == #showInputDefinition ifTrue: [aCommandQuery isEnabled: inputsPresenter hasSelection.^true].
	cmd == #showOutputDefinition ifTrue: [aCommandQuery isEnabled: outputsPresenter hasSelection.^true].
	cmd == #showProcessDescription ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #showToolsDefinition ifTrue: [aCommandQuery isEnabled: toolsPresenter hasSelection.^true].
	cmd == #openPmbook ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell. ^true].
	cmd == #setPmbookPath ifTrue: [aCommandQuery isEnabled: true; receiver: self topShell. ^true].
	cmd == #openPMIDefinitionBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #openPortfolioBrowser ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #openPMIBrowser ifTrue: [aCommandQuery isEnabled: true;receiver: self topShell.^true].
	cmd == #setProcessesListResetFilterSelection ifTrue: [aCommandQuery isEnabled: true.^true].
	cmd == #openProcessInputTreeImage ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection and: [inputTreePresenter hasSelection and: [inputTreePresenter selection isProcessDefinition] ]) .^true].
	cmd == #generateInputTree ifTrue: [aCommandQuery isEnabled: (inputsPresenter hasSelection and: [inputTreePresenter hasSelection and: [inputTreePresenter selection isProcessDefinition] ]) .^true].
	cmd == #openProcessOutputTreeImage ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection and: [outputTreePresenter hasSelection and: [outputTreePresenter selection isProcessDefinition] ]) .^true].
	cmd == #generateOutputTree ifTrue: [aCommandQuery isEnabled: (outputsPresenter hasSelection and: [outputTreePresenter hasSelection and: [outputTreePresenter selection isProcessDefinition] ]) .^true].

!

removeInput

	inputsPresenter hasSelection ifFalse: [^self].

	self model removeInput: inputsPresenter selection.

	inputsPresenter model: (ListModel on: self model input).!

removeInputArtifact

	inputsPresenter hasSelection ifFalse: [^self].

	self model removeInput: inputsPresenter selection.

	inputsPresenter model: (ListModel on: self model input).!

removeOutput

	outputsPresenter hasSelection ifFalse: [^self].

	self model removeOutput: outputsPresenter selection.

	outputsPresenter model: (ListModel on: self model output).
!

removeOutputArtifact

	outputsPresenter hasSelection ifFalse: [^self].

	self model removeOutput: outputsPresenter selection.

	outputsPresenter model: (ListModel on: self model output).
!

removeTemplateFromInput
	| deliverableString |

	deliverableString := DetalleDeOpciones listaCon: inputsPresenter selection deliverable templates asSortedCollection para: 'Default view' titulo: 'Select Deliverable'.
	deliverableString ifNil: [^self].

	inputsPresenter selection deliverable removeTemplate: deliverableString!

removeTemplateFromOutput
	| deliverableString |

	outputsPresenter selection deliverable ifNil: [^self].
	deliverableString := DetalleDeOpciones listaCon: outputsPresenter selection deliverable templates asSortedCollection para: 'Default view' titulo: 'Select Deliverable'.
	deliverableString ifNil: [^self].

	outputsPresenter selection deliverable removeTemplate: deliverableString!

removeTool

	toolsPresenter hasSelection ifFalse: [^self].

	self model removeToolOrTechnique: toolsPresenter selection.

	toolsPresenter model: (ListModel on: self model toolsAndTechniques).!

resetModel

		processImagePresenter value: nil.
		inputsPresenter model: ListModel new.
		outputsPresenter model: ListModel new.
		toolsPresenter model: ListModel new.
		^processDescriptionPresenter model: nil!

setProcessesListResetFilterSelection
	^parentPresenter setProcessesListResetFilterSelection!

setProcessImage
	| file |

	file := FileOpenDialog showModal.
	file ifNil: [^self].

	[File copy: file to: (model imagePath, (File splitFilenameFrom: file))] on: Error do: [:ex | ^MessageBox notify: ex description ] .

	self model image: (File splitFilenameFrom: file).

	!

showInputDefinition
	| presenter |

	presenter := RichTextShell show.
	presenter model: (inputsPresenter selection aspectValue: #deliverableDescription).
	presenter view caption: inputsPresenter selection name.
	presenter view extent: 659@600.!

showInputDependenciesFor: anInput

	self topShell showProcesses: (self projectModel getProcessesWithOutput: anInput) 
		caption: 'Processes with Output <', anInput name, '>'
		searchedElement: anInput!

showOutputDefinition
	| presenter |

	presenter := RichTextShell show.
	presenter model: (outputsPresenter selection aspectValue: #deliverableDescription).
	presenter view caption: outputsPresenter selection name.
	presenter view extent: 659@600.!

showOutputDependenciesFor: anOutput

	self topShell showProcesses: (self projectModel getProcessesWithInput: anOutput) 
		caption: 'Processes with Input <', anOutput name, '>'
		searchedElement: anOutput!

showProcessDefinition
	| presenter |

	presenter := RichTextShell show.
	presenter model: (self model aspectValue: #description).
	presenter view caption: self model name.

	presenter view extent: 659@600.!

showProcessDescription
	| presenter |

	presenter := RichTextShell show.
	presenter model: (self model description aspectValue: #description).
	presenter view caption: self model name.
	presenter view extent: 659@600.!

showToolsDefinition
	| presenter |

	presenter := RichTextShell show.
	presenter model: (toolsPresenter selection aspectValue: #description).
	presenter view caption: toolsPresenter selection name.
	presenter view extent: 659@600.!

switchOutputEvent

	outputsPresenter hasSelection ifFalse: [^self].

	outputsPresenter selection switchEvent.

	outputsPresenter view invalidate.! !
!PMBOKProcessDefinitionComposite categoriesFor: #addInput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #addInputArtifact!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #addOutput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #addOutputArtifact!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #addTemplate:to:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #addTemplateToInput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #addTemplateToOutput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #addTool!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #browseProcessWithInput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #browseProcessWithOutput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #createComponents!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #currentProcessImage!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #customDrawGroupTree:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #customDrawKnowledgeAreaTree:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #generateDeliverableTree!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #generateInputTree!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #generateOutputTree!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #gotoGeneratorProcess!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #inputTreePresenter!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #inputTreePresenter:!accessing!private! !
!PMBOKProcessDefinitionComposite categoriesFor: #model:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #moveInputDown!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #moveInputUp!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #moveOutputDown!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #moveOutputUp!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #moveToolDown!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #moveToolUp!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onAboutToDisplayMenu:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onImageDoubleClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onInputDependenciesInputClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onInputDependenciesOutputClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onInputDoubleClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onInputSelected!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onInputTreeChanged!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onInputTreeDoubleClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onOutputDependenciesInputClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onOutputDependenciesOutputClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onOutputDoubleClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onOutputSelected!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onOutputTreeChanged!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onOutputTreeDoubleClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onToolDoubleClicked:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onToolSelected!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #onViewOpened!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openAllInputs!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openAllItems:aspect:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openAllOutputs!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openAllTechniques!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openCreatorProcess!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openOutputImage:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openProcessInputTreeImage!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openProcessOutputTreeImage!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openTechniqueImage:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #openTemplate:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #outputTreePresenter!accessing!private! !
!PMBOKProcessDefinitionComposite categoriesFor: #outputTreePresenter:!accessing!private! !
!PMBOKProcessDefinitionComposite categoriesFor: #projectModel!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #queryCommand:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #removeInput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #removeInputArtifact!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #removeOutput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #removeOutputArtifact!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #removeTemplateFromInput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #removeTemplateFromOutput!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #removeTool!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #resetModel!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #setProcessesListResetFilterSelection!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #setProcessImage!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #showInputDefinition!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #showInputDependenciesFor:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #showOutputDefinition!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #showOutputDependenciesFor:!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #showProcessDefinition!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #showProcessDescription!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #showToolsDefinition!public! !
!PMBOKProcessDefinitionComposite categoriesFor: #switchOutputEvent!public! !

!PMBOKProcessDefinitionComposite class methodsFor!

defaultModel
	^PMBOKProcessDefinition new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ContainerView) 34 15 nil nil 34 2 8 1409286144 131073 416 nil nil nil 5 nil nil nil 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 512 nil nil nil 5 nil nil nil 512 482 1 1 nil nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 512 34 2 8 1140850688 131073 592 nil 786694 ##(Smalltalk.ColorDefault) 8 4278190080 nil 5 nil nil nil 592 1180230 1 ##(Smalltalk.ResourceIdentifier) ##(Smalltalk.Toolbar) #resource_PMI_Browser_toolbar nil 983302 ##(Smalltalk.MessageSequence) 138 144 34 1 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1 1 850 601 51 592 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 44 1 0 0 25 0 0 0] 8 #() 850 193 193 nil 27 410 ##(Smalltalk.Toolbar) 34 25 nil 512 34 2 8 1409288972 131137 976 nil 672 nil 517 nil 263174 ##(Smalltalk.Font) nil true 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 850 193 193 nil 976 672 8 1949831345 170 192 944 170 192 34 8 24487 1115206 1 ##(Smalltalk.ToolbarIconButton) 976 1 1180998 4 ##(Smalltalk.CommandDescription) #showOutputDefinition 8 'Show Output Definition' 1 1 263494 3 ##(Smalltalk.Icon) nil true 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'TransformationRule.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr7.dll' nil 24487 24481 1202 976 1 1234 #showProcessDefinition 8 'Show Process Definition' 1 1 1282 nil true 1328 8 'Process.ico' 1376 24481 24483 1202 976 1 1234 #showInputDefinition 8 'Show Input Definition' 1 1 1282 nil true 1328 5 786694 ##(Smalltalk.ShellLibrary) 24483 24485 1202 976 1 1234 #showToolsDefinition 8 'Show Tools Definition' 1 1 1282 nil true 1328 8 'Behavior.ico' 1376 24485 34 6 1049158 1 ##(Smalltalk.ToolbarSeparator) 976 1 1408 1488 1584 1216 1682 976 1 nil nil 1 nil 850 33 33 850 45 45 nil 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 738 138 144 34 2 802 #createAt:extent: 34 2 850 601 1 850 1471 51 976 802 #updateSizePosted 944 976 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 44 1 0 0 0 0 0 0 11 4 0 0 25 0 0 0] 8 #() 960 nil 27 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 2071 51 512 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 25 0 0 0] 34 2 976 592 960 nil 27 nil nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 416 34 2 8 1140850688 131073 2144 nil nil nil 5 nil nil nil 2144 1180166 ##(Smalltalk.ProportionalLayout) 170 176 944 true 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 51 850 2071 1361 2144 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 11 4 0 0 193 2 0 0] 34 1 410 ##(Smalltalk.CardContainer) 34 16 nil 2144 34 2 8 1409286144 131073 2432 nil 672 nil 5 nil nil nil 2432 655878 ##(Smalltalk.CardLayout) 138 144 34 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Process Description' 787814 3 ##(Smalltalk.BlockClosure) 0 nil 1180966 ##(Smalltalk.CompiledExpression) 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Process Description'' iconBlock: [PMIProcessDefinition icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 2624 ##(Smalltalk.PMBOKProcessDefinition) #icon #text:iconBlock: 2656 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 2432 34 2 8 1140850688 131073 2752 nil nil nil 5 nil nil nil 2752 2210 170 176 944 false 170 192 34 2 410 ##(Smalltalk.ReferenceView) 34 14 nil 2752 34 2 8 1140850688 131073 2880 nil 672 nil 5 nil nil nil 2880 706 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 2055 1305 2880 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 140 2 0 0] 944 960 nil 27 8 'processDescription' nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 2055 1301 2752 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 7 4 0 0 164 2 0 0] 34 1 2880 960 nil 27 2562 2594 8 'Properties' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Properties'' iconBlock: [ValueConverter  icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 3312 ##(Smalltalk.ValueConverter) #icon #text:iconBlock: 3328 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 2432 34 2 8 1140850688 131073 3408 nil nil nil 5 nil nil nil 3408 2210 170 176 944 false 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 2055 1301 3408 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 7 4 0 0 164 2 0 0] 34 1 410 ##(Smalltalk.CardContainer) 34 16 nil 3408 34 2 8 1409286144 131073 3680 nil 672 nil 5 nil nil nil 3680 2498 138 144 34 4 2562 2594 8 'Connections' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Connections'' iconBlock: [ValueAdaptor icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 3824 ##(Smalltalk.ValueAdaptor) #icon #text:iconBlock: 3840 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 3680 34 2 8 1140850688 131073 3920 nil nil nil 5 nil nil nil 3920 2210 170 176 944 false 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 2039 1241 3920 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 255 3 0 0 134 2 0 0] 34 5 410 ##(Smalltalk.ContainerView) 34 15 nil 3920 34 2 8 1140850688 131073 4192 nil nil nil 5 nil nil nil 4192 2210 170 176 944 true 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 673 1241 4192 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 108 2 0 0] 34 1 410 ##(Smalltalk.ContainerView) 34 15 nil 4192 34 2 8 1140850688 131073 4464 nil nil nil 5 nil nil nil 4464 2210 170 176 944 true 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 673 1241 4464 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 108 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 4464 34 2 8 1140850688 131073 4736 nil nil nil 5 nil nil nil 4736 482 1 1 410 ##(Smalltalk.Toolbar) 34 25 nil 4736 34 2 8 1409288972 131137 4816 nil 672 nil 517 nil 1042 nil true 1074 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 850 193 193 nil 4816 672 8 1949831345 170 192 944 170 192 34 4 24535 1246790 1 ##(Smalltalk.ToolbarBitmapButton) 4816 1 1234 #moveInputUp 8 'Move up' 1 1 nil 24535 395334 3 ##(Smalltalk.Bitmap) 1 true 1328 8 'ListBar.bmp' 1376 nil 7 850 1 1 1 24537 5010 4816 1 1234 #moveInputDown 8 'Move Down' 1 1 nil 24537 5088 3 34 2 5024 5136 nil nil 1 nil 850 33 33 850 45 45 nil 1762 1 1 1 738 138 144 34 2 802 #createAt:extent: 34 2 850 1 1 850 673 51 4816 802 #updateSizePosted 944 4816 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 25 0 0 0] 8 #() 960 nil 27 nil nil nil 410 ##(Smalltalk.ListView) 34 30 nil 4736 34 2 8 1409355853 1025 5424 590662 2 ##(Smalltalk.ListModel) 138 144 944 nil 1310726 ##(Smalltalk.IdentitySearchPolicy) 672 nil 5 265030 4 ##(Smalltalk.Menu) nil true 34 15 984134 2 ##(Smalltalk.CommandMenuItem) 1 1234 #browseProcessWithInput 8 'Browse Process with Input' 1 1 nil nil nil 983366 1 ##(Smalltalk.DividerMenuItem) 4097 5618 1 1234 #openCreatorProcess 8 'Open Creator Process' 1 1 nil nil nil 5682 4097 5618 1 1234 #openAllInputs 8 'Open All' 1 1 nil nil nil 5682 4097 5618 1 1234 #addTemplateToInput 8 'Add Template' 1 1 nil nil nil 5618 1 1234 #removeTemplateFromInput 8 'Remove Template' 1 1 nil nil nil 5570 nil true 8 #() 8 'Templates' #inputTemplates 134217729 nil nil nil nil nil 5682 4097 5618 1 1234 #addInput 8 'Add Input' 1 1 nil nil nil 5618 1 1234 #removeInput 8 'Remove Input' 1 1 nil nil nil 5682 4097 5618 1 1234 #addInputArtifact 8 'Add Artifact' 1 1 nil nil nil 5618 1 1234 #removeInputArtifact 8 'Remove Artifact' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 5424 nil 8 1949885807 459270 ##(Smalltalk.Message) #displayString 8 #() ##(Smalltalk.IconicListAbstract) 1049926 1 ##(Smalltalk.IconImageManager) nil nil nil nil nil nil 138 144 34 3 920646 5 ##(Smalltalk.ListViewColumn) 8 'Input' 661 #left 6242 #name 8 #() 2642 0 nil 2674 2 1 106 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 6432 7 513 nil nil nil 5424 nil 1 nil 2642 0 nil 2674 7 1 2640 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] #item #deliverableIsOrganizationAsset #forecolor 327734 ##(Smalltalk.Float) 8 51 51 51 51 51 51 251 63 #fadedBy: #forecolor: 6560 7 257 nil 6354 8 'Creator Process' 201 #left 6242 #outputProcessName 8 #() 2642 0 nil 2674 2 1 6240 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] #outputProcessName 6736 7 513 nil nil nil 5424 nil 1 nil nil 6354 8 'Type' 201 #left 6242 #printType 8 #() 2642 0 nil 2674 2 1 6240 8 'doIt' 8 '[:a : b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] #printType 6880 7 513 nil nil nil 5424 nil 1 nil nil #report 944 nil 131169 nil 8 #(nil) 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 51 850 673 563 5424 802 #contextMenu: 34 1 5584 5424 802 #text: 34 1 8 'Input' 5424 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 80 1 0 0 50 1 0 0] 8 #() 960 nil 27 170 192 34 2 5424 8 'inputs' nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 673 613 4736 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 50 1 0 0] 34 2 4816 5424 960 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 4464 34 2 8 1140850688 262145 7424 nil 672 nil 517 nil nil nil 1510470 1 ##(Smalltalk.DraggableViewInteractor) 7424 nil 1 #left nil nil nil 850 1 1 850 9 9 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 613 850 673 15 7424 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 50 1 0 0 80 1 0 0 57 1 0 0] 8 #() 960 nil 27 410 ##(Smalltalk.CardContainer) 34 16 nil 4464 34 2 8 1409286144 131073 7712 nil 672 nil 5 nil nil nil 7712 2498 138 144 34 2 2562 2594 8 'Input' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Input'' iconBlock: [PMIInput icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 7856 ##(Smalltalk.PMBOKInputDefinition) #icon #text:iconBlock: 7872 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 7712 34 2 8 1140850688 131073 7952 nil 672 nil 5 nil nil nil 7952 706 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 657 555 7952 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 76 1 0 0 47 1 0 0] 944 960 nil 27 2562 2594 8 'Deliverable' 2642 0 nil 2674 6 1 2592 8 'doIt' 8 '(CardLabel text: ''Deliverable'' iconBlock: [PMIDeliverable icon])' 8 #[29 30 34 112 31 161 106 194 105] 2592 8208 ##(Smalltalk.PMBOKDeliverableDefinition) #icon #text:iconBlock: 8224 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 7712 34 2 8 1140850688 131073 8304 nil 672 nil 5 nil nil nil 8304 706 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 657 555 8304 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 76 1 0 0 47 1 0 0] 944 960 nil 27 7952 170 192 34 4 7952 8 'inputDescription' 8304 8 'inputDeliverableDescription' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 7712 34 2 8 1140916736 1 8592 5490 138 144 34 2 7840 8192 nil 5552 nil nil 1 nil nil nil 8592 nil 8 1949556446 2642 0 nil 918822 ##(Smalltalk.CompiledMethod) 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 8720 7 257 nil 2642 0 nil 8738 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 8784 7 257 nil 6304 nil nil nil nil nil #smallIcons nil nil nil nil nil 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 1 850 673 615 8592 802 #basicSelectionsByIndex: 34 1 8 #(1) 8592 802 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 8592 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 51 1 0 0] 8 #() 960 nil 27 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 627 850 673 615 7712 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 57 1 0 0 80 1 0 0 108 2 0 0] 34 3 7952 8304 8592 960 nil 27 960 nil 27 960 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 3920 34 2 8 1140850688 1 9232 nil 672 nil 517 nil nil nil 7490 9232 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 673 1 850 11 1241 9232 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 80 1 0 0 0 0 0 0 85 1 0 0 108 2 0 0] 8 #() 960 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 3920 34 2 8 1140850688 131073 9472 nil nil nil 5 nil nil nil 9472 2210 170 176 944 true 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 683 1 850 673 1241 9472 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 1 0 0 0 0 0 0 165 2 0 0 108 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 9472 34 2 8 1140850688 131073 9744 nil nil nil 5 nil nil nil 9744 482 1 1 410 ##(Smalltalk.Toolbar) 34 25 nil 9744 34 2 8 1409288972 131137 9824 nil 672 nil 517 nil 1042 nil true 1074 4912 850 193 193 nil 9824 672 8 1949831345 170 192 944 170 192 34 4 24583 5010 9824 1 1234 #moveToolUp 5056 1 1 nil 24583 5088 1 24585 5010 9824 1 1234 #moveToolDown 5168 1 1 nil 24585 5088 3 34 2 10000 10032 nil nil 1 nil 850 33 33 850 45 45 nil 1762 1 1 1 738 138 144 34 2 802 #createAt:extent: 34 2 850 1 1 850 673 51 9824 802 #updateSizePosted 944 9824 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 25 0 0 0] 8 #() 960 nil 27 nil nil nil 410 ##(Smalltalk.ListView) 34 30 nil 9744 34 2 8 1409355853 1025 10304 5490 138 144 944 nil 5552 672 nil 5 5570 nil true 34 6 5618 1 1234 #addTool 8 'Add Tool' 1 1 nil nil nil 5618 1 1234 #removeTool 8 'Remove Tool' 1 1 nil nil nil 5682 4097 5618 1 1234 #openAllTechniques 8 'Open All' 1 1 nil nil nil 5682 4097 5570 nil true 8 #() 8 'Images' #images 134217729 nil nil nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 10304 nil 8 1949885807 6242 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6304 nil nil nil nil nil nil 138 144 34 1 6354 8 'Tools and Techniques' 661 #left 6242 #name 8 #() 2642 0 nil 2674 2 1 6464 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 10816 7 513 nil nil nil 10304 nil 1 nil 2642 0 nil 2674 7 1 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:ctx | 
ctx item hasImages 
ifTrue: [ctx forecolor: Color darkBlue]
ifFalse: [ctx forecolor: Color black ]
]' 8 #[35 105 226 0 159 122 17 31 161 180 106 17 31 163 180 106] #item #hasImages ##(Smalltalk.Color) #darkBlue #forecolor: #black 10896 7 257 nil #report 944 nil 131169 nil 8 #(nil) 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 51 850 673 563 10304 802 #contextMenu: 34 1 10400 10304 802 #text: 34 1 8 'Tools and Techniques' 10304 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 80 1 0 0 50 1 0 0] 8 #() 960 nil 27 170 192 34 2 10304 8 'tools' nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 673 613 9744 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 50 1 0 0] 34 2 9824 10304 960 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 9472 34 2 8 1140850688 262145 11440 nil 672 nil 517 nil nil nil 7490 11440 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 613 850 673 15 11440 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 50 1 0 0 80 1 0 0 57 1 0 0] 8 #() 960 nil 27 410 ##(Smalltalk.CardContainer) 34 16 nil 9472 34 2 8 1409286144 131073 11680 nil 672 nil 5 nil nil nil 11680 2498 138 144 34 2 2562 2594 8 'Tool' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Tool'' iconBlock: [PMIToolOrTechnique icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 11824 ##(Smalltalk.PMBOKToolOrTechnique) #icon #text:iconBlock: 11840 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 11680 34 2 8 1140850688 131073 11920 nil 672 nil 5 nil nil nil 11920 706 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 657 555 11920 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 76 1 0 0 47 1 0 0] 944 960 nil 27 2562 2594 8 'Specific Description' 2642 0 nil 2674 7 1 16 8 'doIt' 8 '(CardLabel text: ''Specific Description'' iconBlock: [Icon fromId: ''MetaClass.ico''])' 8 #[29 30 35 113 31 32 180 106 195 105] 2592 12176 1280 8 'MetaClass.ico' #fromId: #text:iconBlock: 12192 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 11680 34 2 8 1140850688 131073 12288 nil 672 nil 5 nil nil nil 12288 706 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 657 555 12288 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 76 1 0 0 47 1 0 0] 944 960 nil 27 11920 170 192 34 4 11920 8 'toolDescription' 12288 8 'toolSpecificDescription' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 11680 34 2 8 1140916736 1 12576 5490 138 144 34 2 11808 12160 nil 5552 nil nil 1 nil nil nil 12576 nil 8 1949556446 2642 0 nil 8738 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 12704 7 257 nil 2642 0 nil 8738 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 12752 7 257 nil 6304 nil nil nil nil nil #smallIcons nil nil nil nil nil 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 1 850 673 615 12576 802 #basicSelectionsByIndex: 34 1 8 #(1) 12576 802 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 12576 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 80 1 0 0 51 1 0 0] 8 #() 960 nil 27 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 627 850 673 615 11680 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 57 1 0 0 80 1 0 0 108 2 0 0] 34 3 11920 12288 12576 960 nil 27 960 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 3920 34 2 8 1140850688 1 13200 nil 672 nil 517 nil nil nil 7490 13200 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1355 1 850 11 1241 13200 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 2 0 0 0 0 0 0 170 2 0 0 108 2 0 0] 8 #() 960 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 3920 34 2 8 1140850688 131073 13440 nil nil nil 5 nil nil nil 13440 2210 170 176 944 true 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1365 1 850 675 1241 13440 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 170 2 0 0 0 0 0 0 251 3 0 0 108 2 0 0] 34 3 410 ##(Smalltalk.ContainerView) 34 15 nil 13440 34 2 8 1140850688 131073 13712 nil nil nil 5 nil nil nil 13712 482 1 1 410 ##(Smalltalk.Toolbar) 34 25 nil 13712 34 2 8 1409288972 131137 13792 nil 672 nil 517 nil 1042 nil true 1074 4912 850 193 193 nil 13792 672 8 1949831345 170 192 944 170 192 34 4 24631 5010 13792 1 1234 #moveOutputUp 5056 1 1 nil 24631 5088 1 24633 5010 13792 1 1234 #moveOutputDown 5168 1 1 nil 24633 5088 3 34 2 13968 14000 nil nil 1 nil 850 33 33 850 45 45 nil 1762 1 1 1 738 138 144 34 2 802 #createAt:extent: 34 2 850 1 1 850 675 51 13792 802 #updateSizePosted 944 13792 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 81 1 0 0 25 0 0 0] 8 #() 960 nil 27 nil nil nil 410 ##(Smalltalk.ListView) 34 30 nil 13712 34 2 8 1409355853 1025 14272 5490 138 144 944 nil 5552 672 nil 5 5570 nil true 34 15 5618 1 1234 #browseProcessWithOutput 8 'Browse Process with Output' 1 1 nil nil nil 5682 4097 5618 1 1234 #openAllOutputs 8 'Open All' 1 1 nil nil nil 5682 4097 5618 1 1234 #addTemplateToOutput 8 'Add Template' 1 1 nil nil nil 5618 1 1234 #removeTemplateFromOutput 8 'Remove Template' 1 1 nil nil nil 5570 nil true 8 #() 8 'Templates' #outputTemplates 134217729 nil nil nil nil nil 5682 4097 5570 nil true 8 #() 8 'Images' #outputImages 134217729 nil nil nil nil nil 5682 4097 5618 1 1234 #addOutput 8 'Add Output' 1 1 nil nil nil 5618 1 1234 #removeOutput 8 'Remove Output' 1 1 nil nil nil 5682 4097 5618 1 1234 #addOutputArtifact 8 'Add Artifact' 1 1 nil nil nil 5618 1 1234 #removeOutputArtifact 8 'Remove Artifact' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 14272 nil 8 1949885807 6242 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6304 nil nil nil nil nil nil 138 144 34 2 6354 8 'Output' 661 #left 6242 #name 8 #() 2642 0 nil 2674 2 1 6464 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 15120 7 513 nil nil nil 14272 nil 1 nil nil 6354 8 'Type' 201 #left 6242 #printType 8 #() 2642 0 nil 2674 2 1 6240 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] #printType 15264 7 513 nil nil nil 14272 nil 1 nil nil #report 944 nil 131169 nil 8 #(nil) 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 51 850 675 563 14272 802 #contextMenu: 34 1 14368 14272 802 #text: 34 1 8 'Output' 14272 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 81 1 0 0 50 1 0 0] 8 #() 960 nil 27 170 192 34 2 14272 8 'outputs' nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 675 613 13712 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 81 1 0 0 50 1 0 0] 34 2 13792 14272 960 nil 27 410 ##(Smalltalk.Splitter) 34 12 nil 13440 34 2 8 1140850688 262145 15808 nil 672 nil 517 nil nil nil 7490 15808 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 613 850 675 15 15808 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 50 1 0 0 81 1 0 0 57 1 0 0] 8 #() 960 nil 27 410 ##(Smalltalk.CardContainer) 34 16 nil 13440 34 2 8 1409286144 131073 16048 nil 672 nil 5 nil nil nil 16048 2498 138 144 34 2 2562 2594 8 'Output' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Output'' iconBlock: [PMIOutput icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 16192 ##(Smalltalk.PMBOKOutputDefinition) #icon #text:iconBlock: 16208 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 16048 34 2 8 1140850688 131073 16288 nil 672 nil 5 nil nil nil 16288 706 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 659 555 16288 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 77 1 0 0 47 1 0 0] 944 960 nil 27 2562 2594 8 'Deliverable' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Deliverable'' iconBlock: [PMIDeliverable icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 16544 ##(Smalltalk.PMBOKDeliverableDefinition) #icon #text:iconBlock: 16560 11 1 nil nil 410 ##(Smalltalk.ReferenceView) 34 14 nil 16048 34 2 8 1140850688 131073 16640 nil 672 nil 5 nil nil nil 16640 706 ##(Smalltalk.RichTextComposite) #resource_Default_view nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 659 555 16640 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 77 1 0 0 47 1 0 0] 944 960 nil 27 16288 170 192 34 4 16640 8 'outputDeliverableDescription' 16288 8 'outputDescription' nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 16048 34 2 8 1140916736 1 16928 5490 138 144 34 2 16176 16528 nil 5552 nil nil 1 nil nil nil 16928 nil 8 1949556446 2642 0 nil 8738 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 17056 7 257 nil 2642 0 nil 8738 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 17104 7 257 nil 6304 nil nil nil nil nil #smallIcons nil nil nil nil nil 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 1 850 675 615 16928 802 #basicSelectionsByIndex: 34 1 8 #(1) 16928 802 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 16928 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 81 1 0 0 51 1 0 0] 8 #() 960 nil 27 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 627 850 675 615 16048 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 57 1 0 0 81 1 0 0 108 2 0 0] 34 3 16288 16640 16928 960 nil 27 960 nil 27 960 nil 27 2562 2594 8 'Process Diagram' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Process Diagram'' iconBlock: [PMIProcess icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 17584 ##(Smalltalk.PMBOKProcessDefinition) #icon #text:iconBlock: 17600 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 3680 34 2 8 1140850688 131073 17680 nil nil nil 5 nil nil nil 17680 2210 170 176 944 false 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 2039 1241 17680 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 255 3 0 0 134 2 0 0] 34 1 410 ##(Smalltalk.ScrollingDecorator) 34 18 nil 17680 34 2 8 1143996416 131073 17952 nil nil nil 5 nil nil nil 17952 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout) true 170 192 34 2 410 ##(Smalltalk.StaticBitmap) 34 17 nil 17952 34 2 8 1149243662 1 18080 721990 2 ##(Smalltalk.ValueHolder) nil nil 1376774 ##(Smalltalk.PluggableSearchPolicy) 6242 #== 8 #() 6242 #hash 8 #() nil nil nil 5 nil nil nil 18080 nil 8 1949642066 852486 ##(Smalltalk.NullConverter) nil nil false nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 2055 617 18080 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 52 1 0 0] 8 #() 960 nil 27 8 'processImage' nil 850 1 1 true 850 17 17 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 2055 617 17952 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 52 1 0 0] 34 1 18080 960 nil 27 960 nil 27 2562 2594 8 'Input Dependencies' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Input Dependencies'' iconBlock: [PMIInput icon]' 8 #[29 30 34 112 31 161 106 194 105] 2592 18720 ##(Smalltalk.PMBOKInputDefinition) #icon #text:iconBlock: 18736 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 3680 34 2 8 1140850688 131073 18816 nil nil nil 5 nil nil nil 18816 2210 170 176 34 2 410 ##(Smalltalk.ScrollingDecorator) 34 18 nil 18816 34 2 8 1143996416 131073 18928 nil nil nil 5 nil nil nil 18928 18018 true 170 192 34 2 410 ##(Smalltalk.MoenTreeView) 34 30 nil 18928 34 2 8 1409286144 1 19040 590918 3 ##(Smalltalk.TreeModel) nil 5552 525062 ##(Smalltalk.TreeNode) nil nil nil 170 192 944 672 nil 517 5570 nil true 34 3 5618 1 1234 #generateInputTree 8 'Generate Input Tree' 1 1 nil nil nil 5682 4097 5618 1 1234 #openProcessInputTreeImage 8 'Open Image' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 19040 788998 ##(Smalltalk.MoenTreeNode) nil 721926 ##(Smalltalk.MoenContour) nil nil nil nil 850 1 1 19408 nil nil nil nil nil 7 6242 #name 8 #() ##(Smalltalk.MoenTreeView) 268435459 850 5 3 6304 850 1 1 41 nil 197382 ##(Smalltalk.Pen) nil true 393478 ##(Smalltalk.LOGPEN) 8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 850 33 33 850 19999 19999 114721 19472 850 35 1 nil nil nil 738 138 144 34 2 802 #createAt:extent: 34 2 850 1 1 850 1515 1249 19040 802 #contextMenu: 34 1 19184 19040 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 8 #() 960 nil 27 8 'inputTree' nil 850 1 1 true 850 17 17 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 1515 1249 18928 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 34 1 19040 960 nil 27 7 false 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 2039 1241 18816 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 255 3 0 0 134 2 0 0] 34 3 18928 410 ##(Smalltalk.Splitter) 34 12 nil 18816 34 2 8 1140850688 1 20192 nil 672 nil 517 nil nil nil 7490 20192 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1515 1 850 19 1249 20192 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 245 2 0 0 0 0 0 0 254 2 0 0 112 2 0 0] 8 #() 960 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 18816 34 2 8 1140850688 131073 20432 nil nil nil 5 nil nil nil 20432 2210 170 176 944 true 170 192 34 4 410 ##(Smalltalk.ListView) 34 30 nil 20432 34 2 8 1409355853 1025 20560 5490 138 144 944 nil 5552 672 nil 5 5570 nil true 34 2 5618 1 1234 #addInput 6032 1 1 nil nil nil 5618 1 1234 #removeInput 6080 1 1 nil nil nil 6208 nil 134217729 nil nil nil nil nil nil nil 20560 nil 8 1949885807 6242 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6304 nil nil nil nil nil nil 138 144 34 2 6354 8 'Input' 661 #left 6242 #name 8 #() 2642 0 nil 2674 2 1 6464 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 20896 7 513 nil nil nil 20560 nil 1 nil 2642 0 nil 2674 7 1 2640 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] #item #deliverableIsOrganizationAsset #forecolor 6642 8 51 51 51 51 51 51 251 63 #fadedBy: #forecolor: 20976 7 257 nil 6354 8 'Creator Process' 201 #left 6242 #outputProcessName 8 #() 2642 0 nil 2674 2 1 6240 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] #outputProcessName 21136 7 513 nil nil nil 20560 nil 1 nil nil #report 944 nil 131169 nil 8 #(nil) 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 1 850 507 615 20560 802 #contextMenu: 34 1 20656 20560 802 #text: 34 1 8 'Input' 20560 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 253 0 0 0 51 1 0 0] 8 #() 960 nil 27 8 'inputDependenciesInputList' 410 ##(Smalltalk.ListView) 34 30 nil 20432 34 2 8 1409355853 1025 21488 5490 138 144 944 nil 5552 672 nil 5 5570 nil true 34 4 5618 1 1234 #addOutput 14784 1 1 nil nil nil 5618 1 1234 #removeOutput 14832 1 1 nil nil nil 5682 4097 5618 1 1234 #switchOutputEvent 8 'Switch Output Event' 1 1 nil nil nil 14960 nil 134217729 nil nil nil nil nil nil nil 21488 nil 8 1949885807 6242 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6304 nil nil nil nil nil nil 138 144 34 1 6354 8 'Output' 661 #left 6242 #name 8 #() 2642 0 nil 2674 2 1 6464 15152 15168 15184 #name 21888 7 513 nil nil nil 21488 nil 1 nil 2642 0 nil 2674 27 1 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:ctx |  | presenter |
presenter := ctx view presenter topShell inputTreePresenter.
(presenter model asOrderedCollection
includes: ctx item deliverable) 	
ifTrue: [ctx forecolor: Color darkBlue].
(((presenter model asOrderedCollection reject: [:each | each isDeliverable])
inject: OrderedCollection new into: [:all :each | 
all addAll: (each input collect: [:out | out deliverable]). all])
includes: ctx item deliverable)
ifTrue: [ctx forecolor: Color darkMagenta].
(presenter model roots last == ctx item deliverable)
ifTrue: [ctx forecolor: Color red].
]' 8 #[206 23 105 226 0 159 160 161 70 162 163 226 6 165 184 122 17 38 168 187 97 226 36 163 206 24 112 226 12 106 189 43 146 206 25 219 15 17 226 47 206 26 112 226 7 106 216 48 216 49 73 106 216 82 226 6 165 184 123 17 38 216 19 187 97 226 36 216 20 216 21 226 6 165 141 123 17 38 216 22 187 106 60 106] #view #presenter #topShell #inputTreePresenter #model #asOrderedCollection #item #deliverable #includes: ##(Smalltalk.Color) #darkBlue #forecolor: #isDeliverable #reject: 144 #input #collect: #addAll: #inject:into: #darkMagenta #roots #last #red 21920 2642 0 nil 21936 57 257 nil 2642 0 nil 21936 77 513 nil 2642 0 nil 21936 89 257 nil 9 65793 nil #report 944 nil 131169 nil 8 #(nil) 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 633 850 507 617 21488 802 #contextMenu: 34 1 21584 21488 802 #text: 34 1 8 'Output' 21488 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 60 1 0 0 253 0 0 0 112 2 0 0] 8 #() 960 nil 27 8 'inputDependenciesOutputList' nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1533 1 850 507 1249 20432 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 2 0 0 0 0 0 0 251 3 0 0 112 2 0 0] 34 3 20560 410 ##(Smalltalk.Splitter) 34 12 nil 20432 34 2 8 1140850688 1 22480 nil 672 nil 517 nil nil nil 7490 22480 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 615 850 507 19 22480 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 51 1 0 0 253 0 0 0 60 1 0 0] 8 #() 960 nil 27 21488 960 nil 27 960 nil 27 2562 2594 8 'Output Dependencies' 2642 0 nil 2674 6 1 ##(Smalltalk.SmallInteger) 8 'doIt' 8 '(CardLabel text: ''Output Dependencies'' iconBlock: [PMIOutput icon])' 8 #[29 30 34 112 31 161 106 194 105] 2592 22752 ##(Smalltalk.PMBOKOutputDefinition) #icon #text:iconBlock: 22768 11 1 nil nil 410 ##(Smalltalk.ContainerView) 34 15 nil 3680 34 2 8 1140850688 131073 22848 nil nil nil 5 nil nil nil 22848 2210 170 176 34 2 410 ##(Smalltalk.ScrollingDecorator) 34 18 nil 22848 34 2 8 1143996416 131073 22960 nil nil nil 5 nil nil nil 22960 18018 true 170 192 34 2 410 ##(Smalltalk.MoenTreeView) 34 30 nil 22960 34 2 8 1409286144 1 23072 19106 nil 5552 19138 nil nil nil 170 192 944 672 nil 517 5570 nil true 34 3 5618 1 1234 #generateOutputTree 8 'Generate Output Tree' 1 1 nil nil nil 5682 4097 5618 1 1234 #openProcessOutputTreeImage 8 'Open Image' 1 1 nil nil nil 8 '' nil 134217729 nil nil nil nil nil nil nil 23072 19346 nil 19378 nil nil nil nil 850 1 1 23376 nil nil nil nil nil 7 6242 #name 19440 ##(Smalltalk.MoenTreeView) 268435459 850 5 3 6304 850 1 1 41 nil 19490 nil true 19522 8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 850 33 33 850 19999 19999 114721 23424 850 35 1 nil nil nil 738 138 144 34 2 802 #createAt:extent: 34 2 850 1 1 850 1515 1249 23072 802 #contextMenu: 34 1 23184 23072 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 8 #() 960 nil 27 8 'outputTree' nil 850 1 1 true 850 17 17 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 1515 1249 22960 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 34 1 23072 960 nil 27 7 false 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 9 53 850 2039 1241 22848 898 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 26 0 0 0 255 3 0 0 134 2 0 0] 34 3 22960 410 ##(Smalltalk.Splitter) 34 12 nil 22848 34 2 8 1140850688 1 24112 nil 672 nil 517 nil nil nil 7490 24112 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1515 1 850 19 1249 24112 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 245 2 0 0 0 0 0 0 254 2 0 0 112 2 0 0] 8 #() 960 nil 27 410 ##(Smalltalk.ContainerView) 34 15 nil 22848 34 2 8 1140850688 131073 24352 nil nil nil 5 nil nil nil 24352 2210 170 176 944 true 170 192 34 4 410 ##(Smalltalk.ListView) 34 30 nil 24352 34 2 8 1409355853 1025 24480 5490 138 144 944 nil 5552 672 nil 5 5570 nil true 34 6 5618 1 1234 #generateDeliverableTree 8 'Generate Deliverable Tree' 1 1 nil nil nil 5682 4097 5618 1 1234 #addOutput 14784 1 1 nil nil nil 5618 1 1234 #removeOutput 14832 1 1 nil nil nil 5682 4097 5618 1 1234 #switchOutputEvent 21728 1 1 nil nil nil 14960 nil 134217729 nil nil nil nil nil nil nil 24480 nil 8 1949885807 6242 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6304 nil nil nil nil nil nil 138 144 34 1 6354 8 'Output' 661 #left 6242 #name 8 #() 2642 0 nil 2674 2 1 6464 15152 15168 15184 #name 24928 7 513 nil nil nil 24480 nil 1 nil 2642 0 nil 2674 27 1 2640 8 'doIt' 8 '[:ctx |  | presenter |
presenter := ctx view presenter topShell outputTreePresenter.
(presenter model asOrderedCollection
includes: ctx item deliverable) 	
ifTrue: [ctx forecolor: Color darkBlue].
(((presenter model asOrderedCollection reject: [:each | each isDeliverable])
inject: OrderedCollection new into: [:all :each | 
all addAll: (each input collect: [:out | out deliverable]). all])
includes: ctx item deliverable)
ifTrue: [ctx forecolor: Color darkMagenta].
(presenter model roots last == ctx item deliverable)
ifTrue: [ctx forecolor: Color red].
]' 8 #[206 23 105 226 0 159 160 161 70 162 163 226 6 165 184 122 17 38 168 187 97 226 36 163 206 24 112 226 12 106 189 43 146 206 25 219 15 17 226 47 206 26 112 226 7 106 216 48 216 49 73 106 216 82 226 6 165 184 123 17 38 216 19 187 97 226 36 216 20 216 21 226 6 165 141 123 17 38 216 22 187 106 60 106] #view #presenter #topShell #outputTreePresenter #model #asOrderedCollection #item #deliverable #includes: ##(Smalltalk.Color) #darkBlue #forecolor: #isDeliverable #reject: 144 #input #collect: #addAll: #inject:into: #darkMagenta #roots #last #red 24960 2642 0 nil 24976 57 257 nil 2642 0 nil 24976 77 513 nil 2642 0 nil 24976 89 257 nil 9 65793 nil #report 944 nil 131169 nil 8 #(nil) 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 633 850 507 617 24480 802 #contextMenu: 34 1 24576 24480 802 #text: 34 1 8 'Output' 24480 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 60 1 0 0 253 0 0 0 112 2 0 0] 8 #() 960 nil 27 8 'outputDependenciesOutputList' 410 ##(Smalltalk.ListView) 34 30 nil 24352 34 2 8 1409355853 1025 25360 5490 138 144 944 nil 5552 672 nil 5 5570 nil true 34 4 5618 1 1234 #gotoGeneratorProcess 8 'Goto Generator Process' 1025 1 nil nil nil 5682 4097 5618 1 1234 #addInput 6032 1 1 nil nil nil 5618 1 1234 #removeInput 6080 1 1 nil nil nil 6208 nil 134217729 nil nil nil nil nil nil nil 25360 nil 8 1949885807 6242 #displayString 8 #() ##(Smalltalk.IconicListAbstract) 6304 nil nil nil nil nil nil 138 144 34 2 6354 8 'Input' 661 #left 6242 #name 8 #() 2642 0 nil 2674 2 1 6464 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] #name 25760 7 513 nil nil nil 25360 nil 1 nil 2642 0 nil 2674 7 1 2640 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset 
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] #item #deliverableIsOrganizationAsset #forecolor 6642 8 51 51 51 51 51 51 251 63 #fadedBy: #forecolor: 25840 7 257 nil 6354 8 'Creator Process' 201 #left 6242 #outputProcessName 8 #() 2642 0 nil 2674 2 1 6240 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] #outputProcessName 26000 7 513 nil nil nil 25360 nil 1 nil nil #report 944 nil 131169 nil 8 #(nil) 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 1 850 507 615 25360 802 #contextMenu: 34 1 25456 25360 802 #text: 34 1 8 'Input' 25360 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 253 0 0 0 51 1 0 0] 8 #() 960 nil 27 8 'outputDependenciesInputList' nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1533 1 850 507 1249 24352 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 2 0 0 0 0 0 0 251 3 0 0 112 2 0 0] 34 3 25360 410 ##(Smalltalk.Splitter) 34 12 nil 24352 34 2 8 1140850688 1 26512 nil 672 nil 517 nil nil nil 7490 26512 nil 1 #left nil nil nil 7520 7536 nil 7520 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 615 850 507 19 26512 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 51 1 0 0 253 0 0 0 60 1 0 0] 8 #() 960 nil 27 24480 960 nil 27 960 nil 27 3920 170 192 944 nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 3680 34 2 8 1140916736 1 26768 5490 138 144 34 4 3808 18704 22736 17568 nil 5552 nil nil 1 nil nil nil 26768 nil 8 1949556446 2642 0 nil 8738 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 26896 7 257 nil 2642 0 nil 8738 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 26944 7 257 nil 6304 nil nil nil nil nil #smallIcons nil nil nil nil nil 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 1 850 2055 1301 26768 802 #basicSelectionsByIndex: 34 1 8 #(1) 26768 802 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 26768 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 138 2 0 0] 8 #() 960 nil 27 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 2055 1301 3680 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 138 2 0 0] 34 5 3920 18816 22848 17680 26768 960 nil 27 960 nil 27 3408 170 192 944 nil 410 ##(Smalltalk.TabViewXP) 34 28 nil 2432 34 2 8 1140916736 1 27408 5490 138 144 34 2 2608 3296 nil 5552 nil nil 1 nil nil nil 27408 nil 8 1949556446 2642 0 nil 8738 2 3 ##(Smalltalk.ListControlView) #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] #displayString 27536 7 257 nil 2642 0 nil 8738 2 3 ##(Smalltalk.IconicListAbstract) #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] #iconImageIndex 27584 7 257 nil 6304 nil nil nil nil nil #smallIcons nil nil nil nil nil 738 138 144 34 3 802 #createAt:extent: 34 2 850 1 1 850 2071 1361 27408 802 #basicSelectionsByIndex: 34 1 8 #(2) 27408 802 #tcmSetExtendedStyle:dwExStyle: 8 #(-1 0) 27408 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 168 2 0 0] 8 #() 960 nil 27 738 138 144 34 1 802 #createAt:extent: 34 2 850 1 1 850 2071 1361 2432 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 168 2 0 0] 34 3 2752 3408 27408 960 nil 27 960 nil 27 170 192 944 nil 738 138 144 34 1 802 #createAt:extent: 34 2 850 651 21 850 2071 1411 416 898 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 69 1 0 0 10 0 0 0 80 5 0 0 203 2 0 0] 34 2 512 2144 960 nil 27 )! !
!PMBOKProcessDefinitionComposite class categoriesFor: #defaultModel!public! !
!PMBOKProcessDefinitionComposite class categoriesFor: #resource_Default_view!public!resources-views! !

