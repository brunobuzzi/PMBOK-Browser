"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #PMIShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIShell guid: (GUID fromString: '{28ef7634-b199-44ea-9700-78f966968fd8}')!
PMIShell comment: ''!
!PMIShell categoriesForClass!MVP-Presenters! !
!PMIShell methodsFor!

aboutPMIBrowser

	^PMIBrowserAboutShell show!

browseAreas

	^PMIKnowledgeAreaShell showOn: self projectModel knowledgeAreas!

browseArtifacts

	^PMIArtifactsBrowerShell showOn: (PMIArtifactDefinition allSubclasses)!

browseDeliverables

	^PMIDeliverableBrowserShell showOn: self projectModel deliverables!

browseGroups

	^PMIGroupsShell showOn: self projectModel groups!

browseTool

	^PMIToolsBrowserShell showOn: self projectModel toolsAndTechniques!

defaultLanguage

	^PMILanguage default
	!

openPmbook

	ShellLibrary default shellOpen: self projectModel pmBookPath!

openPMIBrowser

	^PMIProjectDefinitionShell show: 'Default view2' on: self projectModel!

openPMIDefinitionBrowser

	^PMIProjectDefinitionShell show: 'Default view2' on: self projectModel.

	"PMIProjectDefinitionShell showOn: PMIProjectDefinition default"!

openPortfolioBrowser

	PMIPortfolioBrowserShell showOn: PMIPortfolio cache.!

projectModel

	^self defaultLanguage defaultPMIModel!

searchApprovedChangedWithText
	| text collection presenter |

	text := Prompter prompt: 'Enter the Text to search in Approved Changed' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].

	collection := (self self projectModel searchApprovedChangeText: text) copyWithoutDuplicates.

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Approved Changed with text: <', text, '>'!

searchChangedRequestStatusUpdateWithText
	| text collection presenter |

	text := Prompter prompt: 'Enter the Text to search in Changed Request Status Update' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].

	collection := (self projectModel searchChangedRequestStatusUpdateText: text) copyWithoutDuplicates.

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Changed Request Status Update with text: <', text, '>'
!

searchChangeRequestWithText
	| text collection presenter |

	text := Prompter prompt: 'Enter the Text to search in Change Request' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].

	collection := (self projectModel searchChangeRequestText: text) copyWithoutDuplicates.

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Changed Request with text: <', text, '>'!

searchDeliverableArtifactWithText
	| text collection presenter |

	text := Prompter prompt: 'Enter the Text to search in Deliverables' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].

	collection := (self projectModel searchDeliverablesText: text) copyWithoutDuplicates.

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Deliverables with text: <', text, '>'
!

searchDocumentUpdateWithText
	| text collection presenter |

	text := Prompter prompt: 'Enter the Text to search in Document Update' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].

	collection := (self projectModel searchDocumentUpdateText: text) copyWithoutDuplicates.

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Document Update with text: <', text, '>'!

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

	artifact := DetalleDeOpciones listaCon: (PMIArtifactDefinition allSubclasses collect: [:each | each new]) para: 'PMI Artifacts types' titulo: 'Select Artifact'.
	artifact ifNil: [^self].
	artifact := artifact first class.

	processes := self projectModel getProcessesWithInputArtifact: artifact.

	self showProcesses: processes caption: 'Processes with Input Artifact <', artifact name, '>' searchedElement: artifact. !

searchProcessesWithOutput
	| output processes |

	output := DetalleDeOpciones listaCon: self projectModel deliverables para: 'PMI Deliverable list' titulo: 'Select Deliverable'.
	output ifNil: [^self].
	output := output first asInput.

	processes := self projectModel getProcessesWithOutput: output.

	self showProcesses: processes caption: 'Processes with Output <', output name, '>' searchedElement: output . !

searchProcessesWithOutputArtifact
	| artifact processes |

	artifact := DetalleDeOpciones listaCon: (PMIArtifactDefinition allSubclasses collect: [:each | each new]) para: 'PMI Deliverable list' titulo: 'Select Artifact'.
	artifact ifNil: [^self].
	artifact := artifact first class.

	processes := self projectModel getProcessesWithOutputArtifact: artifact.

	self showProcesses: processes caption: 'Processes with Output Artifact <', artifact name, '>' searchedElement: artifact. !

