"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKManagementProcessGroup
	instanceVariableNames: 'processes description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKManagementProcessGroup guid: (GUID fromString: '{23f3bd7a-fded-4617-bb6b-40d5597ca8b2}')!
PMBOKManagementProcessGroup comment: ''!
!PMBOKManagementProcessGroup categoriesForClass!Kernel-Objects! !
!PMBOKManagementProcessGroup methodsFor!

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
!PMBOKManagementProcessGroup categoriesFor: #addProcess:!public! !
!PMBOKManagementProcessGroup categoriesFor: #deliverableDescription!public! !
!PMBOKManagementProcessGroup categoriesFor: #description!accessing!private! !
!PMBOKManagementProcessGroup categoriesFor: #description:!accessing!private! !
!PMBOKManagementProcessGroup categoriesFor: #englishGroupName!public! !
!PMBOKManagementProcessGroup categoriesFor: #getAllInputs!public! !
!PMBOKManagementProcessGroup categoriesFor: #getAllOutputs!public! !
!PMBOKManagementProcessGroup categoriesFor: #groupName!public! !
!PMBOKManagementProcessGroup categoriesFor: #hasDescriptionText:!public! !
!PMBOKManagementProcessGroup categoriesFor: #initialize!public! !
!PMBOKManagementProcessGroup categoriesFor: #inputs!public! !
!PMBOKManagementProcessGroup categoriesFor: #name!public! !
!PMBOKManagementProcessGroup categoriesFor: #outputs!public! !
!PMBOKManagementProcessGroup categoriesFor: #parentProcessAreaName!public! !
!PMBOKManagementProcessGroup categoriesFor: #parentProcessGroupName!public! !
!PMBOKManagementProcessGroup categoriesFor: #parentProcessName!public! !
!PMBOKManagementProcessGroup categoriesFor: #printIOType!public! !
!PMBOKManagementProcessGroup categoriesFor: #processes!accessing!private! !
!PMBOKManagementProcessGroup categoriesFor: #processes:!accessing!private! !
!PMBOKManagementProcessGroup categoriesFor: #spanishGroupName!public! !
!PMBOKManagementProcessGroup categoriesFor: #toolsAndTechniques!public! !

!PMBOKManagementProcessGroup class methodsFor!

icon

	^MethodProtocol icon! !
!PMBOKManagementProcessGroup class categoriesFor: #icon!public! !

