"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIProcessDefinition
	instanceVariableNames: 'name description input output knowledgeArea managementGroup image toolsAndTechniques inputArtifacts outputArtifacts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProcessDefinition guid: (GUID fromString: '{46e86410-6817-422a-b18e-2f54dad0f797}')!
PMIProcessDefinition comment: ''!
!PMIProcessDefinition categoriesForClass!Kernel-Objects! !
!PMIProcessDefinition methodsFor!

addInput: aPMIInput

	^input add: aPMIInput!

addInput: aPMIInput afterIndex: index

	^input add: aPMIInput afterIndex: index!

addInput: aPMIInput beforeIndex: index

	^input add: aPMIInput beforeIndex: index!

addInputArtifact: aPMIArtifactDefinition

	^inputArtifacts add: aPMIArtifactDefinition!

addOutput: aPMIOutput

	^output add: aPMIOutput!

addOutput: aPMIOutput afterIndex: index

	^output add: aPMIOutput afterIndex: index!

addOutput: aPMIOutput beforeIndex: index

	^output add: aPMIOutput beforeIndex: index!

addOutputArtifact: aPMIArtifactDefinition

	^outputArtifacts add: aPMIArtifactDefinition!

addToolOrTechnique: aPMIToolOrTechnique

	^toolsAndTechniques add: aPMIToolOrTechnique!

addToolOrTechnique: aPMIToolOrTechnique afterIndex: index

	^toolsAndTechniques add: aPMIToolOrTechnique afterIndex: index!

addToolOrTechnique: aPMIToolOrTechnique beforeIndex: index

	^toolsAndTechniques add: aPMIToolOrTechnique beforeIndex: index!

area: aPMIKnowledgeArea

	knowledgeArea := aPMIKnowledgeArea!

chapterNumber

	^knowledgeArea chapterNumber!

description
	^description!

description: anObject
	description := anObject!

generateInputTreeForDeliverable: aPMIOutputDefinition 
	"Answer aTreeModel with <aPMIOutputDefinition> as the root and all process which input includes <aPMIOutputDefinition> as the leafs"
	| treeModel |

	treeModel := TreeModel withRoots: (OrderedCollection with: aPMIOutputDefinition deliverable).

	(self projectModel getProcessesWithInput: aPMIOutputDefinition) 
		do: [:each | treeModel add: each asChildOf: aPMIOutputDefinition deliverable].

	^treeModel!

generateOutTreeForDeliverable: aPMIInputDefinition 
	"Answer aTreeModel with <aPMIInputDefinition> as the root and all process which output includes <aPMIInputDefinition> as the leafs"
	| treeModel |

	treeModel := TreeModel withRoots: (OrderedCollection with: aPMIInputDefinition deliverable).

	(self projectModel getProcessesWithOutput: aPMIInputDefinition) 
		do: [:each | treeModel add: each asChildOf: aPMIInputDefinition deliverable].

	^treeModel!

hasDeliverableInInput
	^input anySatisfy: [:each | each isProcessOI]!

hasDeliverableInOutput

	^output anySatisfy: [:each | each deliverable notNil]!

hasDescriptionText: aString 

	^aString match: description asString
!

hasImage
	^image notNil!

image
	^image!

image: anObject
	image := anObject!

includesDeliverable: aPMIArtifactDefinition

	
	!

includesInput: aPMIInput

	^input includes: aPMIInput!

includesInputName: aPMIArtifact

	aPMIArtifact isArtifact ifTrue: [^input anySatisfy: [:each | aPMIArtifact class == each class] ].

	^(input collect: [:each | each name]) includes: aPMIArtifact name!

includesOutput: aPMIOutput

	^output includes: aPMIOutput!

includesOutputName: aPMIArtifact

	aPMIArtifact isArtifact ifTrue: [^output anySatisfy: [:each | aPMIArtifact class == each class] ].

	^(output collect: [:each | each name]) includes: aPMIArtifact name!

includesToolOrTechnique: aPMIToolOrTechnique

	^toolsAndTechniques includes: aPMIToolOrTechnique!

includesToolOrTechniqueName: aPMIToolOrTechnique

	^(toolsAndTechniques collect: [:each | each name]) includes: aPMIToolOrTechnique name!

indexOfInput: aPMIInputDefinition

	^input indexOf: aPMIInputDefinition!

indexOfOutput: aPMIIOutputDefinition

	^output indexOf: aPMIIOutputDefinition!

indexOfTool: aPMIToolOrTechnique

	^toolsAndTechniques indexOf: aPMIToolOrTechnique!

initialize

	super initialize.

	name := ''.
	description := ''.
	input := OrderedCollection new.
	output := OrderedCollection new.
	toolsAndTechniques := OrderedCollection new.
	inputArtifacts := OrderedCollection new.
	outputArtifacts := OrderedCollection new.
!

