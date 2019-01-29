"Filed out from Dolphin Smalltalk 7"!

PMIQuizObject subclass: #PMINonProcessQuiz
	instanceVariableNames: 'inputProcesses outputProcesses'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMINonProcessQuiz guid: (GUID fromString: '{f5d8c391-dfe1-4fbd-a35d-98aa21cbc98c}')!
PMINonProcessQuiz comment: ''!
!PMINonProcessQuiz categoriesForClass!Kernel-Objects! !
!PMINonProcessQuiz methodsFor!

addInputProcess: aPMIProcessDefinition

	^inputProcesses add: aPMIProcessDefinition!

addOutputProcess: aPMIProcessDefinition

	^outputProcesses add: aPMIProcessDefinition!

initialize

	super initialize.

	inputProcesses := OrderedCollection new.
	outputProcesses := OrderedCollection new.!

inputProcesses
	^inputProcesses!

inputProcesses: anObject
	inputProcesses := anObject!

outputProcesses
	^outputProcesses!

outputProcesses: anObject
	outputProcesses := anObject!

quizName

	^'Non Process Quiz'!

removeInputProcess: aPMIProcessDefinition

	^inputProcesses remove: aPMIProcessDefinition!

removeOutputProcess: aPMIProcessDefinition

	^outputProcesses remove: aPMIProcessDefinition!

reset

	self initialize! !
!PMINonProcessQuiz categoriesFor: #addInputProcess:!public! !
!PMINonProcessQuiz categoriesFor: #addOutputProcess:!public! !
!PMINonProcessQuiz categoriesFor: #initialize!public! !
!PMINonProcessQuiz categoriesFor: #inputProcesses!accessing!private! !
!PMINonProcessQuiz categoriesFor: #inputProcesses:!accessing!private! !
!PMINonProcessQuiz categoriesFor: #outputProcesses!accessing!private! !
!PMINonProcessQuiz categoriesFor: #outputProcesses:!accessing!private! !
!PMINonProcessQuiz categoriesFor: #quizName!public! !
!PMINonProcessQuiz categoriesFor: #removeInputProcess:!public! !
!PMINonProcessQuiz categoriesFor: #removeOutputProcess:!public! !
!PMINonProcessQuiz categoriesFor: #reset!public! !

