"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKArtifactDefinition
	instanceVariableNames: 'name description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKArtifactDefinition guid: (GUID fromString: '{04d60397-692a-43b0-b045-9e46f83d6e40}')!
PMBOKArtifactDefinition comment: ''!
!PMBOKArtifactDefinition categoriesForClass!Kernel-Objects! !
!PMBOKArtifactDefinition methodsFor!

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
!PMBOKArtifactDefinition categoriesFor: #deliverable!public! !
!PMBOKArtifactDefinition categoriesFor: #deliverableDescription!public! !
!PMBOKArtifactDefinition categoriesFor: #deliverableDescription:!accessing!private! !
!PMBOKArtifactDefinition categoriesFor: #deliverableEqualTo:!public! !
!PMBOKArtifactDefinition categoriesFor: #deliverableIsOrganizationAsset!public! !
!PMBOKArtifactDefinition categoriesFor: #description!accessing!private! !
!PMBOKArtifactDefinition categoriesFor: #description:!accessing!private! !
!PMBOKArtifactDefinition categoriesFor: #event!public! !
!PMBOKArtifactDefinition categoriesFor: #hasDescriptionText:!public! !
!PMBOKArtifactDefinition categoriesFor: #images!public! !
!PMBOKArtifactDefinition categoriesFor: #initialize!public! !
!PMBOKArtifactDefinition categoriesFor: #isArtifact!public! !
!PMBOKArtifactDefinition categoriesFor: #name!accessing!private! !
!PMBOKArtifactDefinition categoriesFor: #name:!accessing!private! !
!PMBOKArtifactDefinition categoriesFor: #outputProcessName!public! !
!PMBOKArtifactDefinition categoriesFor: #parentProcess!public! !
!PMBOKArtifactDefinition categoriesFor: #parentProcessAreaName!public! !
!PMBOKArtifactDefinition categoriesFor: #parentProcessGroupName!public! !
!PMBOKArtifactDefinition categoriesFor: #parentProcessName!public! !
!PMBOKArtifactDefinition categoriesFor: #printIOType!public! !
!PMBOKArtifactDefinition categoriesFor: #printName!public! !
!PMBOKArtifactDefinition categoriesFor: #printType!public! !
!PMBOKArtifactDefinition categoriesFor: #quizName!public! !
!PMBOKArtifactDefinition categoriesFor: #searchInProcessInputSelector!public! !
!PMBOKArtifactDefinition categoriesFor: #searchInProcessOutputSelector!public! !

!PMBOKArtifactDefinition class methodsFor!

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
!PMBOKArtifactDefinition class categoriesFor: #getInputProcesses!public! !
!PMBOKArtifactDefinition class categoriesFor: #getOutputProcesses!public! !
!PMBOKArtifactDefinition class categoriesFor: #icon!public! !
!PMBOKArtifactDefinition class categoriesFor: #printType!public! !
!PMBOKArtifactDefinition class categoriesFor: #quizName!public! !
!PMBOKArtifactDefinition class categoriesFor: #searchInProcessInputSelector!public! !
!PMBOKArtifactDefinition class categoriesFor: #searchInProcessOutputSelector!public! !

