"Filed out from Dolphin Smalltalk 7"!

PMIChooseQuiz subclass: #PMIAreaChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIAreaChooseQuiz guid: (GUID fromString: '{08f58954-a9af-476e-bc35-3f6d23ae70f4}')!
PMIAreaChooseQuiz comment: ''!
!PMIAreaChooseQuiz categoriesForClass!Kernel-Objects! !
!PMIAreaChooseQuiz methodsFor!

generateOutputChooseText
	text := 'One of the following is an <output> of <' , pmiObject areaName , '>'!

generateProcessesChooseText
	text := 'One of the following is an <Process> is part of Knowledge Area <' , pmiObject areaName 
				, '>'!

generateRandomOutputChoose
	| outputs random |
	random := Random new.
	pmiObject := self knowledgeAreas randomPeekWith: random.
	answer := pmiObject getAllOutputs randomPeekWith: random.
	outputs := (self getAllOutputs copy removeAll: pmiObject getAllOutputs; yourself) reject: [:each | each isDocumentUpdate].
	options add: answer.
	options
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random).
	self generateOutputChooseText.
	self reorganizeOptions!

generateRandomProcessChoose
	| processes random |
	random := Random new.
	pmiObject := self knowledgeAreas randomPeekWith: random.
	answer := pmiObject processes randomPeekWith: random.
	processes := self getAllProcesses copy removeAll: pmiObject processes; yourself.
	options add: answer.
	options
		add: (processes randomPeekWith: random);
		add: (processes randomPeekWith: random);
		add: (processes randomPeekWith: random).
	self generateProcessesChooseText.
	self reorganizeOptions!

generateRandomToolChoose
	| outputs random |
	random := Random new.
	pmiObject := self knowledgeAreas randomPeekWith: random.
	answer := pmiObject toolsAndTechniques randomPeekWith: random.
	outputs := self toolsAndTechniques copy removeAll: pmiObject toolsAndTechniques; yourself.
	options add: answer.
	options
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random).
	self generateToolChooseText.
	self reorganizeOptions!

generateToolChooseText
	text := 'One of the following is a <tool or technique> of <' , pmiObject areaName , '>'!

pmiObject
	^pmiObject!

pmiObject: anObject 
	pmiObject := anObject! !
!PMIAreaChooseQuiz categoriesFor: #generateOutputChooseText!public!quiz! !
!PMIAreaChooseQuiz categoriesFor: #generateProcessesChooseText!public!quiz! !
!PMIAreaChooseQuiz categoriesFor: #generateRandomOutputChoose!public!quiz! !
!PMIAreaChooseQuiz categoriesFor: #generateRandomProcessChoose!public!quiz! !
!PMIAreaChooseQuiz categoriesFor: #generateRandomToolChoose!public!quiz! !
!PMIAreaChooseQuiz categoriesFor: #generateToolChooseText!public!quiz! !
!PMIAreaChooseQuiz categoriesFor: #pmiObject!accessing!private! !
!PMIAreaChooseQuiz categoriesFor: #pmiObject:!accessing!private! !

