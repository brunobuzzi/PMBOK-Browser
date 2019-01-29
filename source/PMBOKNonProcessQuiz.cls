"Filed out from Dolphin Smalltalk 7"!

PMBOKQuizObject subclass: #PMBOKNonProcessQuiz
	instanceVariableNames: 'inputProcesses outputProcesses'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKNonProcessQuiz guid: (GUID fromString: '{f5d8c391-dfe1-4fbd-a35d-98aa21cbc98c}')!
PMBOKNonProcessQuiz comment: ''!
!PMBOKNonProcessQuiz categoriesForClass!Kernel-Objects! !
!PMBOKNonProcessQuiz methodsFor!

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
!PMBOKNonProcessQuiz categoriesFor: #addInputProcess:!public! !
!PMBOKNonProcessQuiz categoriesFor: #addOutputProcess:!public! !
!PMBOKNonProcessQuiz categoriesFor: #initialize!public! !
!PMBOKNonProcessQuiz categoriesFor: #inputProcesses!accessing!private! !
!PMBOKNonProcessQuiz categoriesFor: #inputProcesses:!accessing!private! !
!PMBOKNonProcessQuiz categoriesFor: #outputProcesses!accessing!private! !
!PMBOKNonProcessQuiz categoriesFor: #outputProcesses:!accessing!private! !
!PMBOKNonProcessQuiz categoriesFor: #quizName!public! !
!PMBOKNonProcessQuiz categoriesFor: #removeInputProcess:!public! !
!PMBOKNonProcessQuiz categoriesFor: #removeOutputProcess:!public! !
!PMBOKNonProcessQuiz categoriesFor: #reset!public! !

