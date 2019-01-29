"Filed out from Dolphin Smalltalk 7"!

PMBOKNonProcessQuiz subclass: #PMBOKToolQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKToolQuiz guid: (GUID fromString: '{120037c1-7dc3-4aab-bf16-7f7adb48977b}')!
PMBOKToolQuiz comment: ''!
!PMBOKToolQuiz categoriesForClass!Kernel-Objects! !
!PMBOKToolQuiz methodsFor!

getInputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite toolCustomDrawBlock!

getOutputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite toolCustomDrawBlock!

listForQuiz

	^self projectModel toolsAndTechniques!

quizName

	^'Tool or Technique Quiz'! !
!PMBOKToolQuiz categoriesFor: #getInputDrawBlockFrom:!public! !
!PMBOKToolQuiz categoriesFor: #getOutputDrawBlockFrom:!public! !
!PMBOKToolQuiz categoriesFor: #listForQuiz!public! !
!PMBOKToolQuiz categoriesFor: #quizName!public! !

