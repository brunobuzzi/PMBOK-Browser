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

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 0 0 5 0 0 0 528 498 1 1 0 0 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 528 98 2 8 1140850688 131073 608 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 5 0 0 0 608 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Toolbar) 8 #resource_PMI_Browser_toolbar 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 930 585 51 608 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 36 1 0 0 25 0 0 0] 98 0 930 193 193 0 27 410 768 98 25 0 528 98 2 8 1409288972 131137 1056 0 690 8 4278190080 0 517 0 263174 ##(Smalltalk.Font) 0 16 459014 ##(Smalltalk.LOGFONT) 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 930 193 193 0 1056 690 1136 8 4294903395 234 256 1024 234 256 98 8 51429 1115910 ##(Smalltalk.ToolbarIconButton) 51429 0 1056 1 1180998 4 ##(Smalltalk.CommandDescription) 8 #showProcessDefinition 8 'Show Process Definition' 1 1 263494 3 ##(Smalltalk.Icon) 0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'Process.ico' 2032142 ##(Smalltalk.STBExternalResourceLibraryProxy) 8 'dolphindr006.dll' 0 395334 3 ##(Smalltalk.Bitmap) 0 16 0 0 0 0 3 930 33 33 1 51431 1330 51431 0 1056 1 1362 8 #showInputDefinition 8 'Show Input Definition' 1 1 1426 0 16 1472 5 786694 ##(Smalltalk.ShellLibrary) 1554 0 16 0 0 0 0 3 930 33 33 1 51433 1330 51433 0 1056 1 1362 8 #showToolsDefinition 8 'Show Tools Definition' 1 1 1426 0 16 1472 8 'Class.ico' 1520 1554 0 16 0 0 0 0 3 930 33 33 1 51435 1330 51435 0 1056 1 1362 8 #showOutputDefinition 8 'Show Output Definition' 1 1 1426 0 16 1472 8 'TransformationRule.ico' 1520 1554 0 16 0 0 0 0 3 930 33 33 1 98 6 1050118 ##(Smalltalk.ToolbarSeparator) 0 0 1056 3 0 1 1344 1600 1744 1872 2018 0 0 1056 3 0 1 234 240 98 8 1840 5 1568 1 1712 3 1968 7 0 1 0 930 33 33 930 45 45 0 656198 1 ##(Smalltalk.FlowLayout) 1 1 1 802 202 208 98 2 866 896 98 2 930 585 1 930 1487 51 1056 866 8 #updateSize 1024 1056 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 36 1 0 0 0 0 0 0 11 4 0 0 25 0 0 0] 98 0 1040 0 27 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 1 1 930 2071 51 528 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 25 0 0 0] 98 2 1056 608 1040 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 2528 0 0 0 5 0 0 0 2528 1180166 ##(Smalltalk.ProportionalLayout) 234 240 1024 16 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 1 51 930 2071 1361 2528 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 11 4 0 0 193 2 0 0] 98 1 410 8 ##(Smalltalk.CardContainer) 98 16 0 2528 98 2 8 1409286144 131073 2816 0 690 8 4278190080 0 5 0 0 0 2816 655878 ##(Smalltalk.CardLayout) 202 208 98 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Process Description' 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 6 1 8 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Process Description'' iconBlock: [PMIProcessDefinition icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 3056 8 ##(Smalltalk.PMBOKProcessDefinition) 8 #icon 8 #text:iconBlock: 3088 11 1 0 0 410 432 98 15 0 2816 98 2 8 1140850688 131073 3248 0 0 0 5 0 0 0 3248 2594 234 240 1024 32 234 256 98 2 410 624 98 14 0 3248 98 2 8 1140850688 131073 3376 0 690 8 4278190080 0 5 0 0 0 3376 738 8 ##(Smalltalk.RichTextComposite) 8 #resource_Default_view 0 802 202 208 98 1 866 896 98 2 930 1 1 930 2055 1305 3376 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 140 2 0 0] 1024 1040 0 27 8 'processDescription' 0 802 202 208 98 1 866 896 98 2 930 9 49 930 2055 1305 3248 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 7 4 0 0 164 2 0 0] 98 1 3376 1040 0 27 2994 3026 8 'Properties' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Properties'' iconBlock: [ValueConverter  icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 3872 8 ##(Smalltalk.ValueConverter) 3216 3232 3888 11 1 0 0 410 432 98 15 0 2816 98 2 8 1140850688 131073 3984 0 0 0 5 0 0 0 3984 2594 234 240 1024 32 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 9 49 930 2055 1305 3984 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 7 4 0 0 164 2 0 0] 98 1 410 2832 98 16 0 3984 98 2 8 1409286144 131073 4256 0 690 8 4278190080 0 5 0 0 0 4256 2930 202 208 98 4 2994 3026 8 'Connections' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Connections'' iconBlock: [ValueAdaptor icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 4432 8 ##(Smalltalk.ValueAdaptor) 3216 3232 4448 11 1 0 0 410 432 98 15 0 4256 98 2 8 1140850688 131073 4544 0 0 0 5 0 0 0 4544 2594 234 240 1024 32 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 9 49 930 2039 1249 4544 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 255 3 0 0 136 2 0 0] 98 5 410 432 98 15 0 4544 98 2 8 1140850688 131073 4816 0 0 0 5 0 0 0 4816 2594 234 240 1024 16 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 1 1 930 667 1249 4816 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 112 2 0 0] 98 1 410 432 98 15 0 4816 98 2 8 1140850688 131073 5088 0 0 0 5 0 0 0 5088 2594 234 240 1024 16 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 1 1 930 667 1249 5088 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 112 2 0 0] 98 3 410 432 98 15 0 5088 98 2 8 1140850688 131073 5360 0 0 0 5 0 0 0 5360 498 1 1 410 768 98 25 0 5360 98 2 8 1409288972 131137 5440 0 690 8 4278190080 0 517 0 1154 0 16 1186 8 #[243 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 930 193 193 0 5440 690 5520 8 4294903395 234 256 1024 234 256 98 4 51487 853766 ##(Smalltalk.ToolbarButton) 51487 0 5440 1 1362 8 #moveInputDown 8 'Move Down' 1 1 0 1554 0 16 1472 8 'ListBar.bmp' 1520 0 7 930 161 33 3 51485 5682 51485 0 5440 1 1362 8 #moveInputUp 8 'Move up' 1 1 0 5760 1 98 2 5808 5696 234 240 98 2 5760 1 0 1 0 930 33 33 930 45 45 0 2130 1 1 1 802 202 208 98 2 866 896 98 2 930 1 1 930 667 51 5440 866 2288 1024 5440 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 25 0 0 0] 98 0 1040 0 27 0 0 0 410 8 ##(Smalltalk.ListView) 98 30 0 5360 98 2 8 1409355853 1025 6144 590662 2 ##(Smalltalk.ListModel) 202 208 1024 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 690 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu) 0 16 98 15 984134 2 ##(Smalltalk.CommandMenuItem) 1 1362 8 #browseProcessWithInput 8 'Browse Process with Input' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem) 4097 6386 1 1362 8 #openCreatorProcess 8 'Open Creator Process' 1 1 0 0 0 6466 4097 6386 1 1362 8 #openAllInputs 8 'Open All' 1 1 0 0 0 6466 4097 6386 1 1362 8 #addTemplateToInput 8 'Add Template' 1 1 0 0 0 6386 1 1362 8 #removeTemplateFromInput 8 'Remove Template' 1 1 0 0 0 6338 0 16 98 0 8 'Templates' 8 #inputTemplates 134217729 0 0 0 0 0 6466 4097 6386 1 1362 8 #addInput 8 'Add Input' 1 1 0 0 0 6386 1 1362 8 #removeInput 8 'Remove Input' 1 1 0 0 0 6466 4097 6386 1 1362 8 #addInputArtifact 8 'Add Artifact' 1 1 0 0 0 6386 1 1362 8 #removeInputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 6144 0 8 4294902909 459270 ##(Smalltalk.Message) 8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract) 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 0 202 208 98 3 920646 5 ##(Smalltalk.ListViewColumn) 8 'Input' 661 8 #left 7170 8 #name 98 0 3074 0 0 3106 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 7392 7424 7 513 0 0 0 6144 0 1 0 3074 0 0 3106 7 1 3072 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] 8 #item 8 #deliverableIsOrganizationAsset 8 #forecolor 327734 ##(Smalltalk.Float) 8 51 51 51 51 51 51 251 63 8 #fadedBy: 8 #forecolor: 7552 7 257 0 7314 8 'Creator Process' 201 7360 7170 8 #outputProcessName 98 0 3074 0 0 3106 2 1 7168 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] 7792 7824 7 513 0 0 0 6144 0 1 0 0 7314 8 'Type' 201 7360 7170 8 #printType 98 0 3074 0 0 3106 2 1 7168 8 'doIt' 8 '[:a : b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 7952 7984 7 513 0 0 0 6144 0 1 0 0 8 #report 1024 0 131169 0 0 802 202 208 98 3 866 896 98 2 930 1 51 930 667 563 6144 866 8 #contextMenu: 98 1 6352 6144 866 8 #text: 98 1 8 'Input' 6144 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 77 1 0 0 50 1 0 0] 98 0 1040 0 27 234 256 98 2 6144 8 'inputs' 0 802 202 208 98 1 866 896 98 2 930 1 1 930 667 613 5360 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 50 1 0 0] 98 2 5440 6144 1040 0 27 410 8 ##(Smalltalk.Splitter) 98 12 0 5088 98 2 8 1140850688 262145 8560 0 690 8 4278190080 0 517 0 0 0 8560 802 202 208 98 1 866 896 98 2 930 1 613 930 667 23 8560 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 50 1 0 0 77 1 0 0 61 1 0 0] 98 0 1040 0 27 410 2832 98 16 0 5088 98 2 8 1409286144 131073 8832 0 690 8 4278190080 0 5 0 0 0 8832 2930 202 208 98 2 2994 3026 8 'Input' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Input'' iconBlock: [PMIInput icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 9008 8 ##(Smalltalk.PMBOKInputDefinition) 3216 3232 9024 11 1 0 0 410 624 98 14 0 8832 98 2 8 1140850688 131073 9120 0 690 8 4278190080 0 5 0 0 0 9120 738 3488 3504 0 802 202 208 98 1 866 896 98 2 930 9 49 930 651 559 9120 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 73 1 0 0 47 1 0 0] 1024 1040 0 27 2994 3026 8 'Deliverable' 3074 0 0 3106 6 1 3024 8 'doIt' 8 '(CardLabel text: ''Deliverable'' iconBlock: [PMIDeliverable icon])' 8 #[29 30 34 112 31 161 106 194 105] 3024 9408 8 ##(Smalltalk.PMBOKDeliverableDefinition) 3216 3232 9424 11 1 0 0 410 624 98 14 0 8832 98 2 8 1140850688 131073 9520 0 690 8 4278190080 0 5 0 0 0 9520 738 3488 3504 0 802 202 208 98 1 866 896 98 2 930 9 49 930 651 559 9520 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 73 1 0 0 47 1 0 0] 1024 1040 0 27 9120 234 256 98 4 9120 8 'inputDescription' 9520 8 'inputDeliverableDescription' 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 8832 98 2 8 1140916736 1 9840 6226 202 208 98 2 8992 9392 0 6288 0 0 1 0 0 0 9840 0 8 4294902941 3074 0 0 918822 ##(Smalltalk.CompiledMethod) 2 3 8 ##(Smalltalk.ListControlView) 8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 7200 9984 7 257 0 3074 0 0 10002 2 3 7232 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 10080 7 257 0 7264 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 802 202 208 98 3 866 896 98 2 930 1 1 930 667 615 9840 866 8 #basicSelectionsByIndex: 98 1 98 1 3 9840 866 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 9840 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 51 1 0 0] 98 0 1040 0 27 802 202 208 98 1 866 896 98 2 930 1 635 930 667 615 8832 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 61 1 0 0 77 1 0 0 112 2 0 0] 98 3 9120 9520 9840 1040 0 27 1040 0 27 1040 0 27 410 8576 98 12 0 4544 98 2 8 1140850688 1 10608 0 690 8 4278190080 0 517 0 0 0 10608 802 202 208 98 1 866 896 98 2 930 667 1 930 19 1249 10608 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 77 1 0 0 0 0 0 0 86 1 0 0 112 2 0 0] 98 0 1040 0 27 410 432 98 15 0 4544 98 2 8 1140850688 131073 10864 0 0 0 5 0 0 0 10864 2594 234 240 1024 16 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 685 1 930 667 1249 10864 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 86 1 0 0 0 0 0 0 163 2 0 0 112 2 0 0] 98 3 410 432 98 15 0 10864 98 2 8 1140850688 131073 11136 0 0 0 5 0 0 0 11136 498 1 1 410 768 98 25 0 11136 98 2 8 1409288972 131137 11216 0 690 5520 0 517 0 1154 0 16 1186 5568 930 193 193 0 11216 690 5520 8 4294903395 234 256 1024 234 256 98 4 51537 5682 51537 0 11216 1 1362 8 #moveToolUp 5856 1 1 0 5760 1 51539 5682 51539 0 11216 1 1362 8 #moveToolDown 5744 1 1 0 5760 3 98 2 11424 11472 234 240 98 2 5760 1 0 1 0 930 33 33 930 45 45 0 2130 1 1 1 802 202 208 98 2 866 896 98 2 930 1 1 930 667 51 11216 866 2288 1024 11216 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 25 0 0 0] 98 0 1040 0 27 0 0 0 410 6160 98 30 0 11136 98 2 8 1409355853 1025 11792 6226 202 208 1024 0 6288 690 6320 0 5 6338 0 16 98 6 6386 1 1362 8 #addTool 8 'Add Tool' 1 1 0 0 0 6386 1 1362 8 #removeTool 8 'Remove Tool' 1 1 0 0 0 6466 4097 6386 1 1362 8 #openAllTechniques 8 'Open All' 1 1 0 0 0 6466 4097 6338 0 16 98 0 8 'Images' 8 #images 134217729 0 0 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 11792 0 8 4294902909 7170 7200 98 0 7232 7264 0 0 0 0 0 0 202 208 98 1 7314 8 'Tools and Techniques' 661 7360 7170 7392 98 0 3074 0 0 3106 2 1 7456 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 7392 12384 7 513 0 0 0 11792 0 1 0 3074 0 0 3106 7 1 8 ##(Smalltalk.UndefinedObject) 8 'doIt' 8 '[:ctx | 
ctx item hasImages 
ifTrue: [ctx forecolor: Color darkBlue]
ifFalse: [ctx forecolor: Color black ]
]' 8 #[35 105 226 0 159 122 17 31 161 180 106 17 31 163 180 106] 7632 8 #hasImages 8 ##(Smalltalk.Color) 8 #darkBlue 7728 8 #black 12464 7 257 0 8064 1024 0 131169 0 0 802 202 208 98 3 866 896 98 2 930 1 51 930 667 563 11792 866 8208 98 1 11904 11792 866 8256 98 1 8 'Tools and Techniques' 11792 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 77 1 0 0 50 1 0 0] 98 0 1040 0 27 234 256 98 2 11792 8 'tools' 0 802 202 208 98 1 866 896 98 2 930 1 1 930 667 613 11136 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 50 1 0 0] 98 2 11216 11792 1040 0 27 410 8576 98 12 0 10864 98 2 8 1140850688 262145 13072 0 690 8656 0 517 0 0 0 13072 802 202 208 98 1 866 896 98 2 930 1 613 930 667 23 13072 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 50 1 0 0 77 1 0 0 61 1 0 0] 98 0 1040 0 27 410 2832 98 16 0 10864 98 2 8 1409286144 131073 13312 0 690 8 4278190080 0 5 0 0 0 13312 2930 202 208 98 2 2994 3026 8 'Tool' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Tool'' iconBlock: [PMIToolOrTechnique icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 13488 8 ##(Smalltalk.PMBOKToolOrTechnique) 3216 3232 13504 11 1 0 0 410 624 98 14 0 13312 98 2 8 1140850688 131073 13600 0 690 9200 0 5 0 0 0 13600 738 3488 3504 0 802 202 208 98 1 866 896 98 2 930 9 49 930 651 559 13600 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 73 1 0 0 47 1 0 0] 1024 1040 0 27 2994 3026 8 'Specific Description' 3074 0 0 3106 7 1 80 8 'doIt' 8 '(CardLabel text: ''Specific Description'' iconBlock: [Icon fromId: ''MetaClass.ico''])' 8 #[29 30 35 113 31 32 180 106 195 105] 3024 13872 1424 8 'MetaClass.ico' 8 #fromId: 3232 13888 11 1 0 0 410 624 98 14 0 13312 98 2 8 1140850688 131073 14000 0 690 8 4278190080 0 5 0 0 0 14000 738 3488 3504 0 802 202 208 98 1 866 896 98 2 930 9 49 930 651 559 14000 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 73 1 0 0 47 1 0 0] 1024 1040 0 27 13600 234 256 98 4 13600 8 'toolDescription' 14000 8 'toolSpecificDescription' 0 410 9856 98 28 0 13312 98 2 8 1140916736 1 14320 6226 202 208 98 2 13472 13856 0 6288 0 0 1 0 0 0 14320 0 8 4294902941 3074 0 0 10002 2 3 10032 10048 575230339 8 #[30 105 226 0 106] 7200 14448 7 257 0 3074 0 0 10002 2 3 7232 10112 579598755 8 #[30 105 226 0 106] 10144 14496 7 257 0 7264 0 0 0 0 0 10160 0 0 0 0 0 802 202 208 98 3 866 896 98 2 930 1 1 930 667 615 14320 866 10304 98 1 98 1 3 14320 866 10368 98 2 -1 1 14320 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 77 1 0 0 51 1 0 0] 98 0 1040 0 27 802 202 208 98 1 866 896 98 2 930 1 635 930 667 615 13312 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 61 1 0 0 77 1 0 0 112 2 0 0] 98 3 13600 14000 14320 1040 0 27 1040 0 27 410 8576 98 12 0 4544 98 2 8 1140850688 1 14944 0 690 10688 0 517 0 0 0 14944 802 202 208 98 1 866 896 98 2 930 1351 1 930 19 1249 14944 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 163 2 0 0 0 0 0 0 172 2 0 0 112 2 0 0] 98 0 1040 0 27 410 432 98 15 0 4544 98 2 8 1140850688 131073 15184 0 0 0 5 0 0 0 15184 2594 234 240 1024 16 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 1369 1 930 671 1249 15184 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 172 2 0 0 0 0 0 0 251 3 0 0 112 2 0 0] 98 3 410 432 98 15 0 15184 98 2 8 1140850688 131073 15456 0 0 0 5 0 0 0 15456 498 1 1 410 768 98 25 0 15456 98 2 8 1409288972 131137 15536 0 690 5520 0 517 0 1154 0 16 1186 5568 930 193 193 0 15536 690 5520 8 4294903395 234 256 1024 234 256 98 4 51589 5682 51589 0 15536 1 1362 8 #moveOutputUp 5856 1 1 0 5760 1 51591 5682 51591 0 15536 1 1362 8 #moveOutputDown 5744 1 1 0 5760 3 98 2 15744 15792 234 240 98 2 5760 1 0 1 0 930 33 33 930 45 45 0 2130 1 1 1 802 202 208 98 2 866 896 98 2 930 1 1 930 671 51 15536 866 2288 1024 15536 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 79 1 0 0 25 0 0 0] 98 0 1040 0 27 0 0 0 410 6160 98 30 0 15456 98 2 8 1409355853 1025 16112 6226 202 208 1024 0 6288 690 6320 0 5 6338 0 16 98 15 6386 1 1362 8 #browseProcessWithOutput 8 'Browse Process with Output' 1 1 0 0 0 6466 4097 6386 1 1362 8 #openAllOutputs 8 'Open All' 1 1 0 0 0 6466 4097 6386 1 1362 8 #addTemplateToOutput 8 'Add Template' 1 1 0 0 0 6386 1 1362 8 #removeTemplateFromOutput 8 'Remove Template' 1 1 0 0 0 6338 0 16 98 0 8 'Templates' 8 #outputTemplates 134217729 0 0 0 0 0 6466 4097 6338 0 16 98 0 8 'Images' 8 #outputImages 134217729 0 0 0 0 0 6466 4097 6386 1 1362 8 #addOutput 8 'Add Output' 1 1 0 0 0 6386 1 1362 8 #removeOutput 8 'Remove Output' 1 1 0 0 0 6466 4097 6386 1 1362 8 #addOutputArtifact 8 'Add Artifact' 1 1 0 0 0 6386 1 1362 8 #removeOutputArtifact 8 'Remove Artifact' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 16112 0 8 4294902909 7170 7200 98 0 7232 7264 0 0 0 0 0 0 202 208 98 2 7314 8 'Output' 661 7360 7170 7392 98 0 3074 0 0 3106 2 1 7456 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 7392 17136 7 513 0 0 0 16112 0 1 0 0 7314 8 'Type' 201 7360 7170 7952 98 0 3074 0 0 3106 2 1 7168 8 'doIt' 8 '[:a :b | a printType <= b printType]' 8 #[30 105 226 0 226 32 130 106] 7952 17280 7 513 0 0 0 16112 0 1 0 0 8064 1024 0 131169 0 0 802 202 208 98 3 866 896 98 2 930 1 51 930 671 563 16112 866 8208 98 1 16224 16112 866 8256 98 1 8 'Output' 16112 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 79 1 0 0 50 1 0 0] 98 0 1040 0 27 234 256 98 2 16112 8 'outputs' 0 802 202 208 98 1 866 896 98 2 930 1 1 930 671 613 15456 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 79 1 0 0 50 1 0 0] 98 2 15536 16112 1040 0 27 410 8576 98 12 0 15184 98 2 8 1140850688 262145 17808 0 690 8656 0 517 0 0 0 17808 802 202 208 98 1 866 896 98 2 930 1 613 930 671 23 17808 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 50 1 0 0 79 1 0 0 61 1 0 0] 98 0 1040 0 27 410 2832 98 16 0 15184 98 2 8 1409286144 131073 18048 0 690 8 4278190080 0 5 0 0 0 18048 2930 202 208 98 2 2994 3026 8 'Output' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Output'' iconBlock: [PMIOutput icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 18224 8 ##(Smalltalk.PMBOKOutputDefinition) 3216 3232 18240 11 1 0 0 410 624 98 14 0 18048 98 2 8 1140850688 131073 18336 0 690 9200 0 5 0 0 0 18336 738 3488 3504 0 802 202 208 98 1 866 896 98 2 930 9 49 930 655 559 18336 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 75 1 0 0 47 1 0 0] 1024 1040 0 27 2994 3026 8 'Deliverable' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Deliverable'' iconBlock: [PMIDeliverable icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 18608 9504 3216 3232 18624 11 1 0 0 410 624 98 14 0 18048 98 2 8 1140850688 131073 18704 0 690 8 4278190080 0 5 0 0 0 18704 738 3488 3504 0 802 202 208 98 1 866 896 98 2 930 9 49 930 655 559 18704 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 75 1 0 0 47 1 0 0] 1024 1040 0 27 18336 234 256 98 4 18704 8 'outputDeliverableDescription' 18336 8 'outputDescription' 0 410 9856 98 28 0 18048 98 2 8 1140916736 1 19024 6226 202 208 98 2 18208 18592 0 6288 0 0 1 0 0 0 19024 0 8 4294902941 3074 0 0 10002 2 3 10032 10048 575230339 8 #[30 105 226 0 106] 7200 19152 7 257 0 3074 0 0 10002 2 3 7232 10112 579598755 8 #[30 105 226 0 106] 10144 19200 7 257 0 7264 0 0 0 0 0 10160 0 0 0 0 0 802 202 208 98 3 866 896 98 2 930 1 1 930 671 615 19024 866 10304 98 1 98 1 3 19024 866 10368 98 2 -1 1 19024 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 79 1 0 0 51 1 0 0] 98 0 1040 0 27 802 202 208 98 1 866 896 98 2 930 1 635 930 671 615 18048 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 61 1 0 0 79 1 0 0 112 2 0 0] 98 3 18336 18704 19024 1040 0 27 1040 0 27 1040 0 27 2994 3026 8 'Process Diagram' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Process Diagram'' iconBlock: [PMIProcess icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 19680 3200 3216 3232 19696 11 1 0 0 410 432 98 15 0 4256 98 2 8 1140850688 131073 19776 0 0 0 5 0 0 0 19776 2594 234 240 1024 32 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 9 49 930 2039 1249 19776 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 255 3 0 0 136 2 0 0] 98 1 410 8 ##(Smalltalk.ScrollingDecorator) 98 18 0 19776 98 2 8 1143996416 131073 20048 0 0 0 5 0 0 0 20048 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout) 16 234 256 98 2 410 8 ##(Smalltalk.StaticBitmap) 98 17 0 20048 98 2 8 1149243662 1 20192 721990 2 ##(Smalltalk.ValueHolder) 0 0 1376774 ##(Smalltalk.PluggableSearchPolicy) 7170 8 #== 98 0 7170 8 #hash 98 0 0 0 0 5 0 0 0 20192 0 8 4294903337 852486 ##(Smalltalk.NullConverter) 0 0 32 0 802 202 208 98 1 866 896 98 2 930 1 1 930 2055 617 20192 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 52 1 0 0] 98 0 1040 0 27 8 'processImage' 0 930 1 1 16 930 17 17 802 202 208 98 1 866 896 98 2 930 1 1 930 2055 617 20048 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 52 1 0 0] 98 1 20192 1040 0 27 1040 0 27 2994 3026 8 'Input Dependencies' 3074 0 0 3106 6 1 3136 8 'doIt' 8 'CardLabel text: ''Input Dependencies'' iconBlock: [PMIInput icon]' 8 #[29 30 34 112 31 161 106 194 105] 3024 20880 9104 3216 3232 20896 11 1 0 0 410 432 98 15 0 4256 98 2 8 1140850688 131073 20976 0 0 0 5 0 0 0 20976 2594 234 240 98 2 410 20064 98 18 0 20976 98 2 8 1143996416 131073 21088 0 0 0 5 0 0 0 21088 20130 16 234 256 98 2 410 8 ##(Smalltalk.MoenTreeView) 98 30 0 21088 98 2 8 1409286144 1 21200 590918 3 ##(Smalltalk.TreeModel) 0 6288 525062 ##(Smalltalk.TreeNode) 0 0 0 234 256 1024 690 8 4278190080 0 517 6338 0 16 98 3 6386 1 1362 8 #generateInputTree 8 'Generate Input Tree' 1 1 0 0 0 6466 4097 6386 1 1362 8 #openProcessInputTreeImage 8 'Open Image' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 21200 788998 ##(Smalltalk.MoenTreeNode) 0 721926 ##(Smalltalk.MoenContour) 0 0 0 0 930 1 1 21648 0 0 0 0 0 7 7170 7392 98 0 21216 268435459 930 5 3 7264 930 1 1 41 0 197382 ##(Smalltalk.Pen) 0 16 393478 ##(Smalltalk.LOGPEN) 8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 930 33 33 930 19999 19999 114721 21712 930 35 1 0 0 0 802 202 208 98 2 866 896 98 2 930 1 1 930 1515 1249 21200 866 8208 98 1 21392 21200 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 98 0 1040 0 27 8 'inputTree' 0 930 1 1 16 930 17 17 802 202 208 98 1 866 896 98 2 930 1 1 930 1515 1249 21088 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 98 1 21200 1040 0 27 7 32 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 9 49 930 2039 1249 20976 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 255 3 0 0 136 2 0 0] 98 3 21088 410 8576 98 12 0 20976 98 2 8 1140850688 1 22432 0 690 8 4278190080 0 517 0 0 0 22432 802 202 208 98 1 866 896 98 2 930 1515 1 930 19 1249 22432 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 245 2 0 0 0 0 0 0 254 2 0 0 112 2 0 0] 98 0 1040 0 27 410 432 98 15 0 20976 98 2 8 1140850688 131073 22688 0 0 0 5 0 0 0 22688 2594 234 240 1024 16 234 256 98 4 410 6160 98 30 0 22688 98 2 8 1409355853 1025 22816 6226 202 208 1024 0 6288 690 6320 0 5 6338 0 16 98 2 6386 1 1362 6896 6912 1 1 0 0 0 6386 1 1362 6960 6976 1 1 0 0 0 7136 0 134217729 0 0 0 0 0 0 0 22816 0 8 4294902909 7170 7200 98 0 7232 7264 0 0 0 0 0 0 202 208 98 2 7314 8 'Input' 661 7360 7170 7392 98 0 3074 0 0 3106 2 1 7456 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 7392 23168 7 513 0 0 0 22816 0 1 0 3074 0 0 3106 7 1 3072 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] 7632 7648 7664 7682 8 51 51 51 51 51 51 251 63 7712 7728 23248 7 257 0 7314 8 'Creator Process' 201 7360 7170 7792 98 0 3074 0 0 3106 2 1 7168 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] 7792 23408 7 513 0 0 0 22816 0 1 0 0 8064 1024 0 131169 0 0 802 202 208 98 3 866 896 98 2 930 1 1 930 507 615 22816 866 8208 98 1 22928 22816 866 8256 98 1 8 'Input' 22816 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 253 0 0 0 51 1 0 0] 98 0 1040 0 27 8 'inputDependenciesInputList' 410 6160 98 30 0 22688 98 2 8 1409355853 1025 23744 6226 202 208 1024 0 6288 690 6320 0 5 6338 0 16 98 4 6386 1 1362 16736 16752 1 1 0 0 0 6386 1 1362 16800 16816 1 1 0 0 0 6466 4097 6386 1 1362 8 #switchOutputEvent 8 'Switch Output Event' 1 1 0 0 0 16976 0 134217729 0 0 0 0 0 0 0 23744 0 8 4294902909 7170 7200 98 0 7232 7264 0 0 0 0 0 0 202 208 98 1 7314 8 'Output' 661 7360 7170 7392 98 0 3074 0 0 3106 2 1 7456 17168 17184 17200 7392 24176 7 513 0 0 0 23744 0 1 0 3074 0 0 3106 27 1 12496 8 'doIt' 8 '[:ctx |  | presenter |
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
]' 8 #[206 23 105 226 0 159 160 161 70 162 163 226 6 165 184 122 17 38 168 187 97 226 36 163 206 24 112 226 12 106 189 43 146 206 25 219 15 17 226 47 206 26 112 226 7 106 216 48 216 49 73 106 216 82 226 6 165 184 123 17 38 216 19 187 97 226 36 216 20 216 21 226 6 165 141 123 17 38 216 22 187 106 60 106] 8 #view 8 #presenter 8 #topShell 8 #inputTreePresenter 8 #model 8 #asOrderedCollection 7632 8 #deliverable 8 #includes: 12576 12592 7728 8 #isDeliverable 8 #reject: 208 8 #input 8 #collect: 8 #addAll: 8 #inject:into: 8 #darkMagenta 8 #roots 8 #last 8 #red 24208 3074 0 0 24224 57 257 0 3074 0 0 24224 77 513 0 3074 0 0 24224 89 257 0 9 65793 0 8064 1024 0 131169 0 0 802 202 208 98 3 866 896 98 2 930 1 633 930 507 617 23744 866 8208 98 1 23856 23744 866 8256 98 1 8 'Output' 23744 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 60 1 0 0 253 0 0 0 112 2 0 0] 98 0 1040 0 27 8 'inputDependenciesOutputList' 0 802 202 208 98 1 866 896 98 2 930 1533 1 930 507 1249 22688 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 2 0 0 0 0 0 0 251 3 0 0 112 2 0 0] 98 3 22816 410 8576 98 12 0 22688 98 2 8 1140850688 1 25040 0 690 8 4278190080 0 517 0 0 0 25040 802 202 208 98 1 866 896 98 2 930 1 615 930 507 19 25040 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 51 1 0 0 253 0 0 0 60 1 0 0] 98 0 1040 0 27 23744 1040 0 27 1040 0 27 2994 3026 8 'Output Dependencies' 3074 0 0 3106 6 1 3136 8 'doIt' 8 '(CardLabel text: ''Output Dependencies'' iconBlock: [PMIOutput icon])' 8 #[29 30 34 112 31 161 106 194 105] 3024 25328 18320 3216 3232 25344 11 1 0 0 410 432 98 15 0 4256 98 2 8 1140850688 131073 25424 0 0 0 5 0 0 0 25424 2594 234 240 98 2 410 20064 98 18 0 25424 98 2 8 1143996416 131073 25536 0 0 0 5 0 0 0 25536 20130 16 234 256 98 2 410 21216 98 30 0 25536 98 2 8 1409286144 1 25648 21282 0 6288 21314 0 0 0 234 256 1024 690 21376 0 517 6338 0 16 98 3 6386 1 1362 8 #generateOutputTree 8 'Generate Output Tree' 1 1 0 0 0 6466 4097 6386 1 1362 8 #openProcessOutputTreeImage 8 'Open Image' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 25648 21586 0 21618 0 0 0 0 930 1 1 26000 0 0 0 0 0 7 7170 7392 21680 21216 268435459 930 5 3 7264 930 1 1 41 0 21730 0 16 21762 8 #[0 0 0 0 1 0 0 0 0 0 0 0 192 192 192 0] 930 33 33 930 19999 19999 114721 26048 930 35 1 0 0 0 802 202 208 98 2 866 896 98 2 930 1 1 930 1515 1249 25648 866 8208 98 1 25776 25648 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 98 0 1040 0 27 8 'outputTree' 0 930 1 1 16 930 17 17 802 202 208 98 1 866 896 98 2 930 1 1 930 1515 1249 25536 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 245 2 0 0 112 2 0 0] 98 1 25648 1040 0 27 7 32 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 9 49 930 2039 1249 25424 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 255 3 0 0 136 2 0 0] 98 3 25536 410 8576 98 12 0 25424 98 2 8 1140850688 1 26736 0 690 22512 0 517 0 0 0 26736 802 202 208 98 1 866 896 98 2 930 1515 1 930 19 1249 26736 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 245 2 0 0 0 0 0 0 254 2 0 0 112 2 0 0] 98 0 1040 0 27 410 432 98 15 0 25424 98 2 8 1140850688 131073 26976 0 0 0 5 0 0 0 26976 2594 234 240 1024 16 234 256 98 4 410 6160 98 30 0 26976 98 2 8 1409355853 1025 27104 6226 202 208 1024 0 6288 690 6320 0 5 6338 0 16 98 6 6386 1 1362 8 #generateDeliverableTree 8 'Generate Deliverable Tree' 1 1 0 0 0 6466 4097 6386 1 1362 16736 16752 1 1 0 0 0 6386 1 1362 16800 16816 1 1 0 0 0 6466 4097 6386 1 1362 24000 24016 1 1 0 0 0 16976 0 134217729 0 0 0 0 0 0 0 27104 0 8 4294902909 7170 7200 98 0 7232 7264 0 0 0 0 0 0 202 208 98 1 7314 8 'Output' 661 7360 7170 7392 98 0 3074 0 0 3106 2 1 7456 17168 17184 17200 7392 27584 7 513 0 0 0 27104 0 1 0 3074 0 0 3106 27 1 3072 8 'doIt' 8 '[:ctx |  | presenter |
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
]' 8 #[206 23 105 226 0 159 160 161 70 162 163 226 6 165 184 122 17 38 168 187 97 226 36 163 206 24 112 226 12 106 189 43 146 206 25 219 15 17 226 47 206 26 112 226 7 106 216 48 216 49 73 106 216 82 226 6 165 184 123 17 38 216 19 187 97 226 36 216 20 216 21 226 6 165 141 123 17 38 216 22 187 106 60 106] 24288 24304 24320 8 #outputTreePresenter 24352 24368 7632 24384 24400 12576 12592 7728 24416 24432 208 24448 24464 24480 24496 24512 24528 24544 24560 27616 3074 0 0 27632 57 257 0 3074 0 0 27632 77 513 0 3074 0 0 27632 89 257 0 9 65793 0 8064 1024 0 131169 0 0 802 202 208 98 3 866 896 98 2 930 1 633 930 507 617 27104 866 8208 98 1 27216 27104 866 8256 98 1 8 'Output' 27104 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 60 1 0 0 253 0 0 0 112 2 0 0] 98 0 1040 0 27 8 'outputDependenciesOutputList' 410 6160 98 30 0 26976 98 2 8 1409355853 1025 28016 6226 202 208 1024 0 6288 690 6320 0 5 6338 0 16 98 4 6386 1 1362 8 #gotoGeneratorProcess 8 'Goto Generator Process' 1025 1 0 0 0 6466 4097 6386 1 1362 6896 6912 1 1 0 0 0 6386 1 1362 6960 6976 1 1 0 0 0 7136 0 134217729 0 0 0 0 0 0 0 28016 0 8 4294902909 7170 7200 98 0 7232 7264 0 0 0 0 0 0 202 208 98 2 7314 8 'Input' 661 7360 7170 7392 98 0 3074 0 0 3106 2 1 7456 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 7392 28448 7 513 0 0 0 28016 0 1 0 3074 0 0 3106 7 1 3072 8 'doIt' 8 '[:ctx | 
ctx item deliverableIsOrganizationAsset 
ifTrue: [ctx forecolor: (ctx forecolor fadedBy: 1.7)]]' 8 #[35 105 226 0 159 124 17 226 2 32 180 181 106 60 106] 7632 7648 7664 7682 8 51 51 51 51 51 51 251 63 7712 7728 28528 7 257 0 7314 8 'Creator Process' 201 7360 7170 7792 98 0 3074 0 0 3106 2 1 7168 8 'doIt' 8 '[:a :b | a outputProcessName <= b outputProcessName]' 8 #[30 105 226 0 226 32 130 106] 7792 28688 7 513 0 0 0 28016 0 1 0 0 8064 1024 0 131169 0 0 802 202 208 98 3 866 896 98 2 930 1 1 930 507 615 28016 866 8208 98 1 28128 28016 866 8256 98 1 8 'Input' 28016 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 253 0 0 0 51 1 0 0] 98 0 1040 0 27 8 'outputDependenciesInputList' 0 802 202 208 98 1 866 896 98 2 930 1533 1 930 507 1249 26976 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 254 2 0 0 0 0 0 0 251 3 0 0 112 2 0 0] 98 3 28016 410 8576 98 12 0 26976 98 2 8 1140850688 1 29184 0 690 25120 0 517 0 0 0 29184 802 202 208 98 1 866 896 98 2 930 1 615 930 507 19 29184 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 51 1 0 0 253 0 0 0 60 1 0 0] 98 0 1040 0 27 27104 1040 0 27 1040 0 27 4544 234 256 1024 0 410 9856 98 28 0 4256 98 2 8 1140916736 1 29440 6226 202 208 98 4 4416 20864 25312 19664 0 6288 0 0 1 0 0 0 29440 0 8 4294902941 3074 0 0 10002 2 3 10032 10048 575230339 8 #[30 105 226 0 106] 7200 29568 7 257 0 3074 0 0 10002 2 3 7232 10112 579598755 8 #[30 105 226 0 106] 10144 29616 7 257 0 7264 0 0 0 0 0 10160 0 0 0 0 0 802 202 208 98 3 866 896 98 2 930 1 1 930 2055 1305 29440 866 10304 98 1 98 1 3 29440 866 10368 98 2 -1 1 29440 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 140 2 0 0] 98 0 1040 0 27 802 202 208 98 1 866 896 98 2 930 1 1 930 2055 1305 4256 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 3 4 0 0 140 2 0 0] 98 5 4544 20976 25424 19776 29440 1040 0 27 1040 0 27 3984 234 256 1024 0 410 9856 98 28 0 2816 98 2 8 1140916736 1 30080 6226 202 208 98 2 3040 3856 0 6288 0 0 1 0 0 0 30080 0 8 4294902941 3074 0 0 10002 2 3 10032 10048 575230339 8 #[30 105 226 0 106] 7200 30208 7 257 0 3074 0 0 10002 2 3 7232 10112 579598755 8 #[30 105 226 0 106] 10144 30256 7 257 0 7264 0 0 0 0 0 10160 0 0 0 0 0 802 202 208 98 3 866 896 98 2 930 1 1 930 2071 1361 30080 866 10304 98 1 98 1 5 30080 866 10368 98 2 -1 1 30080 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 168 2 0 0] 98 0 1040 0 27 802 202 208 98 1 866 896 98 2 930 1 1 930 2071 1361 2816 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 11 4 0 0 168 2 0 0] 98 3 3248 3984 30080 1040 0 27 1040 0 27 234 256 1024 0 802 202 208 98 1 866 896 98 2 930 3199 21 930 2071 1411 416 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 74 10 0 0 203 2 0 0] 98 2 528 2528 1040 0 27)! !
!PMBOKProcessDefinitionComposite class categoriesFor: #defaultModel!public! !
!PMBOKProcessDefinitionComposite class categoriesFor: #resource_Default_view!public!resources-views! !

