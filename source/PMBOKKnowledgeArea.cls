"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKKnowledgeArea
	instanceVariableNames: 'name description processes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKKnowledgeArea guid: (GUID fromString: '{fc8fc3bb-d1dc-45f8-ad04-404472e92df3}')!
PMBOKKnowledgeArea comment: ''!
!PMBOKKnowledgeArea categoriesForClass!Kernel-Objects! !
!PMBOKKnowledgeArea methodsFor!

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
!PMBOKKnowledgeArea categoriesFor: #addAll:!public! !
!PMBOKKnowledgeArea categoriesFor: #areaName!public! !
!PMBOKKnowledgeArea categoriesFor: #deliverableDescription!public! !
!PMBOKKnowledgeArea categoriesFor: #description!accessing!private! !
!PMBOKKnowledgeArea categoriesFor: #description:!accessing!private! !
!PMBOKKnowledgeArea categoriesFor: #englishAreaName!public! !
!PMBOKKnowledgeArea categoriesFor: #getAllInputs!public! !
!PMBOKKnowledgeArea categoriesFor: #getAllOutputs!public! !
!PMBOKKnowledgeArea categoriesFor: #hasDescriptionText:!public! !
!PMBOKKnowledgeArea categoriesFor: #initialize!public! !
!PMBOKKnowledgeArea categoriesFor: #inputs!public! !
!PMBOKKnowledgeArea categoriesFor: #name!accessing!private! !
!PMBOKKnowledgeArea categoriesFor: #name:!accessing!private! !
!PMBOKKnowledgeArea categoriesFor: #outputs!public! !
!PMBOKKnowledgeArea categoriesFor: #parentProcessAreaName!public! !
!PMBOKKnowledgeArea categoriesFor: #parentProcessGroupName!public! !
!PMBOKKnowledgeArea categoriesFor: #parentProcessName!public! !
!PMBOKKnowledgeArea categoriesFor: #printIOType!public! !
!PMBOKKnowledgeArea categoriesFor: #processes!accessing!private! !
!PMBOKKnowledgeArea categoriesFor: #processes:!accessing!private! !
!PMBOKKnowledgeArea categoriesFor: #processIndexOf:!public! !
!PMBOKKnowledgeArea categoriesFor: #spanishAreaName!public! !
!PMBOKKnowledgeArea categoriesFor: #toolsAndTechniques!public! !

!PMBOKKnowledgeArea class methodsFor!

icon

	^Icon fromId: 'EnvironmentBrowserShell.ico'! !
!PMBOKKnowledgeArea class categoriesFor: #icon!public! !

