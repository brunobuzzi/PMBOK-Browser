"Filed out from Dolphin Smalltalk 7"!

PMINonProcessQuiz subclass: #PMIToolQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIToolQuiz guid: (GUID fromString: '{120037c1-7dc3-4aab-bf16-7f7adb48977b}')!
PMIToolQuiz comment: ''!
!PMIToolQuiz categoriesForClass!Kernel-Objects! !
!PMIToolQuiz methodsFor!

getInputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite toolCustomDrawBlock!

getOutputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite toolCustomDrawBlock!

listForQuiz

	^self projectModel toolsAndTechniques!

quizName

	^'Tool or Technique Quiz'! !
!PMIToolQuiz categoriesFor: #getInputDrawBlockFrom:!public! !
!PMIToolQuiz categoriesFor: #getOutputDrawBlockFrom:!public! !
!PMIToolQuiz categoriesFor: #listForQuiz!public! !
!PMIToolQuiz categoriesFor: #quizName!public! !

