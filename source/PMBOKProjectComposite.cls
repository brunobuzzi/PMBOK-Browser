"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKProjectComposite
	instanceVariableNames: 'projectNamePresenter processesPresenter inputPresenter outputPresenter inputDeliverableVersionsPresenter outputDeliverableVersionsPresenter inputDeliverables outputDeliverables outputEventsPresenter currentVersionsPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProjectComposite guid: (GUID fromString: '{9ce599dc-dc7d-4eda-b805-28618932ab55}')!
PMBOKProjectComposite comment: ''!
!PMBOKProjectComposite categoriesForClass!MVP-Presenters! !
!PMBOKProjectComposite methodsFor!

addInputDeliverable
	| newDeliverable file pathFile |
	inputPresenter hasSelection ifFalse: [^self].
	file := (FileOpenDialog new
				fileTypes: #(#('All Documents (*.*)' '*.*'));
				caption: 'Import Document';
				showModal) ifNotNil: [:value | value] ifNil: [^nil].
	pathFile := self getPathForInputDeliverable.
	(File exists: pathFile) ifFalse: [File createDirectoryPath: pathFile].
	newDeliverable := PMBOKDocument createNew.
	newDeliverable name: (File splitFilenameFrom: file).
	File copy: file to: pathFile , newDeliverable fileVersionName.
	inputPresenter selection addDeliverable: newDeliverable.
	self updateInputDeliverables!

addOutputDeliverable
	| newDeliverable file pathFile |
	outputPresenter hasSelection ifFalse: [^self].
	file := (FileOpenDialog new
				fileTypes: #(#('All Documents (*.*)' '*.*'));
				caption: 'Import Document';
				showModal) ifNotNil: [:value | value] ifNil: [^nil].
	pathFile := self getPathForOutputDeliverable.
	(File exists: pathFile) ifFalse: [File createDirectoryPath: pathFile].
	newDeliverable := PMBOKDocument createNew.
	newDeliverable name: (File splitFilenameFrom: file).
	File copy: file to: pathFile , newDeliverable fileVersionName.
	outputPresenter selection addDeliverable: newDeliverable.
	self updateOutputDeliverables!

createComponents

	super createComponents.

	projectNamePresenter := self add: TextPresenter new name: 'projectName'.
	processesPresenter := self add: ListPresenter new name: 'processes'.
	inputPresenter := self add: ListPresenter new name: 'input'.
	outputPresenter := self add: ListPresenter new name: 'output'.
	inputDeliverableVersionsPresenter := self add: ListPresenter new name: 'inputDeliverableVersions'.
	outputDeliverableVersionsPresenter := self add: ListPresenter new name: 'outputDeliverableVersions'.
	inputDeliverables := self add: ListPresenter new name: 'inputDeliverables'.
	outputDeliverables := self add: ListPresenter new name: 'outputDeliverables'.
	outputEventsPresenter := self add: ListPresenter new name: 'outputEvents'.
	currentVersionsPresenter := self add: ListPresenter new name: 'currentVersions'.!

createOutputDeliverableVersion

	self halt!

createSchematicWiring


	super createSchematicWiring.

	processesPresenter when: #selectionChanged send: #onProcessChanged to: self.

	inputPresenter when: #selectionChanged send: #onInputChanged to: self.
	inputDeliverables when: #selectionChanged send: #onInputDeliverableChanged to: self.
	inputDeliverableVersionsPresenter when: #leftButtonDoubleClicked: send: #onInputVersionDoubleClicked: to: self.

	outputPresenter when: #selectionChanged send: #onOutputChanged to: self.
	outputDeliverables when: #selectionChanged send: #onOutputDeliverableChanged to: self.
	outputDeliverableVersionsPresenter when: #leftButtonDoubleClicked: send: #onOutputVersionDoubleClicked: to: self;
		when: #selectionChanged send: #onPMIDeliverableChanged to: self.

	currentVersionsPresenter when: #leftButtonDoubleClicked: send: #onCurrentVersionDoubleClicked: to: self.!

defaultPath

	^SessionManager current imageBase, 'PMI Project Files\'!

getPathForInputDeliverable

	^self getPathForInputDeliverable: processesPresenter selection!

getPathForInputDeliverable: aPMIProcess

	^self defaultPath, (aPMIProcess getPathStringForInput: inputPresenter selection)
!

getPathForInputDeliverable: aPMIProcess input: aPMIInput

	^self defaultPath, (aPMIProcess getPathStringForInput: aPMIInput)
!

getPathForOutputDeliverable

	^self getPathForOutputDeliverable: outputPresenter selection!

getPathForOutputDeliverable: aPMIOutput

	^self getPathForOutputDeliverable: aPMIOutput for: processesPresenter selection!

getPathForOutputDeliverable: aPMIOutput for: aPMIProcess

	^self defaultPath, (aPMIProcess getPathStringForConnector: aPMIOutput)!

