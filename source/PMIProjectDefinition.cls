"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIProjectDefinition
	instanceVariableNames: 'name description knowledgeAreas groups deliverables toolsAndTechniques pmBookPath trees'
	classVariableNames: 'Default EnglishDefinition'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProjectDefinition guid: (GUID fromString: '{5c63c1fa-efb2-4b88-8cb6-998cd4ab1c3b}')!
PMIProjectDefinition comment: ''!
!PMIProjectDefinition categoriesForClass!Kernel-Objects! !
!PMIProjectDefinition methodsFor!

addDefaultDeliverables

	^self defaultLanguage addDefaultDeliverables!

addDefaultToolsAndTechniques

	^self defaultLanguage addDefaultToolsAndTechniques!

addDeliverable: aPMIDelivarable

	^deliverables add: aPMIDelivarable!

addToolOrTechnique: aPMIToolOrTechnique

	^toolsAndTechniques add: aPMIToolOrTechnique!

addTree: aTreeModel

	^trees add: aTreeModel!

attachProcessesToGroups

	(self processes select: [:each | #('4.1' '10.1') includes: each printNumber]) do: [:each | self initiatingGroup addProcess: each].

	(self processes select: [:each | #('4.2' '5.1' '5.2' '5.3' '6.1' '6.2' '6.3' '6.4' '6.5' '7.1' '7.2' '8.1' '9.1' '10.2' '11.1' '11.2' '11.3' '11.4' '11.5' '12.1') 
		includes: each printNumber]) do: [:each | self planningGroup addProcess: each].

	(self processes select: [:each | #('4.3' '8.2' '9.2' '9.3' '9.4' '10.3' '10.4' '12.2') 
		includes: each printNumber]) do: [:each | self executingGroup addProcess: each].

	(self processes select: [:each | #('4.4' '4.5' '5.4' '5.5' '6.6' '7.3' '8.3' '10.5' '11.6' '12.3') 
		includes: each printNumber]) do: [:each | self monitoringGroup addProcess: each].

	(self processes select: [:each | #('4.6' '12.4') 
		includes: each printNumber]) do: [:each | self closingGroup addProcess: each].!

cacheOfProjects

	^self class cacheOfProjects!

closingGroup

	^groups at: 5!

defaultProcessBuilder
	^PMIProcessesBuilder default!

deliverables
	^deliverables!

deliverables: anObject
	deliverables := anObject!

description
	^description!

description: anObject
	description := anObject!

executingGroup

	^groups at: 3!

getAllArtifacts

	^(self getAllInputs select: [:each | each isArtifact]), (self getAllOutputs select: [:each | each isArtifact])!

getAllGroups

	^OrderedCollection
		with: self initiatingGroup 
		with: self planningGroup 
		with: self executingGroup 
		with: self monitoringGroup
		with: self closingGroup!

getAllInputs

	^self getAllProcesses inject: OrderedCollection new into: [:all :each | all addAll: each input. all]!

getAllOutputs

	^self getAllProcesses inject: OrderedCollection new into: [:all :each | all addAll: each output. all]!

getAllProcesses
	^knowledgeAreas inject: OrderedCollection new into: [:all :each | all addAll: each processes. all]!

getProcessesWithInput: anInput
	"The receiver answer a collection with all PMIProcess with <anInput>"

	^anInput isProcessOI
		ifTrue: [self getAllProcesses select: [:eachProcess | eachProcess input anySatisfy: [:eachOutput | eachOutput deliverable == anInput deliverable]]]
		ifFalse: [self getAllProcesses select: [:eachProcess | eachProcess input anySatisfy: [:eachOutput | eachOutput name = anInput name]]].
!

getProcessesWithInputArtifact: artifactClass
	"The receiver answer a collection with all PMIProcess with pmi artifact type identical to <artifactClass>"

	^self getAllProcesses select: [:eachProcess | eachProcess input 
		anySatisfy: [:eachInput | eachInput isArtifact and: [eachInput class == artifactClass] ]]
!

getProcessesWithInputDeliverable: aDeliverable
	"The receiver answer a collection with all PMIProcess with <anOutput>"

	^self getAllProcesses select: [:eachProcess | eachProcess input anySatisfy: [:eachInput | eachInput deliverable == aDeliverable]]
!

getProcessesWithOutput: anOutput
	"The receiver answer a collection with all PMIProcess with <anOutput>"

	^anOutput isProcessOI
		ifTrue: [self getAllProcesses select: [:eachProcess | eachProcess output anySatisfy: [:eachOutput | eachOutput deliverable == anOutput deliverable]]]
		ifFalse: [self getAllProcesses select: [:eachProcess | eachProcess output anySatisfy: [:eachOutput | eachOutput name = anOutput name]]].
!

getProcessesWithOutputArtifact: artifactClass
	"The receiver answer a collection with all PMIProcess with pmi artifact type identical to <artifactClass>"

	^self getAllProcesses select: [:eachProcess | eachProcess output 
		anySatisfy: [:eachInput | eachInput isArtifact and: [eachInput class == artifactClass] ]]
!

getProcessesWithOutputDeliverable: aDeliverable
	"The receiver answer a collection with all PMIProcess with <anOutput>"

	^self getAllProcesses select: [:eachProcess | eachProcess output anySatisfy: [:eachOutput | eachOutput deliverable == aDeliverable]]
!

getProcessesWithToolOrTechnique: aPMIToolOrTechnique
	"The receiver answer a collection with all PMIProcess with pmi artifact type identical to <artifactClass>"

	^self getAllProcesses select: [:eachProcess | eachProcess includesToolOrTechnique: aPMIToolOrTechnique]
!

getProcessNumber: aNumber

	^self getAllProcesses detect: [:each | each processNumber = aNumber] ifNone: [nil]!

globalSearchText: aString 

	^((self getAllProcesses select: [:each | each hasDescriptionText: aString]),

		((self getAllProcesses inject: OrderedCollection new into: [:all :each | all addAll: each toolsAndTechniques. all]) select: [:each | each hasDescriptionText: aString]),

		(deliverables select: [:each | each hasDescriptionText: aString]),
	
		(knowledgeAreas select: [:each | each hasDescriptionText: aString]),

		(groups select: [:each | each hasDescriptionText: aString]))

	


	
!

groups
	^groups!

groups: anObject
	groups := anObject!

hasDescriptionText: aString 

	^aString match: description asString!

includesDeliverable: aPMIDelivarable

	^deliverables includes: aPMIDelivarable!

initialize

	super initialize.

	name := ''.
	description := ''.
	knowledgeAreas := self defaultProcessBuilder createKnowledgeAreas.
	groups := self defaultProcessBuilder createGroups.
	deliverables := self addDefaultDeliverables.
	toolsAndTechniques := self addDefaultToolsAndTechniques.

	self attachProcessesToGroups.

	trees := OrderedCollection new.!

initiatingGroup

	^groups at: 1!

knowledgeAreas
	^knowledgeAreas!

knowledgeAreas: anObject
	knowledgeAreas := anObject!

monitoringGroup

	^groups at: 4!

name
	^name!

name: anObject
	name := anObject!

planningGroup

	^groups at: 2!

pmBookPath
	^pmBookPath!

pmBookPath: anObject
	pmBookPath := anObject!

processes

	^knowledgeAreas inject: OrderedCollection new into: [:all :each | all addAll: each processes. all]!

removeDeliverable: aPMIDelivarable

	^deliverables remove: aPMIDelivarable!

removeToolOrTechnique: aPMIToolOrTechnique

	^toolsAndTechniques remove: aPMIToolOrTechnique!

removeTree: aTreeModel

	^trees remove: aTreeModel!

searchApprovedChangeText: aString 

	^self searchText: aString artifactDefinitionClass: PMIApprovedChangeRequestDefinition!

searchChangedRequestStatusUpdateText: aString 

	^self searchText: aString artifactDefinitionClass: PMIChangeRequestStatusUpdateDefinition!

searchChangeRequestText: aString 

	^self searchText: aString artifactDefinitionClass: PMIChangeRequestDefinition!

searchDeliverablesText: aString 

	^self searchText: aString artifactDefinitionClass: PMIDeliverableArtifactDefinition!

searchDocumentUpdateText: aString 

	^self searchText: aString artifactDefinitionClass: PMIDocumentUpdateDefinition!

searchNonCreatedInput
	"Answer a collection of non created inputs"

	^(self getAllInputs select: [:each | each isProcessOI]) reject: 
			[:eachInput | eachInput deliverable isOrganizationAsset or: [self getAllProcesses anySatisfy: [:eachProc | eachProc outputIncludesDeliverableOf: eachInput deliverable]]]!

searchNonReferencedOutput
	"Answer a collection of non referenced outputs"

	^(self getAllOutputs select: [:each | each isProcessOI]) reject: [:eachOutput | 
			self getAllProcesses anySatisfy: [:eachProc | eachProc inputIncludesDeliverableOf: eachOutput deliverable]]!

searchProductServiceResultText: aString 

	^self searchText: aString artifactDefinitionClass: PMIProductServiceDefinition!

searchText: aString artifactDefinitionClass: aPMIArtifactDefinitionClass

	^((self getAllInputs select: [:each | each class == aPMIArtifactDefinitionClass]), (self getAllOutputs select: [:each | each class == aPMIArtifactDefinitionClass]))
		select: [:each | each hasDescriptionText: aString]


	
!

searchValidatedChangeText: aString 

	^self searchText: aString artifactDefinitionClass: PMIValidatedChangeDefinition!

toolsAndTechniques
	^toolsAndTechniques!

toolsAndTechniques: anObject
	toolsAndTechniques := anObject!

trees
	^trees!

trees: anObject
	trees := anObject! !
!PMIProjectDefinition categoriesFor: #addDefaultDeliverables!public! !
!PMIProjectDefinition categoriesFor: #addDefaultToolsAndTechniques!public! !
!PMIProjectDefinition categoriesFor: #addDeliverable:!public! !
!PMIProjectDefinition categoriesFor: #addToolOrTechnique:!public! !
!PMIProjectDefinition categoriesFor: #addTree:!public! !
!PMIProjectDefinition categoriesFor: #attachProcessesToGroups!public! !
!PMIProjectDefinition categoriesFor: #cacheOfProjects!public! !
!PMIProjectDefinition categoriesFor: #closingGroup!group!public! !
!PMIProjectDefinition categoriesFor: #defaultProcessBuilder!public! !
!PMIProjectDefinition categoriesFor: #deliverables!accessing!private! !
!PMIProjectDefinition categoriesFor: #deliverables:!accessing!private! !
!PMIProjectDefinition categoriesFor: #description!accessing!private! !
!PMIProjectDefinition categoriesFor: #description:!accessing!private! !
!PMIProjectDefinition categoriesFor: #executingGroup!group!public! !
!PMIProjectDefinition categoriesFor: #getAllArtifacts!public! !
!PMIProjectDefinition categoriesFor: #getAllGroups!public! !
!PMIProjectDefinition categoriesFor: #getAllInputs!public! !
!PMIProjectDefinition categoriesFor: #getAllOutputs!public! !
!PMIProjectDefinition categoriesFor: #getAllProcesses!public! !
!PMIProjectDefinition categoriesFor: #getProcessesWithInput:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #getProcessesWithInputArtifact:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #getProcessesWithInputDeliverable:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #getProcessesWithOutput:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #getProcessesWithOutputArtifact:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #getProcessesWithOutputDeliverable:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #getProcessesWithToolOrTechnique:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #getProcessNumber:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #globalSearchText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #groups!accessing!private! !
!PMIProjectDefinition categoriesFor: #groups:!accessing!private! !
!PMIProjectDefinition categoriesFor: #hasDescriptionText:!public! !
!PMIProjectDefinition categoriesFor: #includesDeliverable:!public! !
!PMIProjectDefinition categoriesFor: #initialize!public! !
!PMIProjectDefinition categoriesFor: #initiatingGroup!group!public! !
!PMIProjectDefinition categoriesFor: #knowledgeAreas!accessing!private! !
!PMIProjectDefinition categoriesFor: #knowledgeAreas:!accessing!private! !
!PMIProjectDefinition categoriesFor: #monitoringGroup!group!public! !
!PMIProjectDefinition categoriesFor: #name!accessing!private! !
!PMIProjectDefinition categoriesFor: #name:!accessing!private! !
!PMIProjectDefinition categoriesFor: #planningGroup!group!public! !
!PMIProjectDefinition categoriesFor: #pmBookPath!accessing!private! !
!PMIProjectDefinition categoriesFor: #pmBookPath:!accessing!private! !
!PMIProjectDefinition categoriesFor: #processes!public! !
!PMIProjectDefinition categoriesFor: #removeDeliverable:!public! !
!PMIProjectDefinition categoriesFor: #removeToolOrTechnique:!public! !
!PMIProjectDefinition categoriesFor: #removeTree:!public! !
!PMIProjectDefinition categoriesFor: #searchApprovedChangeText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchChangedRequestStatusUpdateText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchChangeRequestText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchDeliverablesText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchDocumentUpdateText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchNonCreatedInput!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchNonReferencedOutput!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchProductServiceResultText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchText:artifactDefinitionClass:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #searchValidatedChangeText:!pmi search!public! !
!PMIProjectDefinition categoriesFor: #toolsAndTechniques!accessing!private! !
!PMIProjectDefinition categoriesFor: #toolsAndTechniques:!accessing!private! !
!PMIProjectDefinition categoriesFor: #trees!accessing!private! !
!PMIProjectDefinition categoriesFor: #trees:!accessing!private! !

!PMIProjectDefinition class methodsFor!

default

	Default ifNil: [self initializeDefaultPMIProject].

	^Default!

default: aPMIProjectDefinition

	Default := aPMIProjectDefinition!

englishDefinition

	EnglishDefinition ifNil: [self initializeEnglishPMIProject].

	^EnglishDefinition!

englishDefinition: aPMIProjectDefinition

	EnglishDefinition := aPMIProjectDefinition!

icon

	^Icon fromId: 'StsProjectEdition.ico'!

initializeDefaultPMIProject

	Default := super new !

initializeEnglishPMIProject

	EnglishDefinition := super new ! !
!PMIProjectDefinition class categoriesFor: #default!public! !
!PMIProjectDefinition class categoriesFor: #default:!public! !
!PMIProjectDefinition class categoriesFor: #englishDefinition!public! !
!PMIProjectDefinition class categoriesFor: #englishDefinition:!public! !
!PMIProjectDefinition class categoriesFor: #icon!public! !
!PMIProjectDefinition class categoriesFor: #initializeDefaultPMIProject!public! !
!PMIProjectDefinition class categoriesFor: #initializeEnglishPMIProject!public! !

