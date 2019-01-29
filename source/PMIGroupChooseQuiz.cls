"Filed out from Dolphin Smalltalk 7"!

PMIChooseQuiz subclass: #PMIGroupChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIGroupChooseQuiz guid: (GUID fromString: '{c5b4a9cb-3e0e-484a-b6eb-051a9fd704cc}')!
PMIGroupChooseQuiz comment: ''!
!PMIGroupChooseQuiz categoriesForClass!Kernel-Objects! !
!PMIGroupChooseQuiz methodsFor!

generateOutputChooseText
	text := 'One of the following is an <output> of <' , pmiObject groupName , '>'!

generateProcessesChooseText
	text := 'One of the following Processes is part of Group <' , pmiObject groupName , '>'!

generateRandomOutputChoose
	| outputs random |

	random := Random new.
	pmiObject := self groups randomPeekWith: random.
	answer := pmiObject getAllOutputs randomPeekWith: random.
	outputs := ((self getAllOutputs copy removeAll: pmiObject getAllOutputs; yourself) reject: [:each | each isDocumentUpdate]).
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
	pmiObject := self groups randomPeekWith: random.
	answer := pmiObject processes randomPeekWith: random.
	processes := (self getAllProcesses copy removeAll: pmiObject processes; yourself).
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
	pmiObject := self groups randomPeekWith: random.
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
	text := 'One of the following is a <tool or technique> of <' , pmiObject groupName , '>'!

pmiObject
	^pmiObject!

pmiObject: anObject 
	pmiObject := anObject!

reset

	self initialize.
	! !
!PMIGroupChooseQuiz categoriesFor: #generateOutputChooseText!public!quiz! !
!PMIGroupChooseQuiz categoriesFor: #generateProcessesChooseText!public!quiz! !
!PMIGroupChooseQuiz categoriesFor: #generateRandomOutputChoose!public!quiz! !
!PMIGroupChooseQuiz categoriesFor: #generateRandomProcessChoose!public!quiz! !
!PMIGroupChooseQuiz categoriesFor: #generateRandomToolChoose!public!quiz! !
!PMIGroupChooseQuiz categoriesFor: #generateToolChooseText!public!quiz! !
!PMIGroupChooseQuiz categoriesFor: #pmiObject!accessing!private! !
!PMIGroupChooseQuiz categoriesFor: #pmiObject:!accessing!private! !
!PMIGroupChooseQuiz categoriesFor: #reset!public! !

