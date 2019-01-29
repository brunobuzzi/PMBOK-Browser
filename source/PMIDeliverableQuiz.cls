"Filed out from Dolphin Smalltalk 7"!

PMINonProcessQuiz subclass: #PMIDeliverableQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDeliverableQuiz guid: (GUID fromString: '{c08af828-5bc8-4d2b-a8e2-f4cb5f5583fa}')!
PMIDeliverableQuiz comment: ''!
!PMIDeliverableQuiz categoriesForClass!Kernel-Objects! !
!PMIDeliverableQuiz methodsFor!

getInputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite inputDeliverableCustomDrawBlock!

getOutputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite outputDeliverableCustomDrawBlock!

listForQuiz

	^self projectModel deliverables!

quizName

	^'Deliverable Quiz'! !
!PMIDeliverableQuiz categoriesFor: #getInputDrawBlockFrom:!public! !
!PMIDeliverableQuiz categoriesFor: #getOutputDrawBlockFrom:!public! !
!PMIDeliverableQuiz categoriesFor: #listForQuiz!public! !
!PMIDeliverableQuiz categoriesFor: #quizName!public! !

