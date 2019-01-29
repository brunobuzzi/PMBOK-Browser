"Filed out from Dolphin Smalltalk 7"!

Object subclass: #PMIQuizObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIQuizObject guid: (GUID fromString: '{7a94b5c1-81f4-4c83-80b1-384e2a44a5a4}')!
PMIQuizObject comment: ''!
!PMIQuizObject categoriesForClass!Kernel-Objects! !
!PMIQuizObject methodsFor!

defaultLanguage

	^PMILanguage default!

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
!PMIQuizObject categoriesFor: #defaultLanguage!public! !
!PMIQuizObject categoriesFor: #deliverables!public! !
!PMIQuizObject categoriesFor: #getAllInputs!public! !
!PMIQuizObject categoriesFor: #getAllObjects!public! !
!PMIQuizObject categoriesFor: #getAllOutputs!public! !
!PMIQuizObject categoriesFor: #getAllProcesses!public! !
!PMIQuizObject categoriesFor: #groups!public! !
!PMIQuizObject categoriesFor: #knowledgeAreas!public! !
!PMIQuizObject categoriesFor: #projectModel!public! !
!PMIQuizObject categoriesFor: #toolsAndTechniques!public! !

!PMIQuizObject class methodsFor!

new

	^super new initialize! !
!PMIQuizObject class categoriesFor: #new!public! !

