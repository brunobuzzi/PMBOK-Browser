"Filed out from Dolphin Smalltalk 7"!

PMBOKNonProcessQuiz subclass: #PMBOKDeliverableQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDeliverableQuiz guid: (GUID fromString: '{c08af828-5bc8-4d2b-a8e2-f4cb5f5583fa}')!
PMBOKDeliverableQuiz comment: ''!
!PMBOKDeliverableQuiz categoriesForClass!Kernel-Objects! !
!PMBOKDeliverableQuiz methodsFor!

getInputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite inputDeliverableCustomDrawBlock!

getOutputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite outputDeliverableCustomDrawBlock!

listForQuiz

	^self projectModel deliverables!

quizName

	^'Deliverable Quiz'! !
!PMBOKDeliverableQuiz categoriesFor: #getInputDrawBlockFrom:!public! !
!PMBOKDeliverableQuiz categoriesFor: #getOutputDrawBlockFrom:!public! !
!PMBOKDeliverableQuiz categoriesFor: #listForQuiz!public! !
!PMBOKDeliverableQuiz categoriesFor: #quizName!public! !

