"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIArtifactDefinition
	instanceVariableNames: 'name description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIArtifactDefinition guid: (GUID fromString: '{04d60397-692a-43b0-b045-9e46f83d6e40}')!
PMIArtifactDefinition comment: ''!
!PMIArtifactDefinition categoriesForClass!Kernel-Objects! !
!PMIArtifactDefinition methodsFor!

deliverable
	^nil!

deliverableDescription
	^description!

deliverableDescription: anObject
	description := anObject!

deliverableEqualTo: aPMIDeliverableDefinition

	^self == aPMIDeliverableDefinition or: [self class == aPMIDeliverableDefinition class]!

deliverableIsOrganizationAsset

	^false!

description
	^description!

description: anObject
	description := anObject!

event
	^#none!

hasDescriptionText: aString 

	^aString match: description asString!

images

	^OrderedCollection new!

initialize

	super initialize.

	name := self printType.
	description := ''.!

isArtifact

	^true!

name
	^name!

name: anObject
	name := anObject!

outputProcessName

	^'none'!

parentProcess
	^self getAllProcesses detect: [:each | (each includesInput: self) or: [each includesOutput: self ] ] ifNone: [nil]!

parentProcessAreaName

	^self parentProcess ifNotNil: [:value | value knowledgeArea name] ifNil: ['none']!

parentProcessGroupName
	^self parentProcess ifNotNil: [:value | value managementGroup groupName] ifNil: ['none']!

parentProcessName
	^self parentProcess ifNotNil: [:value | value name] ifNil: ['none']!

printIOType
	(self parentProcess inputIncludesArtifact: self) ifTrue: [^'Input'].
	(self parentProcess outputIncludesArtifact: self) ifTrue: [^'Output'].
	^'None'!

printName

	^name!

printType

	^'Artifact'!

quizName

	^self name!

searchInProcessInputSelector

	^#inputIncludesArtifactClass:!

searchInProcessOutputSelector

	^#outputIncludesArtifactClass:! !
!PMIArtifactDefinition categoriesFor: #deliverable!public! !
!PMIArtifactDefinition categoriesFor: #deliverableDescription!public! !
!PMIArtifactDefinition categoriesFor: #deliverableDescription:!accessing!private! !
!PMIArtifactDefinition categoriesFor: #deliverableEqualTo:!public! !
!PMIArtifactDefinition categoriesFor: #deliverableIsOrganizationAsset!public! !
!PMIArtifactDefinition categoriesFor: #description!accessing!private! !
!PMIArtifactDefinition categoriesFor: #description:!accessing!private! !
!PMIArtifactDefinition categoriesFor: #event!public! !
!PMIArtifactDefinition categoriesFor: #hasDescriptionText:!public! !
!PMIArtifactDefinition categoriesFor: #images!public! !
!PMIArtifactDefinition categoriesFor: #initialize!public! !
!PMIArtifactDefinition categoriesFor: #isArtifact!public! !
!PMIArtifactDefinition categoriesFor: #name!accessing!private! !
!PMIArtifactDefinition categoriesFor: #name:!accessing!private! !
!PMIArtifactDefinition categoriesFor: #outputProcessName!public! !
!PMIArtifactDefinition categoriesFor: #parentProcess!public! !
!PMIArtifactDefinition categoriesFor: #parentProcessAreaName!public! !
!PMIArtifactDefinition categoriesFor: #parentProcessGroupName!public! !
!PMIArtifactDefinition categoriesFor: #parentProcessName!public! !
!PMIArtifactDefinition categoriesFor: #printIOType!public! !
!PMIArtifactDefinition categoriesFor: #printName!public! !
!PMIArtifactDefinition categoriesFor: #printType!public! !
!PMIArtifactDefinition categoriesFor: #quizName!public! !
!PMIArtifactDefinition categoriesFor: #searchInProcessInputSelector!public! !
!PMIArtifactDefinition categoriesFor: #searchInProcessOutputSelector!public! !

!PMIArtifactDefinition class methodsFor!

getInputProcesses

	^self projectModel getAllInputs reject: [:each | each isProcessOI and: [self == each class] ]!

getOutputProcesses

	^self projectModel getAllOutputs reject: [:each | each isProcessOI and: [each class == self] ]!

icon

	^MemoryManager icon!

printType

	^'PMI Artifact'!

quizName

	^self printType!

searchInProcessInputSelector

	^#inputIncludesArtifactClass:!

searchInProcessOutputSelector

	^#outputIncludesArtifactClass:! !
!PMIArtifactDefinition class categoriesFor: #getInputProcesses!public! !
!PMIArtifactDefinition class categoriesFor: #getOutputProcesses!public! !
!PMIArtifactDefinition class categoriesFor: #icon!public! !
!PMIArtifactDefinition class categoriesFor: #printType!public! !
!PMIArtifactDefinition class categoriesFor: #quizName!public! !
!PMIArtifactDefinition class categoriesFor: #searchInProcessInputSelector!public! !
!PMIArtifactDefinition class categoriesFor: #searchInProcessOutputSelector!public! !

