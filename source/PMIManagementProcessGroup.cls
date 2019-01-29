"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIManagementProcessGroup
	instanceVariableNames: 'processes description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIManagementProcessGroup guid: (GUID fromString: '{23f3bd7a-fded-4617-bb6b-40d5597ca8b2}')!
PMIManagementProcessGroup comment: ''!
!PMIManagementProcessGroup categoriesForClass!Kernel-Objects! !
!PMIManagementProcessGroup methodsFor!

addProcess: aPMIProcess

	aPMIProcess managementGroup: self.
	^processes add: aPMIProcess!

deliverableDescription
	^''!

description
	^description!

description: anObject
	description := anObject!

englishGroupName

	^'Processes Group'!

getAllInputs

	^processes inject: OrderedCollection new into: [:all :each | all addAll: each input. all]!

getAllOutputs

	^processes inject: OrderedCollection new into: [:all :each | all addAll: each output. all]!

groupName

	^self defaultLanguage groupNameFor: self!

hasDescriptionText: aString 

	^aString match: description asString!

initialize

	super initialize.

	description := ''.
	processes := OrderedCollection new.!

inputs

	^((processes inject: OrderedCollection new into: [:all :each | all addAll: each input. all]) collect: [:each | each deliverable]) copyWithoutDuplicates!

name

	^self groupName!

outputs

	^((processes inject: OrderedCollection new into: [:all :each | all addAll: each output. all]) collect: [:each | each deliverable]) copyWithoutDuplicates!

parentProcessAreaName
	^self groupName!

parentProcessGroupName
	^''!

parentProcessName
	^''!

printIOType
	^self groupName!

processes
	^processes!

processes: anObject
	processes := anObject!

spanishGroupName
	^'Grupo de Procesos'!

toolsAndTechniques

	^(processes inject: OrderedCollection new into: [:all :each | all addAll: each toolsAndTechniques. all]) copyWithoutDuplicates! !
!PMIManagementProcessGroup categoriesFor: #addProcess:!public! !
!PMIManagementProcessGroup categoriesFor: #deliverableDescription!public! !
!PMIManagementProcessGroup categoriesFor: #description!accessing!private! !
!PMIManagementProcessGroup categoriesFor: #description:!accessing!private! !
!PMIManagementProcessGroup categoriesFor: #englishGroupName!public! !
!PMIManagementProcessGroup categoriesFor: #getAllInputs!public! !
!PMIManagementProcessGroup categoriesFor: #getAllOutputs!public! !
!PMIManagementProcessGroup categoriesFor: #groupName!public! !
!PMIManagementProcessGroup categoriesFor: #hasDescriptionText:!public! !
!PMIManagementProcessGroup categoriesFor: #initialize!public! !
!PMIManagementProcessGroup categoriesFor: #inputs!public! !
!PMIManagementProcessGroup categoriesFor: #name!public! !
!PMIManagementProcessGroup categoriesFor: #outputs!public! !
!PMIManagementProcessGroup categoriesFor: #parentProcessAreaName!public! !
!PMIManagementProcessGroup categoriesFor: #parentProcessGroupName!public! !
!PMIManagementProcessGroup categoriesFor: #parentProcessName!public! !
!PMIManagementProcessGroup categoriesFor: #printIOType!public! !
!PMIManagementProcessGroup categoriesFor: #processes!accessing!private! !
!PMIManagementProcessGroup categoriesFor: #processes:!accessing!private! !
!PMIManagementProcessGroup categoriesFor: #spanishGroupName!public! !
!PMIManagementProcessGroup categoriesFor: #toolsAndTechniques!public! !

!PMIManagementProcessGroup class methodsFor!

icon

	^MethodProtocol icon! !
!PMIManagementProcessGroup class categoriesFor: #icon!public! !

