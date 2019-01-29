"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectExecution subclass: #PMBOKProcess
	instanceVariableNames: 'parentProject name description input output pmiEvents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcess guid: (GUID fromString: '{44057aad-c374-48d6-bf93-cef6e82a8183}')!
PMBOKProcess comment: ''!
!PMBOKProcess categoriesForClass!Kernel-Objects! !
!PMBOKProcess methodsFor!

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
	newInput := PMBOKInput definition: aPMIInputDefinition.
	newInput name: newInput pmiDefinition name.
	self addInput: newInput!

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
	newOutput := PMBOKOutput definition: aPMIOutputDefinition.
	newOutput name: newOutput pmiDefinition name.
	self addOutput: newOutput!

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
	executionEvent := PMBOKPublishEvent document: aPMIDeliverable.
	aPMIDeliverable addEvent: executionEvent.
	nextProcessesDefinition := (pmiDefinition generateInputTreeForDeliverable: aPMIOutput pmiDefinition)
				asOrderedCollection allButFirst
				reject: [:each | parentProject includesProcessName: each name].	"we only accept non instaciated processes"
	newProcessesInstance := parentProject createNewProcessesFromDefinition: nextProcessesDefinition.	"we create all processes here"
	newProcessesInstance do: 
			[:eachProcess |
			| matchInput |
			matchInput := eachProcess input detect: [:each | each name = aPMIOutput name] ifNone: [nil].
			matchInput
				ifNotNil: 
					[:prInput |
					prInput addCollection: (aPMIOutput deliverables at: aPMIDeliverable name) to: aPMIDeliverable]]!

removeEvent: aPMIEvent

	^pmiEvents remove: aPMIEvent!

removeInput: aPMIInput

	^input remove: aPMIInput!

removeOutput: aPMIOutput

	^output remove: aPMIOutput! !
!PMBOKProcess categoriesFor: #addEvent:!public! !
!PMBOKProcess categoriesFor: #addInput:!public! !
!PMBOKProcess categoriesFor: #addOutput:!public! !
!PMBOKProcess categoriesFor: #createBusinessCase!deliverable creation!public! !
!PMBOKProcess categoriesFor: #createContracts!deliverable creation!public! !
!PMBOKProcess categoriesFor: #createEnterpriseEnvironmentalFactors!deliverable creation!public! !
!PMBOKProcess categoriesFor: #createInputAndOutput!pmi events!public! !
!PMBOKProcess categoriesFor: #createInputFor:!pmi events!public! !
!PMBOKProcess categoriesFor: #createInputForProcess41!deliverable creation!public! !
!PMBOKProcess categoriesFor: #createOrganizationalProcessAssests!deliverable creation!public! !
!PMBOKProcess categoriesFor: #createOutputFor:!pmi events!public! !
!PMBOKProcess categoriesFor: #createProjectCharter!deliverable creation!public! !
!PMBOKProcess categoriesFor: #createProjectStamentWork!deliverable creation!public! !
!PMBOKProcess categoriesFor: #description!accessing!private! !
!PMBOKProcess categoriesFor: #description:!accessing!private! !
!PMBOKProcess categoriesFor: #getPathString!public! !
!PMBOKProcess categoriesFor: #getPathStringForConnector:!public! !
!PMBOKProcess categoriesFor: #getPathStringForInput:!public! !
!PMBOKProcess categoriesFor: #initialize!public! !
!PMBOKProcess categoriesFor: #input!accessing!private! !
!PMBOKProcess categoriesFor: #input:!accessing!private! !
!PMBOKProcess categoriesFor: #inputArtifacts!public! !
!PMBOKProcess categoriesFor: #inputDeliverables!public! !
!PMBOKProcess categoriesFor: #name!accessing!private! !
!PMBOKProcess categoriesFor: #name:!accessing!private! !
!PMBOKProcess categoriesFor: #output!accessing!private! !
!PMBOKProcess categoriesFor: #output:!accessing!private! !
!PMBOKProcess categoriesFor: #outputArtifacts!public! !
!PMBOKProcess categoriesFor: #outputDeliverables!public! !
!PMBOKProcess categoriesFor: #parentProject!accessing!private! !
!PMBOKProcess categoriesFor: #parentProject:!accessing!private! !
!PMBOKProcess categoriesFor: #pmiEvents!accessing!private! !
!PMBOKProcess categoriesFor: #pmiEvents:!accessing!private! !
!PMBOKProcess categoriesFor: #printAreaName!public! !
!PMBOKProcess categoriesFor: #printGroupName!public! !
!PMBOKProcess categoriesFor: #printNumber!public! !
!PMBOKProcess categoriesFor: #publishOutput:deliverable:!pmi events!public! !
!PMBOKProcess categoriesFor: #removeEvent:!public! !
!PMBOKProcess categoriesFor: #removeInput:!public! !
!PMBOKProcess categoriesFor: #removeOutput:!public! !

!PMBOKProcess class methodsFor!

icon
	^PMBOKProcessDefinition icon! !
!PMBOKProcess class categoriesFor: #icon!public! !

