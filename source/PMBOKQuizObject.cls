"Filed out from Dolphin Smalltalk 7"!

Object subclass: #PMBOKQuizObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKQuizObject guid: (GUID fromString: '{7a94b5c1-81f4-4c83-80b1-384e2a44a5a4}')!
PMBOKQuizObject comment: ''!
!PMBOKQuizObject categoriesForClass!Kernel-Objects! !
!PMBOKQuizObject methodsFor!

defaultLanguage
	^PMBOKLanguage default!

deliverables

	^self projectModel deliverables!

getAllInputs

	^self projectModel getAllInputs!

getAllObjects

	^self toolsAndTechniques,
	self knowledgeAreas,
	self groups,
	self getAllProcesses,
	self getAllOutputs,
	self getAllInputs!

getAllOutputs

	^self projectModel getAllOutputs!

getAllProcesses

	^self projectModel getAllProcesses!

groups

	^self projectModel groups!

knowledgeAreas

	^self projectModel knowledgeAreas!

projectModel

	^self defaultLanguage defaultPMIModel!

toolsAndTechniques

	^self projectModel toolsAndTechniques! !
!PMBOKQuizObject categoriesFor: #defaultLanguage!public! !
!PMBOKQuizObject categoriesFor: #deliverables!public! !
!PMBOKQuizObject categoriesFor: #getAllInputs!public! !
!PMBOKQuizObject categoriesFor: #getAllObjects!public! !
!PMBOKQuizObject categoriesFor: #getAllOutputs!public! !
!PMBOKQuizObject categoriesFor: #getAllProcesses!public! !
!PMBOKQuizObject categoriesFor: #groups!public! !
!PMBOKQuizObject categoriesFor: #knowledgeAreas!public! !
!PMBOKQuizObject categoriesFor: #projectModel!public! !
!PMBOKQuizObject categoriesFor: #toolsAndTechniques!public! !

!PMBOKQuizObject class methodsFor!

new

	^super new initialize! !
!PMBOKQuizObject class categoriesFor: #new!public! !

