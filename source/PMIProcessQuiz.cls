"Filed out from Dolphin Smalltalk 7"!

PMIQuizObject subclass: #PMIProcessQuiz
	instanceVariableNames: 'processToQuiz inputResults outputResults toolResults descriptionResult groupResult areaResult'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProcessQuiz guid: (GUID fromString: '{bb1ad1ab-2cbc-4264-b09d-184132817ea5}')!
PMIProcessQuiz comment: ''!
!PMIProcessQuiz categoriesForClass!Kernel-Objects! !
!PMIProcessQuiz methodsFor!

addInput: anObject

	^inputResults add: anObject!

addOutput: anObject

	^outputResults add: anObject!

addTool: anObject

	^toolResults add: anObject!

areaResult
	^areaResult!

areaResult: anObject
	areaResult := anObject!

descriptionResult
	^descriptionResult!

descriptionResult: anObject
	descriptionResult := anObject!

groupResult
	^groupResult!

groupResult: anObject
	groupResult := anObject!

initialize

	super initialize.

	inputResults := OrderedCollection new.
	outputResults := OrderedCollection new.
	toolResults := OrderedCollection new.!

inputResults
	^inputResults!

inputResults: anObject
	inputResults := anObject!

outputResults
	^outputResults!

outputResults: anObject
	outputResults := anObject!

processResults

	self halt!

processToQuiz
	^processToQuiz!

processToQuiz: anObject
	processToQuiz := anObject!

removeInput: anObject

	^inputResults remove: anObject!

removeOutput: anObject

	^outputResults remove: anObject!

removeTool: anObject

	^toolResults remove: anObject!

toolResults
	^toolResults!

toolResults: anObject
	toolResults := anObject! !
!PMIProcessQuiz categoriesFor: #addInput:!public! !
!PMIProcessQuiz categoriesFor: #addOutput:!public! !
!PMIProcessQuiz categoriesFor: #addTool:!public! !
!PMIProcessQuiz categoriesFor: #areaResult!accessing!private! !
!PMIProcessQuiz categoriesFor: #areaResult:!accessing!private! !
!PMIProcessQuiz categoriesFor: #descriptionResult!accessing!private! !
!PMIProcessQuiz categoriesFor: #descriptionResult:!accessing!private! !
!PMIProcessQuiz categoriesFor: #groupResult!accessing!private! !
!PMIProcessQuiz categoriesFor: #groupResult:!accessing!private! !
!PMIProcessQuiz categoriesFor: #initialize!public! !
!PMIProcessQuiz categoriesFor: #inputResults!accessing!private! !
!PMIProcessQuiz categoriesFor: #inputResults:!accessing!private! !
!PMIProcessQuiz categoriesFor: #outputResults!accessing!private! !
!PMIProcessQuiz categoriesFor: #outputResults:!accessing!private! !
!PMIProcessQuiz categoriesFor: #processResults!public! !
!PMIProcessQuiz categoriesFor: #processToQuiz!accessing!private! !
!PMIProcessQuiz categoriesFor: #processToQuiz:!accessing!private! !
!PMIProcessQuiz categoriesFor: #removeInput:!public! !
!PMIProcessQuiz categoriesFor: #removeOutput:!public! !
!PMIProcessQuiz categoriesFor: #removeTool:!public! !
!PMIProcessQuiz categoriesFor: #toolResults!accessing!private! !
!PMIProcessQuiz categoriesFor: #toolResults:!accessing!private! !

