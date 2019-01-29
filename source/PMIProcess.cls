"Filed out from Dolphin Smalltalk 7"!

PMIObjectExecution subclass: #PMIProcess
	instanceVariableNames: 'parentProject name description input output pmiEvents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProcess guid: (GUID fromString: '{44057aad-c374-48d6-bf93-cef6e82a8183}')!
PMIProcess comment: ''!
!PMIProcess categoriesForClass!Kernel-Objects! !
!PMIProcess methodsFor!

addEvent: aPMIEvent

	^pmiEvents add: aPMIEvent!

addInput: aPMIInput

	^input add: aPMIInput!

addOutput: aPMIOutput

	^output add: aPMIOutput!

createBusinessCase

	self createInputFor: pmiDefinition input second. "Caso de Negocio"
!

createContracts

	self createInputFor: pmiDefinition input third. "Contratos"!

createEnterpriseEnvironmentalFactors

	self createInputFor: pmiDefinition input fourth. "Factores Ambientales de la empresa"
!

createInputAndOutput
	
	pmiDefinition input do: [:each | self createInputFor: each].

	pmiDefinition output do: [:each | self createOutputFor: each].!

createInputFor: aPMIInputDefinition
	| newInput |

	newInput := PMIInput definition: aPMIInputDefinition.
	newInput name: newInput pmiDefinition name.
	self addInput: newInput.!

createInputForProcess41

	"PROCESS INPUT"
	self createProjectStamentWork. "Enunciado del Trabajo del Projecto"
	self createBusinessCase. "Caso de Negocio"
	self createContracts. "Contratos"
	self createEnterpriseEnvironmentalFactors. "Factore Ambientales de la Empresa"
	self createOrganizationalProcessAssests. "Activos de Procesos de la Organizacion"

	"PROCESS OUTPUT"
	self createProjectCharter. "Acta de Constitucion del Proyecto"!

createOrganizationalProcessAssests

	self createInputFor: pmiDefinition input fifth. "Activos de Procesos de la Organizacion"!

createOutputFor: aPMIOutputDefinition
	| newOutput |

	newOutput := PMIOutput definition: aPMIOutputDefinition.
	newOutput name: newOutput pmiDefinition name.
	self addOutput: newOutput.!

createProjectCharter

	self createInputFor: pmiDefinition output first. "Acta de Constitucion del Proyecto"!

createProjectStamentWork

	self createInputFor: pmiDefinition input first. "Enunciado del Trabajo del Proyecto"!

description
	^description!

description: anObject
	description := anObject!

getPathString

	^parentProject getPathString, name, '\'!

getPathStringForConnector: aPMIOutput

	^self getPathString, aPMIOutput name, '\'!

getPathStringForInput: aPMIInput

	^parentProject getPathString, aPMIInput pmiDefinition outputProcessName ,'\', aPMIInput name, '\'
!

initialize

	super initialize.

	name := ''.
	description := ''.
	input := OrderedCollection new.
	output := OrderedCollection new.
	pmiEvents := OrderedCollection new.!

input
	^input!

input: anObject
	input := anObject!

inputArtifacts

	^input reject: [:each | each isProcessOI]!

inputDeliverables

	^input select: [:each | each isProcessOI]!

name
	^name!

name: anObject
	name := anObject!

output
	^output!

output: anObject
	output := anObject!

outputArtifacts

	^output reject: [:each | each isProcessOI]!

outputDeliverables

	^output select: [:each | each isProcessOI]!

parentProject
	^parentProject!

parentProject: anObject
	parentProject := anObject!

pmiEvents
	^pmiEvents!

pmiEvents: anObject
	pmiEvents := anObject!

printAreaName

	^pmiDefinition printAreaName!

printGroupName

	^pmiDefinition printGroupName!

printNumber

	^pmiDefinition printNumber!

