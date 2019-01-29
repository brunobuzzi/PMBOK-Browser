"Filed out from Dolphin Smalltalk 7"!

PMBOKChooseQuiz subclass: #PMBOKGroupChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKGroupChooseQuiz guid: (GUID fromString: '{c5b4a9cb-3e0e-484a-b6eb-051a9fd704cc}')!
PMBOKGroupChooseQuiz comment: ''!
!PMBOKGroupChooseQuiz categoriesForClass!Kernel-Objects! !
!PMBOKGroupChooseQuiz methodsFor!

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
!PMBOKGroupChooseQuiz categoriesFor: #generateOutputChooseText!public!quiz! !
!PMBOKGroupChooseQuiz categoriesFor: #generateProcessesChooseText!public!quiz! !
!PMBOKGroupChooseQuiz categoriesFor: #generateRandomOutputChoose!public!quiz! !
!PMBOKGroupChooseQuiz categoriesFor: #generateRandomProcessChoose!public!quiz! !
!PMBOKGroupChooseQuiz categoriesFor: #generateRandomToolChoose!public!quiz! !
!PMBOKGroupChooseQuiz categoriesFor: #generateToolChooseText!public!quiz! !
!PMBOKGroupChooseQuiz categoriesFor: #pmiObject!accessing!private! !
!PMBOKGroupChooseQuiz categoriesFor: #pmiObject:!accessing!private! !
!PMBOKGroupChooseQuiz categoriesFor: #reset!public! !

