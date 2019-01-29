"Filed out from Dolphin Smalltalk 7"!

PMBOKQuizObject subclass: #PMBOKProcessQuiz
	instanceVariableNames: 'processToQuiz inputResults outputResults toolResults descriptionResult groupResult areaResult'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessQuiz guid: (GUID fromString: '{bb1ad1ab-2cbc-4264-b09d-184132817ea5}')!
PMBOKProcessQuiz comment: ''!
!PMBOKProcessQuiz categoriesForClass!Kernel-Objects! !
!PMBOKProcessQuiz methodsFor!

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
!PMBOKProcessQuiz categoriesFor: #addInput:!public! !
!PMBOKProcessQuiz categoriesFor: #addOutput:!public! !
!PMBOKProcessQuiz categoriesFor: #addTool:!public! !
!PMBOKProcessQuiz categoriesFor: #areaResult!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #areaResult:!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #descriptionResult!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #descriptionResult:!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #groupResult!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #groupResult:!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #initialize!public! !
!PMBOKProcessQuiz categoriesFor: #inputResults!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #inputResults:!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #outputResults!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #outputResults:!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #processResults!public! !
!PMBOKProcessQuiz categoriesFor: #processToQuiz!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #processToQuiz:!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #removeInput:!public! !
!PMBOKProcessQuiz categoriesFor: #removeOutput:!public! !
!PMBOKProcessQuiz categoriesFor: #removeTool:!public! !
!PMBOKProcessQuiz categoriesFor: #toolResults!accessing!private! !
!PMBOKProcessQuiz categoriesFor: #toolResults:!accessing!private! !