publishOutput: aPMIOutput deliverable: aPMIDeliverable
	"The receiver publish the output <aPMIOutput> with the deliverable <aPMIDeliverable>."
	| executionEvent nextProcessesDefinition newProcessesInstance |

	executionEvent := PMIPublishEvent document: aPMIDeliverable.
	aPMIDeliverable addEvent: executionEvent.
	nextProcessesDefinition := (pmiDefinition generateInputTreeForDeliverable: aPMIOutput pmiDefinition) asOrderedCollection allButFirst
		reject: [:each | parentProject includesProcessName: each name]. "we only accept non instaciated processes"

	newProcessesInstance := parentProject createNewProcessesFromDefinition: nextProcessesDefinition. "we create all processes here"

	newProcessesInstance do: [:eachProcess | | matchInput |
		matchInput := eachProcess input detect: [:each | each name = aPMIOutput name] ifNone: [nil].
		matchInput ifNotNil: [:prInput | prInput addCollection: (aPMIOutput deliverables at: aPMIDeliverable name) to: aPMIDeliverable]].

	!

removeEvent: aPMIEvent

	^pmiEvents remove: aPMIEvent!

removeInput: aPMIInput

	^input remove: aPMIInput!

removeOutput: aPMIOutput

	^output remove: aPMIOutput! !
!PMIProcess categoriesFor: #addEvent:!public! !
!PMIProcess categoriesFor: #addInput:!public! !
!PMIProcess categoriesFor: #addOutput:!public! !
!PMIProcess categoriesFor: #createBusinessCase!deliverable creation!public! !
!PMIProcess categoriesFor: #createContracts!deliverable creation!public! !
!PMIProcess categoriesFor: #createEnterpriseEnvironmentalFactors!deliverable creation!public! !
!PMIProcess categoriesFor: #createInputAndOutput!pmi events!public! !
!PMIProcess categoriesFor: #createInputFor:!pmi events!public! !
!PMIProcess categoriesFor: #createInputForProcess41!deliverable creation!public! !
!PMIProcess categoriesFor: #createOrganizationalProcessAssests!deliverable creation!public! !
!PMIProcess categoriesFor: #createOutputFor:!pmi events!public! !
!PMIProcess categoriesFor: #createProjectCharter!deliverable creation!public! !
!PMIProcess categoriesFor: #createProjectStamentWork!deliverable creation!public! !
!PMIProcess categoriesFor: #description!accessing!private! !
!PMIProcess categoriesFor: #description:!accessing!private! !
!PMIProcess categoriesFor: #getPathString!public! !
!PMIProcess categoriesFor: #getPathStringForConnector:!public! !
!PMIProcess categoriesFor: #getPathStringForInput:!public! !
!PMIProcess categoriesFor: #initialize!public! !
!PMIProcess categoriesFor: #input!accessing!private! !
!PMIProcess categoriesFor: #input:!accessing!private! !
!PMIProcess categoriesFor: #inputArtifacts!public! !
!PMIProcess categoriesFor: #inputDeliverables!public! !
!PMIProcess categoriesFor: #name!accessing!private! !
!PMIProcess categoriesFor: #name:!accessing!private! !
!PMIProcess categoriesFor: #output!accessing!private! !
!PMIProcess categoriesFor: #output:!accessing!private! !
!PMIProcess categoriesFor: #outputArtifacts!public! !
!PMIProcess categoriesFor: #outputDeliverables!public! !
!PMIProcess categoriesFor: #parentProject!accessing!private! !
!PMIProcess categoriesFor: #parentProject:!accessing!private! !
!PMIProcess categoriesFor: #pmiEvents!accessing!private! !
!PMIProcess categoriesFor: #pmiEvents:!accessing!private! !
!PMIProcess categoriesFor: #printAreaName!public! !
!PMIProcess categoriesFor: #printGroupName!public! !
!PMIProcess categoriesFor: #printNumber!public! !
!PMIProcess categoriesFor: #publishOutput:deliverable:!pmi events!public! !
!PMIProcess categoriesFor: #removeEvent:!public! !
!PMIProcess categoriesFor: #removeInput:!public! !
!PMIProcess categoriesFor: #removeOutput:!public! !

!PMIProcess class methodsFor!

icon

	^PMIProcessDefinition icon! !
!PMIProcess class categoriesFor: #icon!public! !