input
	^input!

input: anObject
	input := anObject!

inputArtifacts
	^inputArtifacts!

inputArtifacts: anObject
	inputArtifacts := anObject!

inputDeliverables

	^input collect: [:each | each deliverable]!

inputIncludesArtifact: aPMIArtifactDefinition 

	^(input reject: [:each | each isProcessOI]) includes: aPMIArtifactDefinition!

inputIncludesArtifactClass: aPMIArtifactDefinitionClass 

	^(input reject: [:each | each isProcessOI]) anySatisfy: [:each | each class == aPMIArtifactDefinitionClass]!

inputIncludesDeliverable: aPMIDeliverable

	^self inputDeliverables includes: aPMIDeliverable!

inputIncludesDeliverableOf: anInput 
	"This work at Deliverable level. It compares deliverables not inputs.
	Answer whether or not the reciver has the input <anInput>"

	^input anySatisfy: [:each | each deliverable == anInput deliverable]!

isProcessDefinition

	^true!

knowledgeArea
	^knowledgeArea!

managementGroup
	^managementGroup!

managementGroup: anObject
	managementGroup := anObject!

name
	^name!

name: anObject
	name := anObject!

output
	^output!

output: anObject
	output := anObject!

outputArtifacts
	^outputArtifacts!

outputArtifacts: anObject
	outputArtifacts := anObject!

outputDeliverables

	^output collect: [:each | each deliverable]!

outputIncludesArtifact: aPMIArtifactDefinition 

	^(output reject: [:each | each isProcessOI]) includes: aPMIArtifactDefinition!

outputIncludesArtifactClass: aPMIArtifactDefinitionClass 

	^(output reject: [:each | each isProcessOI]) anySatisfy: [:each | each class == aPMIArtifactDefinitionClass]!

outputIncludesDeliverable: aPMIDeliverable

	^self outputDeliverables includes: aPMIDeliverable!

outputIncludesDeliverableOf: anOutput 
	"This work at Deliverable level. It compares deliverables not outputs.
	Answer whether or not the reciver has the output <anOutput>"

	^output anySatisfy: [:each | each deliverable == anOutput deliverable]!

parentProcessAreaName
	^knowledgeArea name!

parentProcessGroupName
	^managementGroup groupName!

parentProcessName
	^name!

peekNextProcessByKnowledgeArea

	(knowledgeArea processes last == self) ifTrue: [^nil].

	^knowledgeArea processes after: self!

peekPreviousProcessByKnowledgeArea

	(knowledgeArea processes first == self) ifTrue: [^nil].

	^knowledgeArea processes before: self!

printAreaName
	^knowledgeArea areaName!

printGroupName
	managementGroup ifNil: [^'None'].
	^managementGroup groupName!

printIOType
	^'Process'!

printName

	^'Process'!

printNumber

	^self chapterNumber printString, '.', self processIndex printString!

printOn: target
	"Append, to the <puttableStream>, target, a string whose characters are a 
	the same as those which would result from sending a #printString
	message to the receiver.
	N.B. This is really intended for development use. #displayOn: and #displayString
	are complementary methods for generating strings for presentation to an
	end-user."

	super printOn: target.

	target nextPutAll: '[', name, ']'!

processIndex

	^knowledgeArea processIndexOf: self!

processNumber

	^self printNumber asNumber!

removeInput: aPMIInput

	^input remove: aPMIInput!

removeInputArtifact: aPMIArtifactDefinition

	^inputArtifacts remove: aPMIArtifactDefinition!

removeOutput: aPMIOutput

	^output remove: aPMIOutput!

removeOutputArtifact: aPMIArtifactDefinition

	^outputArtifacts remove: aPMIArtifactDefinition!

removeToolOrTechnique: aPMIToolOrTechnique

	^toolsAndTechniques remove: aPMIToolOrTechnique!

toolsAndTechniques
	^toolsAndTechniques!

toolsAndTechniques: anObject
	toolsAndTechniques := anObject! !
