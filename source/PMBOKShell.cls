"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #PMBOKShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKShell guid: (GUID fromString: '{28ef7634-b199-44ea-9700-78f966968fd8}')!
PMBOKShell comment: ''!
!PMBOKShell categoriesForClass!MVP-Presenters! !
!PMBOKShell methodsFor!

aboutPMIBrowser
	^PMBOKBrowserAboutShell show!

browseAreas
	^PMBOKKnowledgeAreaShell showOn: self projectModel knowledgeAreas!

browseArtifacts
	^PMBOKArtifactsBrowerShell showOn: PMBOKArtifactDefinition allSubclasses!

browseDeliverables
	^PMBOKDeliverableBrowserShell showOn: self projectModel deliverables!

browseGroups
	^PMBOKGroupsShell showOn: self projectModel groups!

browseTool
	^PMBOKToolsBrowserShell showOn: self projectModel toolsAndTechniques!

defaultLanguage
	^PMBOKLanguage default!

openPmbook

	ShellLibrary default shellOpen: self projectModel pmBookPath!

openPMIBrowser
	^PMBOKProjectDefinitionShell show: 'Default view2' on: self projectModel!

openPMIDefinitionBrowser
	^PMBOKProjectDefinitionShell show: 'Default view2' on: self projectModel

	"PMIProjectDefinitionShell showOn: PMIProjectDefinition default"!

openPortfolioBrowser
	PMBOKPortfolioBrowserShell showOn: PMBOKPortfolio cache!

projectModel

	^self defaultLanguage defaultPMIModel!

searchApprovedChangedWithText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search in Approved Changed' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self self projectModel searchApprovedChangeText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Approved Changed with text: <' , text , '>'!

searchChangedRequestStatusUpdateWithText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search in Changed Request Status Update'
				caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self projectModel searchChangedRequestStatusUpdateText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Changed Request Status Update with text: <' , text , '>'!

searchChangeRequestWithText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search in Change Request' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self projectModel searchChangeRequestText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Changed Request with text: <' , text , '>'!

searchDeliverableArtifactWithText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search in Deliverables' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self projectModel searchDeliverablesText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Deliverables with text: <' , text , '>'!

searchDocumentUpdateWithText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search in Document Update' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self projectModel searchDocumentUpdateText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Document Update with text: <' , text , '>'!

searchNonCreatedInput
	| inputs |
	inputs := self projectModel searchNonCreatedInput.
	DetalleDeOpciones 
		listaCon: inputs copyWithoutDuplicates
		para: 'PMI Deliverable list'
		titulo: 'Non Created Inputs'!

searchNonReferencedOutput
	| outputs |

	outputs := self projectModel searchNonReferencedOutput.

	DetalleDeOpciones listaCon: outputs copyWithoutDuplicates para: 'PMI Deliverable list' titulo: 'Non Referenced Outputs'!

searchProcessesWithInput
	| input processes |

	input := DetalleDeOpciones listaCon: self projectModel deliverables para: 'PMI Deliverable list' titulo: 'Select Deliverable'.
	input ifNil: [^self].
	input := input first asInput.

	processes := self projectModel getProcessesWithInput: input.

	self showProcesses: processes caption: 'Processes with Input <', input name, '>' searchedElement: input.!

searchProcessesWithInputArtifact
	| artifact processes |
	artifact := DetalleDeOpciones
				listaCon: (PMBOKArtifactDefinition allSubclasses collect: [:each | each new])
				para: 'PMI Artifacts types'
				titulo: 'Select Artifact'.
	artifact ifNil: [^self].
	artifact := artifact first class.
	processes := self projectModel getProcessesWithInputArtifact: artifact.
	self
		showProcesses: processes
		caption: 'Processes with Input Artifact <' , artifact name , '>'
		searchedElement: artifact!

searchProcessesWithOutput
	| output processes |

	output := DetalleDeOpciones listaCon: self projectModel deliverables para: 'PMI Deliverable list' titulo: 'Select Deliverable'.
	output ifNil: [^self].
	output := output first asInput.

	processes := self projectModel getProcessesWithOutput: output.

	self showProcesses: processes caption: 'Processes with Output <', output name, '>' searchedElement: output . !

searchProcessesWithOutputArtifact
	| artifact processes |
	artifact := DetalleDeOpciones
				listaCon: (PMBOKArtifactDefinition allSubclasses collect: [:each | each new])
				para: 'PMI Deliverable list'
				titulo: 'Select Artifact'.
	artifact ifNil: [^self].
	artifact := artifact first class.
	processes := self projectModel getProcessesWithOutputArtifact: artifact.
	self
		showProcesses: processes
		caption: 'Processes with Output Artifact <' , artifact name , '>'
		searchedElement: artifact!

searchProcessesWithTool
	| artifact processes |
	artifact := DetalleDeOpciones
				listaCon: (PMBOKArtifactDefinition allSubclasses collect: [:each | each new])
				para: 'PMI Artifacts types'
				titulo: 'Select Artifact'.
	artifact ifNil: [^self].
	artifact := artifact first class.
	processes := self projectModel getProcessesWithToolOrTechnique: artifact.
	self
		showProcesses: processes
		caption: 'Processes with Input Artifact <' , artifact name , '>'
		searchedElement: artifact!

