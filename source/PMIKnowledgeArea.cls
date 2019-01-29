"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIKnowledgeArea
	instanceVariableNames: 'name description processes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIKnowledgeArea guid: (GUID fromString: '{fc8fc3bb-d1dc-45f8-ad04-404472e92df3}')!
PMIKnowledgeArea comment: ''!
!PMIKnowledgeArea categoriesForClass!Kernel-Objects! !
!PMIKnowledgeArea methodsFor!

addAll: anOrderedCollectionOfPMIProcess 

	anOrderedCollectionOfPMIProcess do: [:each | each area: self].

	^processes addAll: anOrderedCollectionOfPMIProcess !

areaName

	^self defaultLanguage areaNameFor: self!

deliverableDescription
	^''!

description
	^description!

description: anObject
	description := anObject!

englishAreaName

	^'Knowledge Area'!

getAllInputs

	^processes inject: OrderedCollection new into: [:all :each | all addAll: each input. all]!

getAllOutputs

	^processes inject: OrderedCollection new into: [:all :each | all addAll: each output. all]!

hasDescriptionText: aString 

	^aString match: description asString!

initialize

	super initialize.

	name := self areaName.
	description := ''.
	processes := OrderedCollection new.!

inputs

	^((processes inject: OrderedCollection new into: [:all :each | all addAll: each input. all]) collect: [:each | each deliverable]) copyWithoutDuplicates!

name
	^name!

name: anObject
	name := anObject!

outputs

	^((processes inject: OrderedCollection new into: [:all :each | all addAll: each output. all]) collect: [:each | each deliverable]) copyWithoutDuplicates!

parentProcessAreaName
	^name!

parentProcessGroupName
	^''!

parentProcessName
	^''!

printIOType
	^''!

processes
	^processes!

processes: anObject
	processes := anObject!

processIndexOf: aPMIProcess

	^processes indexOf: aPMIProcess ifAbsent: [nil]!

spanishAreaName

	^'Area de Conocimiento'!

toolsAndTechniques

	^(processes inject: OrderedCollection new into: [:all :each | all addAll: each toolsAndTechniques. all]) copyWithoutDuplicates! !
!PMIKnowledgeArea categoriesFor: #addAll:!public! !
!PMIKnowledgeArea categoriesFor: #areaName!public! !
!PMIKnowledgeArea categoriesFor: #deliverableDescription!public! !
!PMIKnowledgeArea categoriesFor: #description!accessing!private! !
!PMIKnowledgeArea categoriesFor: #description:!accessing!private! !
!PMIKnowledgeArea categoriesFor: #englishAreaName!public! !
!PMIKnowledgeArea categoriesFor: #getAllInputs!public! !
!PMIKnowledgeArea categoriesFor: #getAllOutputs!public! !
!PMIKnowledgeArea categoriesFor: #hasDescriptionText:!public! !
!PMIKnowledgeArea categoriesFor: #initialize!public! !
!PMIKnowledgeArea categoriesFor: #inputs!public! !
!PMIKnowledgeArea categoriesFor: #name!accessing!private! !
!PMIKnowledgeArea categoriesFor: #name:!accessing!private! !
!PMIKnowledgeArea categoriesFor: #outputs!public! !
!PMIKnowledgeArea categoriesFor: #parentProcessAreaName!public! !
!PMIKnowledgeArea categoriesFor: #parentProcessGroupName!public! !
!PMIKnowledgeArea categoriesFor: #parentProcessName!public! !
!PMIKnowledgeArea categoriesFor: #printIOType!public! !
!PMIKnowledgeArea categoriesFor: #processes!accessing!private! !
!PMIKnowledgeArea categoriesFor: #processes:!accessing!private! !
!PMIKnowledgeArea categoriesFor: #processIndexOf:!public! !
!PMIKnowledgeArea categoriesFor: #spanishAreaName!public! !
!PMIKnowledgeArea categoriesFor: #toolsAndTechniques!public! !

!PMIKnowledgeArea class methodsFor!

icon

	^Icon fromId: 'EnvironmentBrowserShell.ico'! !
!PMIKnowledgeArea class categoriesFor: #icon!public! !

