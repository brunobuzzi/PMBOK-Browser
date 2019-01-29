"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKProcessDefinition
	instanceVariableNames: 'name description input output knowledgeArea managementGroup image toolsAndTechniques inputArtifacts outputArtifacts'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessDefinition guid: (GUID fromString: '{46e86410-6817-422a-b18e-2f54dad0f797}')!
PMBOKProcessDefinition comment: ''!
!PMBOKProcessDefinition categoriesForClass!Kernel-Objects! !
!PMBOKProcessDefinition methodsFor!

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
!PMBOKProcessDefinition categoriesFor: #addInput:!public! !
!PMBOKProcessDefinition categoriesFor: #addInput:afterIndex:!public! !
!PMBOKProcessDefinition categoriesFor: #addInput:beforeIndex:!public! !
!PMBOKProcessDefinition categoriesFor: #addInputArtifact:!public! !
!PMBOKProcessDefinition categoriesFor: #addOutput:!public! !
!PMBOKProcessDefinition categoriesFor: #addOutput:afterIndex:!public! !
!PMBOKProcessDefinition categoriesFor: #addOutput:beforeIndex:!public! !
!PMBOKProcessDefinition categoriesFor: #addOutputArtifact:!public! !
!PMBOKProcessDefinition categoriesFor: #addToolOrTechnique:!public! !
!PMBOKProcessDefinition categoriesFor: #addToolOrTechnique:afterIndex:!public! !
!PMBOKProcessDefinition categoriesFor: #addToolOrTechnique:beforeIndex:!public! !
!PMBOKProcessDefinition categoriesFor: #area:!public! !
!PMBOKProcessDefinition categoriesFor: #chapterNumber!public! !
!PMBOKProcessDefinition categoriesFor: #description!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #description:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #generateInputTreeForDeliverable:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #generateOutTreeForDeliverable:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #hasDeliverableInInput!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #hasDeliverableInOutput!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #hasDescriptionText:!public! !
!PMBOKProcessDefinition categoriesFor: #hasImage!public! !
!PMBOKProcessDefinition categoriesFor: #image!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #image:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #includesDeliverable:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #includesInput:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #includesInputName:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #includesOutput:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #includesOutputName:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #includesToolOrTechnique:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #includesToolOrTechniqueName:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #indexOfInput:!public! !
!PMBOKProcessDefinition categoriesFor: #indexOfOutput:!public! !
!PMBOKProcessDefinition categoriesFor: #indexOfTool:!public! !
!PMBOKProcessDefinition categoriesFor: #initialize!public! !
!PMBOKProcessDefinition categoriesFor: #input!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #input:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #inputArtifacts!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #inputArtifacts:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #inputDeliverables!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #inputIncludesArtifact:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #inputIncludesArtifactClass:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #inputIncludesDeliverable:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #inputIncludesDeliverableOf:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #isProcessDefinition!public! !
!PMBOKProcessDefinition categoriesFor: #knowledgeArea!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #managementGroup!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #managementGroup:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #name!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #name:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #output!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #output:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #outputArtifacts!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #outputArtifacts:!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #outputDeliverables!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #outputIncludesArtifact:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #outputIncludesArtifactClass:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #outputIncludesDeliverable:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #outputIncludesDeliverableOf:!pmi search!public! !
!PMBOKProcessDefinition categoriesFor: #parentProcessAreaName!public! !
!PMBOKProcessDefinition categoriesFor: #parentProcessGroupName!public! !
!PMBOKProcessDefinition categoriesFor: #parentProcessName!public! !
!PMBOKProcessDefinition categoriesFor: #peekNextProcessByKnowledgeArea!public! !
!PMBOKProcessDefinition categoriesFor: #peekPreviousProcessByKnowledgeArea!public! !
!PMBOKProcessDefinition categoriesFor: #printAreaName!public! !
!PMBOKProcessDefinition categoriesFor: #printGroupName!public! !
!PMBOKProcessDefinition categoriesFor: #printIOType!public! !
!PMBOKProcessDefinition categoriesFor: #printName!public! !
!PMBOKProcessDefinition categoriesFor: #printNumber!public! !
!PMBOKProcessDefinition categoriesFor: #printOn:!public! !
!PMBOKProcessDefinition categoriesFor: #processIndex!public! !
!PMBOKProcessDefinition categoriesFor: #processNumber!public! !
!PMBOKProcessDefinition categoriesFor: #removeInput:!public! !
!PMBOKProcessDefinition categoriesFor: #removeInputArtifact:!public! !
!PMBOKProcessDefinition categoriesFor: #removeOutput:!public! !
!PMBOKProcessDefinition categoriesFor: #removeOutputArtifact:!public! !
!PMBOKProcessDefinition categoriesFor: #removeToolOrTechnique:!public! !
!PMBOKProcessDefinition categoriesFor: #toolsAndTechniques!accessing!private! !
!PMBOKProcessDefinition categoriesFor: #toolsAndTechniques:!accessing!private! !

!PMBOKProcessDefinition class methodsFor!

icon

	^Process icon! !
!PMBOKProcessDefinition class categoriesFor: #icon!public! !