searchProcessesWithToolOrTechnique: aPMIToolOrTechnique
	| processes |

	processes := self projectModel getProcessesWithToolOrTechnique: aPMIToolOrTechnique.

	self showProcesses: processes caption: 'Processes with Tool or Technique <', aPMIToolOrTechnique name, '>' searchedElement: aPMIToolOrTechnique. !

searchProductServiceWithText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search in Product/Service/Result' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self projectModel searchProductServiceResultText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Product/Service/Result with text: <' , text , '>'!

searchText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self projectModel globalSearchText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Global Search with text: <' , text , '>'!

searchValidatedChangeWithText
	| text collection presenter |
	text := Prompter prompt: 'Enter the Text to search in Validated Change' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].
	collection := (self projectModel searchValidatedChangeText: text) copyWithoutDuplicates.
	presenter := PMBOKArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Validated Change text: <' , text , '>'!

setPmbookPath
	| pathFile |

	pathFile := FileOpenDialog new
		fileTypes: #( ('PDF (*.pdf)' '*.pdf'));
		defaultExtension: 'pdf';
		showModal.

	pathFile ifNil: [^self].
	pathFile isEmpty ifTrue: [^self].

	self projectModel pmBookPath: pathFile.!

showDefinitionBrowser
	^PMBOKProjectDefinition examplePMIProcesses!

showMyTrees
	| tree presenter |
	tree := DetalleDeOpciones
				listaCon: self projectModel trees
				para: 'PMI Names'
				titulo: 'Select a Tree'
				orden: [:a :b | a name <= b name].
	tree ifNil: [^self].
	presenter := PMBOKTreeNodeDescriptionShell showOn: tree last tree.
	presenter view caption: 'PMI Tree for: <' , tree last name , '>'!

showProcessDefinitionFor: aPMIProcessDefinition
	PMBOKProcessDefinitionShell showOn: aPMIProcessDefinition!

showProcesses: anOrderedCollection caption: aString searchedElement: anPMIElement
	| presenter |
	presenter := PMBOKProcessSearchResultShell showForProcessesOn: anOrderedCollection
				searchedElement: anPMIElement.
	^presenter view topView caption: aString!

showTreeBuilder
	PMBOKTreeBuilderShell show! !
!PMBOKShell categoriesFor: #aboutPMIBrowser!public! !
!PMBOKShell categoriesFor: #browseAreas!public! !
!PMBOKShell categoriesFor: #browseArtifacts!public! !
!PMBOKShell categoriesFor: #browseDeliverables!public! !
!PMBOKShell categoriesFor: #browseGroups!public! !
!PMBOKShell categoriesFor: #browseTool!public! !
!PMBOKShell categoriesFor: #defaultLanguage!public! !
!PMBOKShell categoriesFor: #openPmbook!public! !
!PMBOKShell categoriesFor: #openPMIBrowser!public! !
!PMBOKShell categoriesFor: #openPMIDefinitionBrowser!public! !
!PMBOKShell categoriesFor: #openPortfolioBrowser!public! !
!PMBOKShell categoriesFor: #projectModel!public! !
!PMBOKShell categoriesFor: #searchApprovedChangedWithText!public!searching! !
!PMBOKShell categoriesFor: #searchChangedRequestStatusUpdateWithText!public!searching! !
!PMBOKShell categoriesFor: #searchChangeRequestWithText!public!searching! !
!PMBOKShell categoriesFor: #searchDeliverableArtifactWithText!public!searching! !
!PMBOKShell categoriesFor: #searchDocumentUpdateWithText!public!searching! !
!PMBOKShell categoriesFor: #searchNonCreatedInput!public! !
!PMBOKShell categoriesFor: #searchNonReferencedOutput!public! !
!PMBOKShell categoriesFor: #searchProcessesWithInput!public!searching! !
!PMBOKShell categoriesFor: #searchProcessesWithInputArtifact!public!searching! !
!PMBOKShell categoriesFor: #searchProcessesWithOutput!public!searching! !
!PMBOKShell categoriesFor: #searchProcessesWithOutputArtifact!public!searching! !
!PMBOKShell categoriesFor: #searchProcessesWithTool!public!searching! !
!PMBOKShell categoriesFor: #searchProcessesWithToolOrTechnique:!public!searching! !
!PMBOKShell categoriesFor: #searchProductServiceWithText!public!searching! !
!PMBOKShell categoriesFor: #searchText!public!searching! !
!PMBOKShell categoriesFor: #searchValidatedChangeWithText!public!searching! !
!PMBOKShell categoriesFor: #setPmbookPath!public! !
!PMBOKShell categoriesFor: #showDefinitionBrowser!public! !
!PMBOKShell categoriesFor: #showMyTrees!public! !
!PMBOKShell categoriesFor: #showProcessDefinitionFor:!public! !
!PMBOKShell categoriesFor: #showProcesses:caption:searchedElement:!public! !
!PMBOKShell categoriesFor: #showTreeBuilder!public! !