searchProcessesWithTool
	| artifact processes |

	artifact := DetalleDeOpciones listaCon: (PMIArtifactDefinition allSubclasses collect: [:each | each new]) para: 'PMI Artifacts types' titulo: 'Select Artifact'.
	artifact ifNil: [^self].
	artifact := artifact first class.

	processes := self projectModel getProcessesWithToolOrTechnique: artifact.

	self showProcesses: processes caption: 'Processes with Input Artifact <', artifact name, '>' searchedElement: artifact. !

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

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Product/Service/Result with text: <', text, '>'
!

searchText
	| text collection presenter |

	text := Prompter prompt: 'Enter the Text to search' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].

	collection := (self projectModel globalSearchText: text) copyWithoutDuplicates.

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Global Search with text: <', text, '>'!

searchValidatedChangeWithText
	| text collection presenter |

	text := Prompter prompt: 'Enter the Text to search in Validated Change' caption: 'PMI Browser'.
	text ifNil: [^self].
	text isEmpty ifTrue: [^self].

	collection := (self projectModel searchValidatedChangeText: text) copyWithoutDuplicates.

	presenter := PMIArtifactDefinitionSearchResultShell showForArtifactDefinitionsOn: collection.
	^presenter view topView caption: 'Validated Change text: <', text, '>'!

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

	^PMIProjectDefinition examplePMIProcesses!

showMyTrees
	| tree presenter |

	tree := DetalleDeOpciones listaCon: self projectModel trees para: 'PMI Names' titulo: 'Select a Tree' orden: [:a :b | a name <= b name].
	tree ifNil: [^self].

	presenter := PMITreeNodeDescriptionShell showOn: tree last tree.

	presenter view caption: ('PMI Tree for: <', tree last name, '>').

!

showProcessDefinitionFor: aPMIProcessDefinition

	PMIProcessDefinitionShell showOn: aPMIProcessDefinition!

showProcesses: anOrderedCollection caption: aString searchedElement: anPMIElement
	| presenter |

	presenter := PMIProcessSearchResultShell showForProcessesOn: anOrderedCollection searchedElement: anPMIElement.
	^presenter view topView caption: aString!

showTreeBuilder

	PMITreeBuilderShell show! !
!PMIShell categoriesFor: #aboutPMIBrowser!public! !
!PMIShell categoriesFor: #browseAreas!public! !
!PMIShell categoriesFor: #browseArtifacts!public! !
!PMIShell categoriesFor: #browseDeliverables!public! !
!PMIShell categoriesFor: #browseGroups!public! !
!PMIShell categoriesFor: #browseTool!public! !
!PMIShell categoriesFor: #defaultLanguage!public! !
!PMIShell categoriesFor: #openPmbook!public! !
!PMIShell categoriesFor: #openPMIBrowser!public! !
!PMIShell categoriesFor: #openPMIDefinitionBrowser!public! !
!PMIShell categoriesFor: #openPortfolioBrowser!public! !
!PMIShell categoriesFor: #projectModel!public! !
!PMIShell categoriesFor: #searchApprovedChangedWithText!public!searching! !
!PMIShell categoriesFor: #searchChangedRequestStatusUpdateWithText!public!searching! !
!PMIShell categoriesFor: #searchChangeRequestWithText!public!searching! !
!PMIShell categoriesFor: #searchDeliverableArtifactWithText!public!searching! !
!PMIShell categoriesFor: #searchDocumentUpdateWithText!public!searching! !
!PMIShell categoriesFor: #searchNonCreatedInput!public! !
!PMIShell categoriesFor: #searchNonReferencedOutput!public! !
!PMIShell categoriesFor: #searchProcessesWithInput!public!searching! !
!PMIShell categoriesFor: #searchProcessesWithInputArtifact!public!searching! !
!PMIShell categoriesFor: #searchProcessesWithOutput!public!searching! !
!PMIShell categoriesFor: #searchProcessesWithOutputArtifact!public!searching! !
!PMIShell categoriesFor: #searchProcessesWithTool!public!searching! !
!PMIShell categoriesFor: #searchProcessesWithToolOrTechnique:!public!searching! !
!PMIShell categoriesFor: #searchProductServiceWithText!public!searching! !
!PMIShell categoriesFor: #searchText!public!searching! !
!PMIShell categoriesFor: #searchValidatedChangeWithText!public!searching! !
!PMIShell categoriesFor: #setPmbookPath!public! !
!PMIShell categoriesFor: #showDefinitionBrowser!public! !
!PMIShell categoriesFor: #showMyTrees!public! !
!PMIShell categoriesFor: #showProcessDefinitionFor:!public! !
!PMIShell categoriesFor: #showProcesses:caption:searchedElement:!public! !
!PMIShell categoriesFor: #showTreeBuilder!public! !

