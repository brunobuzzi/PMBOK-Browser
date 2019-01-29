"Filed out from Dolphin Smalltalk 7"!

PMBOKNonProcessQuiz subclass: #PMBOKArtifactQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKArtifactQuiz guid: (GUID fromString: '{038b091e-9c23-4609-a804-0d027d1d2a54}')!
PMBOKArtifactQuiz comment: ''!
!PMBOKArtifactQuiz categoriesForClass!Kernel-Objects! !
!PMBOKArtifactQuiz methodsFor!

getInputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite inputArtifactCustomDrawBlock!

getOutputDrawBlockFrom: aPMINonProcessQuizComposite

	^aPMINonProcessQuizComposite outputArtifactCustomDrawBlock!

listForQuiz
	^PMBOKArtifactDefinition allSubclasses!

quizName

	^'Artifact Quiz'! !
!PMBOKArtifactQuiz categoriesFor: #getInputDrawBlockFrom:!public! !
!PMBOKArtifactQuiz categoriesFor: #getOutputDrawBlockFrom:!public! !
!PMBOKArtifactQuiz categoriesFor: #listForQuiz!public! !
!PMBOKArtifactQuiz categoriesFor: #quizName!public! !