getProcessAndInputWithDeliverable: aPMIInput for: aPMIProcess

	^self getPathForInputDeliverable: aPMIProcess input: aPMIInput!

model: aPMIProject

	super model: aPMIProject.

	
	projectNamePresenter model: (aPMIProject aspectValue: #name).

	processesPresenter model: (ListModel on: aPMIProject getLastestProcesses).

	currentVersionsPresenter model: (ListModel on: aPMIProject getDeliverablesCurrentVersion)!

onCurrentInputVersionDoubleClicked: aMouseEvent
	| array |

	currentVersionsPresenter hasSelection ifFalse: [^self].

	array := self model getProcessAndInputWithDeliverable: currentVersionsPresenter selection ifNone: [^self].

	ShellLibrary default shellOpen: ((self getProcessAndInputWithDeliverable: array second for: array first), currentVersionsPresenter selection fileVersionName)!

onCurrentVersionDoubleClicked: aMouseEvent
	| array |

	currentVersionsPresenter hasSelection ifFalse: [^self].

	array := self model getProcessAndOutputWithDeliverable: currentVersionsPresenter selection ifNone: [^self onCurrentInputVersionDoubleClicked: aMouseEvent].

	ShellLibrary default shellOpen: ((self getPathForOutputDeliverable: array second for: array first), currentVersionsPresenter selection fileVersionName)!

onInputChanged

	inputPresenter hasSelection ifFalse: [^inputDeliverables model: ListModel new].

	self updateInputDeliverables!

onInputDeliverableChanged

	inputDeliverables hasSelection ifFalse: [^inputDeliverableVersionsPresenter model: ListModel new].

	inputDeliverableVersionsPresenter model: (ListModel on: (inputPresenter selection getDeliverablesFor: inputDeliverables selection name))!

onInputVersionDoubleClicked: aMouseEvent

	inputDeliverableVersionsPresenter hasSelection ifFalse: [^self].

	ShellLibrary default shellOpen: (self getPathForInputDeliverable, inputDeliverableVersionsPresenter selection fileVersionName)!

onOutputChanged

	outputPresenter hasSelection ifFalse: [^outputDeliverables model: ListModel new].

	self updateOutputDeliverables!

onOutputDeliverableChanged

	outputDeliverables hasSelection ifFalse: [^outputDeliverableVersionsPresenter model: ListModel new].

	outputDeliverableVersionsPresenter model: (ListModel on: (outputPresenter selection getDeliverablesFor: outputDeliverables selection name))!

onOutputVersionDoubleClicked: aMouseEvent

	outputDeliverableVersionsPresenter hasSelection ifFalse: [^self].

	ShellLibrary default shellOpen: (self getPathForOutputDeliverable, outputDeliverableVersionsPresenter selection fileVersionName)!

onPMIDeliverableChanged

	outputDeliverableVersionsPresenter hasSelection ifFalse: [^outputEventsPresenter model: ListModel new].

	outputEventsPresenter model: (ListModel on: outputDeliverableVersionsPresenter selection pmiEvents).!

onProcessChanged

	processesPresenter hasSelection
	ifFalse: [inputPresenter model: ListModel new. ^outputPresenter model: ListModel new].

	inputPresenter model: (ListModel on: processesPresenter selection input).
	outputPresenter model: (ListModel on: processesPresenter selection output).
!

publishUpdateEvent

	self halt!

publishVersion

	(MessageBox confirm: 'Are you sure to Publish this Version ?' caption: 'PMI Browser') ifFalse: [^self].

	processesPresenter selection publishOutput: outputPresenter selection deliverable: outputDeliverableVersionsPresenter selection.
	
	self model: self model!

queryCommand: aCommandQuery
	| cmd |

	cmd := aCommandQuery commandSymbol.

	cmd == #viewProcessDefinition ifTrue: [aCommandQuery isEnabled: processesPresenter hasSelection.^true].
	cmd == #switchInputEnable ifTrue: [aCommandQuery isEnabled: inputPresenter hasSelection.^true].
	cmd == #switchOutputEnable ifTrue: [aCommandQuery isEnabled: outputPresenter hasSelection.^true].
	cmd == #viewInputDefinition ifTrue: [aCommandQuery isEnabled: inputPresenter hasSelection.^true].
	cmd == #viewOutputDefinition ifTrue: [aCommandQuery isEnabled: outputPresenter hasSelection.^true].
	cmd == #viewInputDeliverableDefinition ifTrue: [aCommandQuery isEnabled: inputPresenter hasSelection.^true].
	cmd == #viewOutputDeliverableDefinition ifTrue: [aCommandQuery isEnabled: outputPresenter hasSelection.^true].
	cmd == #addInputDeliverable ifTrue: [aCommandQuery isEnabled: inputPresenter hasSelection.^true].
	cmd == #addOutputDeliverable ifTrue: [aCommandQuery isEnabled: outputPresenter hasSelection.^true].
	cmd == #removeInputDeliverable ifTrue: [aCommandQuery isEnabled: inputDeliverables hasSelection.^true].
	cmd == #removeOutputDeliverable ifTrue: [aCommandQuery isEnabled: outputDeliverables hasSelection.^true].
	cmd == #publishVersion ifTrue: [aCommandQuery isEnabled: outputDeliverables hasSelection.^true].
	cmd == #publishUpdateEvent ifTrue: [aCommandQuery isEnabled: outputDeliverables hasSelection.^true].
	cmd == #createOutputDeliverableVersion ifTrue: [aCommandQuery isEnabled: outputDeliverables hasSelection.^true].!

removeInputDeliverable

	inputDeliverables hasSelection ifFalse: [^self].

	(MessageBox confirm: 'Are you sure to remove this Deliverabale ?' caption: 'PMI Browser') ifFalse: [^self].

	inputPresenter selection removeDeliverable: inputDeliverables selection.

	File delete: (self getPathForInputDeliverable, inputDeliverables selection fileVersionName).

	self updateInputDeliverables.!

removeOutputDeliverable

	outputDeliverables hasSelection ifFalse: [^self].

	(MessageBox confirm: 'Are you sure to remove this Deliverabale ?' caption: 'PMI Browser') ifFalse: [^self].

	outputPresenter selection removeDeliverable: outputDeliverables selection.

	File delete: (self getPathForInputDeliverable, outputDeliverables selection fileVersionName).

	self updateOutputDeliverables.!

restartProject

	self model hasStarted ifFalse: [^MessageBox notify: 'Project has not been started' caption: 'PMI Browser'].

	self model restartProject.
	self updateProcesses.!

startProject

	self model hasStarted ifTrue: [^MessageBox notify: 'Project has already started' caption: 'PMI Browser'].

	self model startProject.
	self updateProcesses.!

switchInputEnable

	inputPresenter hasSelection ifFalse: [^self].

	inputPresenter selection isEnabled: inputPresenter selection isEnabled not.!

switchOutputEnable

	outputPresenter hasSelection ifFalse: [^self].

	outputPresenter selection isEnabled: outputPresenter selection isEnabled not.!

updateInput

	inputPresenter model: (ListModel on: model input)!

updateInputDeliverables

	inputDeliverables model: (ListModel on: inputPresenter selection latestDeliverables)!

updateOutput

	outputPresenter model: (ListModel on: model output)!

updateOutputDeliverables

	outputDeliverables model: (ListModel on: outputPresenter selection latestDeliverables)!

updateProcesses

	self model: self model!

viewInputDefinition
	| presenter |

	inputPresenter hasSelection ifFalse: [^self].

	presenter := RichTextShell show.
	presenter model: (inputPresenter selection pmiDefinition aspectValue: #description).

	presenter view extent: 659@600.!

viewInputDeliverableDefinition
	| presenter |

	inputPresenter hasSelection ifFalse: [^self].

	presenter := RichTextShell show.
	presenter model: (inputPresenter selection pmiDefinition deliverable aspectValue: #description).

	presenter view extent: 659@600.!

viewOldVersion

	self halt!

viewOutputDefinition
	| presenter |

	outputPresenter hasSelection ifFalse: [^self].

	presenter := RichTextShell show.
	presenter model: (outputPresenter selection pmiDefinition aspectValue: #description).

	presenter view extent: 659@600.!

viewOutputDeliverableDefinition
	| presenter |

	outputPresenter hasSelection ifFalse: [^self].

	presenter := RichTextShell show.
	presenter model: (outputPresenter selection pmiDefinition deliverable aspectValue: #description).

	presenter view extent: 659@600.!

viewProcessDefinition

	processesPresenter hasSelection ifFalse: [^self].

	^processesPresenter selection pmiDefinition show! !
!PMBOKProjectComposite categoriesFor: #addInputDeliverable!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #addOutputDeliverable!deliverables-output!public! !
!PMBOKProjectComposite categoriesFor: #createComponents!public! !
!PMBOKProjectComposite categoriesFor: #createOutputDeliverableVersion!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKProjectComposite categoriesFor: #defaultPath!public! !
!PMBOKProjectComposite categoriesFor: #getPathForInputDeliverable!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #getPathForInputDeliverable:!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #getPathForInputDeliverable:input:!public! !
!PMBOKProjectComposite categoriesFor: #getPathForOutputDeliverable!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #getPathForOutputDeliverable:!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #getPathForOutputDeliverable:for:!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #getProcessAndInputWithDeliverable:for:!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #model:!public! !
!PMBOKProjectComposite categoriesFor: #onCurrentInputVersionDoubleClicked:!public! !
!PMBOKProjectComposite categoriesFor: #onCurrentVersionDoubleClicked:!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #onInputChanged!public! !
!PMBOKProjectComposite categoriesFor: #onInputDeliverableChanged!public! !
!PMBOKProjectComposite categoriesFor: #onInputVersionDoubleClicked:!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #onOutputChanged!public! !
!PMBOKProjectComposite categoriesFor: #onOutputDeliverableChanged!public! !
!PMBOKProjectComposite categoriesFor: #onOutputVersionDoubleClicked:!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #onPMIDeliverableChanged!public! !
!PMBOKProjectComposite categoriesFor: #onProcessChanged!public! !
!PMBOKProjectComposite categoriesFor: #publishUpdateEvent!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #publishVersion!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #queryCommand:!public! !
!PMBOKProjectComposite categoriesFor: #removeInputDeliverable!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #removeOutputDeliverable!deliverables-output!public! !
!PMBOKProjectComposite categoriesFor: #restartProject!public! !
!PMBOKProjectComposite categoriesFor: #startProject!public! !
!PMBOKProjectComposite categoriesFor: #switchInputEnable!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #switchOutputEnable!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #updateInput!public! !
!PMBOKProjectComposite categoriesFor: #updateInputDeliverables!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #updateOutput!public! !
!PMBOKProjectComposite categoriesFor: #updateOutputDeliverables!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #updateProcesses!public! !
!PMBOKProjectComposite categoriesFor: #viewInputDefinition!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #viewInputDeliverableDefinition!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #viewOldVersion!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #viewOutputDefinition!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #viewOutputDeliverableDefinition!deliverables-input!public! !
!PMBOKProjectComposite categoriesFor: #viewProcessDefinition!deliverables-input!public! !

!PMBOKProjectComposite class methodsFor!

defaultModel
	^PMBOKProject new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor) 31 0 5 0 0 0 528 498 1 1 410 432 98 15 0 528 98 2 8 1140850688 131073 640 0 0 0 5 0 0 0 640 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 0 32 234 256 752 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 914 1821 51 640 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 142 3 0 0 25 0 0 0] 98 1 410 8 ##(Smalltalk.ReferenceView) 98 14 0 640 98 2 8 1140850688 131073 1024 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 5 0 0 0 1024 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Toolbar) 8 #resource_PMI_Browser_toolbar 0 786 202 208 98 1 850 880 98 2 914 1 1 914 1821 51 1024 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 142 3 0 0 25 0 0 0] 752 914 193 193 0 27 1360 0 27 0 0 0 410 432 98 15 0 528 98 2 8 1140850688 131073 1376 0 0 0 5 0 0 0 1376 0 234 256 98 2 410 8 ##(Smalltalk.StaticText) 98 16 0 1376 98 2 8 1140850944 262145 1472 0 0 0 5 0 263174 ##(Smalltalk.Font) 0 16 459014 ##(Smalltalk.LOGFONT) 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 1 2 1 34 83 121 115 116 101 109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 914 193 193 0 1472 0 8 4294903115 852486 ##(Smalltalk.NullConverter) 0 0 0 786 202 208 98 1 850 880 98 2 914 261 11 914 901 51 1472 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 130 0 0 0 5 0 0 0 68 2 0 0 30 0 0 0] 98 0 1360 0 27 8 'projectName' 0 786 202 208 98 1 850 880 98 2 914 1 51 914 1821 71 1376 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 142 3 0 0 60 0 0 0] 98 2 410 1488 98 16 0 1376 98 2 8 1140850944 1 2032 0 0 0 5 0 1554 0 16 1586 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 1 2 1 34 83 121 115 116 101 109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 914 193 193 0 2032 0 8 4294903115 1666 0 0 0 786 202 208 98 2 850 880 98 2 914 11 21 914 201 41 2032 850 8 #text: 98 1 8 'Project Name' 2032 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 10 0 0 0 105 0 0 0 30 0 0 0] 98 0 1360 0 27 1472 1360 0 27 234 256 752 0 786 202 208 98 1 850 880 98 2 914 1 1 914 1821 121 528 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 142 3 0 0 60 0 0 0] 98 2 640 1376 1360 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 2592 0 0 0 5 0 0 0 2592 706 234 240 98 2 410 432 98 15 0 2592 98 2 8 1140850688 131073 2704 0 0 0 5 0 0 0 2704 706 234 240 752 32 234 256 98 2 410 1040 98 14 0 2704 98 2 8 1140850688 131073 2832 0 1106 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu) 0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) 8 #viewProcessDefinition 8 'View Process Definition' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 2832 1154 8 ##(Smalltalk.ListPresenter) 8 #resource_PMI_Process_list 0 786 202 208 98 2 850 880 98 2 914 1 1 914 901 577 2832 850 8 #contextMenu: 98 1 2944 2832 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 194 1 0 0 32 1 0 0] 752 1360 0 27 8 'processes' 0 786 202 208 98 1 850 880 98 2 914 1 1 914 1821 577 2704 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 142 3 0 0 32 1 0 0] 98 3 2832 410 8 ##(Smalltalk.Splitter) 98 12 0 2704 98 2 8 1140850688 1 3504 0 1106 8 4278190080 0 517 0 0 0 3504 786 202 208 98 1 850 880 98 2 914 901 1 914 19 577 3504 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 194 1 0 0 0 0 0 0 203 1 0 0 32 1 0 0] 98 0 1360 0 27 410 8 ##(Smalltalk.SlideyInneyOuteyThing) 98 23 0 2704 98 2 8 1409286144 131073 3776 0 1106 8 4278190080 0 517 0 0 0 3776 655878 ##(Smalltalk.CardLayout) 202 208 98 1 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Current Versions' 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 6 1 8 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Current Versions'' iconBlock: [Number icon]' 8 #[29 30 34 112 31 161 106 194 105] 3984 4016 8 ##(Smalltalk.Number) 8 #icon 8 #text:iconBlock: 4048 11 1 0 0 410 8 ##(Smalltalk.ListView) 98 30 0 410 8 ##(Smalltalk.SlidingCardTray) 98 22 0 3776 98 2 8 1140850688 131073 4256 0 1106 3872 0 5 0 0 0 4256 3904 234 256 98 2 4208 8 'currentVersions' 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 3776 98 2 8 1140916866 1 4400 590662 2 ##(Smalltalk.ListModel) 202 208 98 1 4000 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 1106 3872 0 1 0 0 0 4400 0 8 4294902741 8 ##(Smalltalk.BasicListAbstract) 8 ##(Smalltalk.IconicListAbstract) 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 786 202 208 98 3 850 880 98 2 914 1 1 914 903 577 4400 850 8 #basicSelectionsByIndex: 98 1 98 1 3 4400 850 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 4400 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 195 1 0 0 32 1 0 0] 98 0 1360 0 27 0 3776 914 33 33 1049862 ##(Smalltalk.ButtonInteractor) 4256 0 590342 ##(Smalltalk.Rectangle) 914 5 3 914 37 35 1 3010 8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 786 202 208 98 1 850 880 98 2 914 9 9 914 841 561 4256 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 4 0 0 0 168 1 0 0 28 1 0 0] 98 1 4208 1360 0 27 98 2 8 1409355853 1025 4208 4482 202 208 752 0 4560 1106 8 4278190080 0 5 0 0 0 4208 0 8 4294903981 459270 ##(Smalltalk.Message) 8 #displayString 98 0 4624 4656 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Current Outputs' 501 8 #left 5394 8 #fileVersionName 98 0 4034 0 0 4066 2 1 4032 8 'doIt' 8 '[:a :b | a fileVersionName <= b fileVersionName]' 8 #[30 105 226 0 226 32 130 106] 5568 5600 7 513 0 0 0 4208 0 1 0 0 8 #report 752 0 131169 0 0 786 202 208 98 2 850 880 98 2 914 1 37 914 841 525 4208 850 2320 98 1 8 'Current Outputs' 4208 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 164 1 0 0 24 1 0 0] 98 0 1360 0 27 4208 234 256 752 0 4400 4256 914 201 201 401 1 31 0 0 786 202 208 98 1 850 880 98 2 914 919 1 914 903 577 3776 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 203 1 0 0 0 0 0 0 142 3 0 0 32 1 0 0] 98 2 4256 4400 1360 0 27 1360 0 27 3 16 234 256 752 0 786 202 208 98 1 850 880 98 2 914 1 121 914 1821 1171 2592 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 60 0 0 0 142 3 0 0 133 2 0 0] 98 3 2704 410 3520 98 12 0 2592 98 2 8 1140850688 1 6272 0 1106 8 4278190080 0 517 0 0 0 6272 786 202 208 98 1 850 880 98 2 914 1 577 914 1821 19 6272 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 32 1 0 0 142 3 0 0 41 1 0 0] 98 0 1360 0 27 410 3792 98 23 0 2592 98 2 8 1409286144 131073 6528 0 1106 8 4278190080 0 517 0 0 0 6528 3890 202 208 98 2 3954 3986 8 'Input' 4034 0 0 4066 6 1 4096 8 'doIt' 8 'CardLabel text: ''Input'' iconBlock: [PMIInput icon]' 8 #[29 30 34 112 31 161 106 194 105] 3984 6704 8 ##(Smalltalk.PMBOKInput) 4176 4192 6720 11 1 0 0 410 432 98 15 0 410 4272 98 22 0 6528 98 2 8 1140850688 131073 6848 0 1106 6608 0 5 0 0 0 6848 6624 234 256 752 0 410 4416 98 28 0 6528 98 2 8 1140916738 1 6944 4482 202 208 98 2 6688 3986 8 'Output' 4034 0 0 4066 6 1 4096 8 'doIt' 8 '(CardLabel text: ''Output'' iconBlock: [PMIOutput icon])' 8 #[29 30 34 112 31 161 106 194 105] 3984 7072 8 ##(Smalltalk.PMBOKOutput) 4176 4192 7088 11 1 0 0 0 4560 1106 6608 0 1 0 0 0 6944 0 8 4294902741 4608 4624 4656 0 0 0 0 0 4672 0 0 0 0 0 786 202 208 98 3 850 880 98 2 914 1 1 914 1821 577 6944 850 4816 98 1 98 1 3 6944 850 4880 98 2 -1 1 6944 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 142 3 0 0 32 1 0 0] 98 0 1360 0 27 0 6528 914 33 33 4978 6848 0 5010 914 1769 3 914 1801 35 1 3010 5088 8 'Pin or Unpin the tray' 1 1 0 0 0 786 202 208 98 1 850 880 98 2 914 9 9 914 1805 521 6848 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 4 0 0 0 138 3 0 0 8 1 0 0] 98 2 6816 410 432 98 15 0 6848 98 2 8 1140850688 131073 7728 0 0 0 5 0 0 0 7728 706 234 240 98 2 410 4224 98 30 0 7728 98 2 8 1409355853 1025 7840 4482 202 208 752 0 4560 1106 8 4278190080 0 5 2930 0 16 98 4 2978 1 3010 8 #switchOutputEnable 8 'Switch Output Enable' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem) 4097 2978 1 3010 8 #viewOutputDefinition 8 'View Output Definition' 1 1 0 0 0 2978 1 3010 8 #viewOutputDeliverableDefinition 8 'View Deliverable Definition' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 7840 0 8 4294903981 5394 5424 98 0 4624 4656 0 0 0 0 0 0 202 208 98 3 5490 8 'Output' 661 5536 5394 8 #name 98 0 4034 0 0 4066 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 8368 8400 7 513 0 0 0 7840 0 1 0 4034 0 0 4066 9 1 4032 8 'doIt' 8 '[:ctx | 
ctx item hasDeliverable ifFalse: [ctx forecolor: Color darkRed]
ifTrue: [ctx forecolor: Color darkGreen].
ctx item isEnabled
ifFalse: [ctx forecolor: Color gray].
]' 8 #[37 105 226 0 159 220 5 17 31 161 180 113 17 31 163 180 97 226 0 164 220 5 17 31 165 180 106 60 106] 8 #item 8 #hasDeliverable 8 ##(Smalltalk.Color) 8 #darkRed 8 #forecolor: 8 #darkGreen 8 #isEnabled 8 #gray 8528 7 257 0 5490 8 'Event' 201 5536 5394 8 #event 8384 4034 0 0 4066 2 1 5392 8 'doIt' 8 '[:a :b | a event <= b event]' 8 #[30 105 226 0 226 32 130 106] 8784 8800 7 513 0 0 0 7840 0 1 0 0 5490 8 'Is Enabled' 201 5536 5394 8704 98 0 4034 0 0 4066 3 1 5392 8 'doIt' 8 '[:a :b | a isEnabled printString <= b isEnabled printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 8704 8 #printString 8944 7 513 0 0 0 7840 0 1 0 0 5680 752 0 131169 0 0 786 202 208 98 3 850 880 98 2 914 1 1 914 589 485 7840 850 3264 98 1 7968 7840 850 2320 98 1 8 'Output' 7840 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 38 1 0 0 242 0 0 0] 98 0 1360 0 27 3 32 234 256 98 4 7840 8 'output' 410 4224 98 30 0 7728 98 2 8 1409355853 1025 9328 4482 202 208 752 0 4560 1106 8 4278190080 0 5 2930 0 16 98 7 2978 1 3010 8 #addOutputDeliverable 8 'Add Output Deliverable' 1 1 0 0 0 2978 1 3010 8 #removeOutputDeliverable 8 'Remove Output Deliverable' 1 1 0 0 0 8066 4097 2978 1 3010 8 #createOutputDeliverableVersion 8 'Create New Deliverable Version' 1 1 0 0 0 8066 4097 2978 1 3010 8 #publishUpdateEvent 8 'Publish Update Event' 1 1 0 0 0 2978 1 3010 8 #publishVersion 8 'Publish Lastest Version' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 9328 0 8 4294903981 5394 8368 98 0 4624 4656 0 0 0 0 0 0 202 208 98 1 5490 8 'Name' 501 5536 5394 8368 9888 4034 0 0 4066 2 1 8432 8 'doIt' 8 '[:a :b | a name <= b name ]' 8 #[30 105 226 0 226 32 130 106] 8368 9984 7 513 0 0 0 9328 0 1 0 0 5680 752 0 131169 0 0 786 202 208 98 3 850 880 98 2 914 607 1 914 589 485 9328 850 3264 98 1 9456 9328 850 2320 98 1 8 'Name' 9328 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 47 1 0 0 0 0 0 0 85 2 0 0 242 0 0 0] 98 0 1360 0 27 8 'outputDeliverables' 0 786 202 208 98 1 850 880 98 2 914 1 37 914 1805 485 7728 962 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 134 3 0 0 4 1 0 0] 98 5 7840 410 3520 98 12 0 7728 98 2 8 1140850688 1 10480 0 1106 8 4278190080 0 517 0 0 0 10480 786 202 208 98 1 850 880 98 2 914 589 1 914 19 485 10480 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 38 1 0 0 0 0 0 0 47 1 0 0 242 0 0 0] 98 0 1360 0 27 9328 410 3520 98 12 0 7728 98 2 8 1140850688 1 10736 0 1106 10560 0 517 0 0 0 10736 786 202 208 98 1 850 880 98 2 914 1195 1 914 19 485 10736 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 2 0 0 0 0 0 0 94 2 0 0 242 0 0 0] 98 0 1360 0 27 410 432 98 15 0 7728 98 2 8 1140850688 131073 10976 0 0 0 5 0 0 0 10976 706 234 240 752 16 234 256 98 4 410 4224 98 30 0 10976 98 2 8 1409355853 1025 11104 4482 202 208 752 0 4560 1106 5360 0 5 2930 0 16 98 3 2978 1 3010 9744 8 'Publish Update Event' 1 1 0 0 0 8066 4097 2978 1 3010 9808 8 'Publish Version' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 11104 0 8 4294903981 5394 5424 98 0 4624 4656 0 0 0 0 0 0 202 208 98 1 5490 8 'Version' 501 5536 5394 5568 98 0 4034 0 0 4066 2 1 4032 5632 5648 5664 5568 11520 7 513 0 0 0 11104 0 1 0 0 5680 752 0 131169 0 0 786 202 208 98 3 850 880 98 2 914 1 1 914 593 233 11104 850 3264 98 1 11216 11104 850 2320 98 1 8 'Version' 11104 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 40 1 0 0 116 0 0 0] 98 0 1360 0 27 8 'outputDeliverableVersions' 410 4224 98 30 0 10976 98 2 8 1409355853 1025 11808 4482 202 208 752 0 4560 1106 8 4278190080 0 5 0 0 0 11808 0 8 4294903981 5394 5424 98 0 4624 4656 0 0 0 0 0 0 202 208 98 2 5490 8 'Event Name' 161 5536 5394 8 #eventName 98 0 8 ##(Smalltalk.SortedCollection) 0 0 11808 0 1 0 0 5490 8 'Time Stamp' 301 5536 5394 8 #timestamp 98 0 4034 0 0 4066 2 1 5392 8 'doIt' 8 '[:a :b | a timestamp <= b timestamp]' 8 #[30 105 226 0 226 32 130 106] 12160 12192 7 513 0 0 0 11808 0 1 0 0 5680 752 0 131169 0 0 786 202 208 98 2 850 880 98 2 914 1 251 914 593 235 11808 850 2320 98 1 8 'Event Name' 11808 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 125 0 0 0 40 1 0 0 242 0 0 0] 98 0 1360 0 27 8 'outputEvents' 0 786 202 208 98 1 850 880 98 2 914 1213 1 914 593 485 10976 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 94 2 0 0 0 0 0 0 134 3 0 0 242 0 0 0] 98 3 11104 410 3520 98 12 0 10976 98 2 8 1140850688 1 12656 0 1106 8 4278190080 0 517 0 0 0 12656 786 202 208 98 1 850 880 98 2 914 1 233 914 593 19 12656 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 116 0 0 0 40 1 0 0 125 0 0 0] 98 0 1360 0 27 11808 1360 0 27 1360 0 27 1360 0 27 98 2 8 1140850688 131073 6816 0 0 0 5 0 0 0 6816 706 234 240 98 2 410 4224 98 30 0 6816 98 2 8 1409355853 1025 12992 4482 202 208 752 0 4560 1106 7952 0 5 2930 0 16 98 4 2978 1 3010 8 #switchInputEnable 8 'Switch Enable' 1 1 0 0 0 8066 4097 2978 1 3010 8 #viewInputDefinition 8 'View Input Definition' 1 1 0 0 0 2978 1 3010 8 #viewInputDeliverableDefinition 8 'View Deliverable Definition' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 12992 0 8 4294903981 5394 5424 98 0 4624 4656 0 0 0 0 0 0 202 208 98 2 5490 8 'Input' 661 5536 5394 8368 98 0 4034 0 0 4066 2 1 8432 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 8368 13504 7 513 0 0 0 12992 0 1 0 4034 0 0 4066 9 1 4032 8 'doIt' 8 '[:ctx | 
ctx item hasDeliverable ifFalse: [ctx forecolor: Color darkRed]
ifTrue: [ctx forecolor: Color darkGreen].
ctx item isEnabled
ifFalse: [ctx forecolor: Color gray].
]' 8 #[37 105 226 0 159 220 5 17 31 161 180 113 17 31 163 180 97 226 0 164 220 5 17 31 165 180 106 60 106] 8608 8624 8640 8656 8672 8688 8704 8720 13584 7 257 0 5490 8 'Is Enabled' 201 5536 5394 8704 98 0 4034 0 0 4066 3 1 5392 8 'doIt' 8 '[:a :b | a isEnabled printString <= b isEnabled printString]' 8 #[31 105 226 0 159 226 32 159 130 106] 8704 9024 13728 7 513 0 0 0 12992 0 1 0 0 5680 752 0 131169 0 0 786 202 208 98 3 850 880 98 2 914 1 1 914 589 485 12992 850 3264 98 1 13104 12992 850 2320 98 1 8 'Input' 12992 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 38 1 0 0 242 0 0 0] 98 0 1360 0 27 3 32 234 256 98 6 410 4224 98 30 0 6816 98 2 8 1409355853 1025 14080 4482 202 208 752 0 4560 1106 9440 0 5 2930 0 16 98 2 2978 1 3010 8 #addInputDeliverable 8 'Add Input Deliverable' 1 1 0 0 0 2978 1 3010 8 #removeInputDeliverable 8 'Remove Input Deliverable' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 14080 0 8 4294903981 5394 5424 98 0 4624 4656 0 0 0 0 0 0 202 208 98 1 5490 8 'Name' 501 5536 5394 8368 9888 4034 0 0 4066 2 1 8432 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 8368 14496 7 513 0 0 0 14080 0 1 0 0 5680 752 0 131169 0 0 786 202 208 98 3 850 880 98 2 914 607 1 914 589 485 14080 850 3264 98 1 14192 14080 850 2320 98 1 8 'Name' 14080 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 47 1 0 0 0 0 0 0 85 2 0 0 242 0 0 0] 98 0 1360 0 27 8 'inputDeliverables' 410 4224 98 30 0 6816 98 2 8 1409355853 1025 14832 4482 202 208 752 0 4560 1106 5360 0 5 2930 0 16 98 1 2978 1 3010 8 #viewOldVersion 8 'View Old Version' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 14832 0 8 4294903981 5394 5424 98 0 4624 4656 0 0 0 0 0 0 202 208 98 1 5490 8 'Version' 501 5536 5394 5568 98 0 4034 0 0 4066 2 1 4032 8 'doIt' 8 '[:a :b | a fileVersionName <= b fileVersionName]' 8 #[30 105 226 0 226 32 130 106] 5568 15200 7 513 0 0 0 14832 0 1 0 0 5680 752 0 131169 0 0 786 202 208 98 3 850 880 98 2 914 1213 1 914 593 485 14832 850 3264 98 1 14944 14832 850 2320 98 1 8 'Version' 14832 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 94 2 0 0 0 0 0 0 134 3 0 0 242 0 0 0] 98 0 1360 0 27 8 'inputDeliverableVersions' 12992 8 'input' 0 786 202 208 98 1 850 880 98 2 914 1 37 914 1805 485 6816 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 134 3 0 0 4 1 0 0] 98 5 12992 410 3520 98 12 0 6816 98 2 8 1140850688 1 15712 0 1106 10560 0 517 0 0 0 15712 786 202 208 98 1 850 880 98 2 914 589 1 914 19 485 15712 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 38 1 0 0 0 0 0 0 47 1 0 0 242 0 0 0] 98 0 1360 0 27 14080 410 3520 98 12 0 6816 98 2 8 1140850688 1 15952 0 1106 10560 0 517 0 0 0 15952 786 202 208 98 1 850 880 98 2 914 1195 1 914 19 485 15952 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 85 2 0 0 0 0 0 0 94 2 0 0 242 0 0 0] 98 0 1360 0 27 14832 1360 0 27 3954 7056 7728 6816 234 256 752 0 6944 6848 914 201 201 401 1 31 0 0 786 202 208 98 1 850 880 98 2 914 1 595 914 1821 577 6528 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 41 1 0 0 142 3 0 0 73 2 0 0] 98 2 6848 6944 1360 0 27 1360 0 27 234 256 752 0 786 202 208 98 1 850 880 98 2 914 3199 21 914 1821 1291 416 962 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 205 9 0 0 143 2 0 0] 98 2 528 2592 1360 0 27)! !
!PMBOKProjectComposite class categoriesFor: #defaultModel!public! !
!PMBOKProjectComposite class categoriesFor: #resource_Default_view!public!resources-views! !

