"Filed out from Dolphin Smalltalk 7"!

PMINonProcessQuiz subclass: #PMIArtifactQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIArtifactQuiz guid: (GUID fromString: '{038b091e-9c23-4609-a804-0d027d1d2a54}')!
PMIArtifactQuiz comment: ''!
!PMIArtifactQuiz categoriesForClass!Kernel-Objects! !
!PMIArtifactQuiz methodsFor!

getInputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite inputArtifactCustomDrawBlock!

getOutputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite outputArtifactCustomDrawBlock!

listForQuiz

	^PMIArtifactDefinition allSubclasses!

quizName

	^'Artifact Quiz'! !
!PMIArtifactQuiz categoriesFor: #getInputDrawBlockFrom:!public! !
!PMIArtifactQuiz categoriesFor: #getOutputDrawBlockFrom:!public! !
!PMIArtifactQuiz categoriesFor: #listForQuiz!public! !
!PMIArtifactQuiz categoriesFor: #quizName!public! !