!PMIProcessDefinition categoriesFor: #addInput:!public! !
!PMIProcessDefinition categoriesFor: #addInput:afterIndex:!public! !
!PMIProcessDefinition categoriesFor: #addInput:beforeIndex:!public! !
!PMIProcessDefinition categoriesFor: #addInputArtifact:!public! !
!PMIProcessDefinition categoriesFor: #addOutput:!public! !
!PMIProcessDefinition categoriesFor: #addOutput:afterIndex:!public! !
!PMIProcessDefinition categoriesFor: #addOutput:beforeIndex:!public! !
!PMIProcessDefinition categoriesFor: #addOutputArtifact:!public! !
!PMIProcessDefinition categoriesFor: #addToolOrTechnique:!public! !
!PMIProcessDefinition categoriesFor: #addToolOrTechnique:afterIndex:!public! !
!PMIProcessDefinition categoriesFor: #addToolOrTechnique:beforeIndex:!public! !
!PMIProcessDefinition categoriesFor: #area:!public! !
!PMIProcessDefinition categoriesFor: #chapterNumber!public! !
!PMIProcessDefinition categoriesFor: #description!accessing!private! !
!PMIProcessDefinition categoriesFor: #description:!accessing!private! !
!PMIProcessDefinition categoriesFor: #generateInputTreeForDeliverable:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #generateOutTreeForDeliverable:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #hasDeliverableInInput!pmi search!public! !
!PMIProcessDefinition categoriesFor: #hasDeliverableInOutput!pmi search!public! !
!PMIProcessDefinition categoriesFor: #hasDescriptionText:!public! !
!PMIProcessDefinition categoriesFor: #hasImage!public! !
!PMIProcessDefinition categoriesFor: #image!accessing!private! !
!PMIProcessDefinition categoriesFor: #image:!accessing!private! !
!PMIProcessDefinition categoriesFor: #includesDeliverable:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #includesInput:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #includesInputName:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #includesOutput:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #includesOutputName:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #includesToolOrTechnique:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #includesToolOrTechniqueName:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #indexOfInput:!public! !
!PMIProcessDefinition categoriesFor: #indexOfOutput:!public! !
!PMIProcessDefinition categoriesFor: #indexOfTool:!public! !
!PMIProcessDefinition categoriesFor: #initialize!public! !
!PMIProcessDefinition categoriesFor: #input!accessing!private! !
!PMIProcessDefinition categoriesFor: #input:!accessing!private! !
!PMIProcessDefinition categoriesFor: #inputArtifacts!accessing!private! !
!PMIProcessDefinition categoriesFor: #inputArtifacts:!accessing!private! !
!PMIProcessDefinition categoriesFor: #inputDeliverables!pmi search!public! !
!PMIProcessDefinition categoriesFor: #inputIncludesArtifact:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #inputIncludesArtifactClass:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #inputIncludesDeliverable:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #inputIncludesDeliverableOf:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #isProcessDefinition!public! !
!PMIProcessDefinition categoriesFor: #knowledgeArea!accessing!private! !
!PMIProcessDefinition categoriesFor: #managementGroup!accessing!private! !
!PMIProcessDefinition categoriesFor: #managementGroup:!accessing!private! !
!PMIProcessDefinition categoriesFor: #name!accessing!private! !
!PMIProcessDefinition categoriesFor: #name:!accessing!private! !
!PMIProcessDefinition categoriesFor: #output!accessing!private! !
!PMIProcessDefinition categoriesFor: #output:!accessing!private! !
!PMIProcessDefinition categoriesFor: #outputArtifacts!accessing!private! !
!PMIProcessDefinition categoriesFor: #outputArtifacts:!accessing!private! !
!PMIProcessDefinition categoriesFor: #outputDeliverables!pmi search!public! !
!PMIProcessDefinition categoriesFor: #outputIncludesArtifact:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #outputIncludesArtifactClass:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #outputIncludesDeliverable:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #outputIncludesDeliverableOf:!pmi search!public! !
!PMIProcessDefinition categoriesFor: #parentProcessAreaName!public! !
!PMIProcessDefinition categoriesFor: #parentProcessGroupName!public! !
!PMIProcessDefinition categoriesFor: #parentProcessName!public! !
!PMIProcessDefinition categoriesFor: #peekNextProcessByKnowledgeArea!public! !
!PMIProcessDefinition categoriesFor: #peekPreviousProcessByKnowledgeArea!public! !
!PMIProcessDefinition categoriesFor: #printAreaName!public! !
!PMIProcessDefinition categoriesFor: #printGroupName!public! !
!PMIProcessDefinition categoriesFor: #printIOType!public! !
!PMIProcessDefinition categoriesFor: #printName!public! !
!PMIProcessDefinition categoriesFor: #printNumber!public! !
!PMIProcessDefinition categoriesFor: #printOn:!public! !
!PMIProcessDefinition categoriesFor: #processIndex!public! !
!PMIProcessDefinition categoriesFor: #processNumber!public! !
!PMIProcessDefinition categoriesFor: #removeInput:!public! !
!PMIProcessDefinition categoriesFor: #removeInputArtifact:!public! !
!PMIProcessDefinition categoriesFor: #removeOutput:!public! !
!PMIProcessDefinition categoriesFor: #removeOutputArtifact:!public! !
!PMIProcessDefinition categoriesFor: #removeToolOrTechnique:!public! !
!PMIProcessDefinition categoriesFor: #toolsAndTechniques!accessing!private! !
!PMIProcessDefinition categoriesFor: #toolsAndTechniques:!accessing!private! !

!PMIProcessDefinition class methodsFor!

icon

	^Process icon! !
!PMIProcessDefinition class categoriesFor: #icon!public! !

