"Filed out from Dolphin Smalltalk 7"!

PMIChooseQuiz subclass: #PMIProcessChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProcessChooseQuiz guid: (GUID fromString: '{38f6b345-3a7e-4b49-908c-ecc3951917eb}')!
PMIProcessChooseQuiz comment: ''!
!PMIProcessChooseQuiz categoriesForClass!Kernel-Objects! !
!PMIProcessChooseQuiz methodsFor!

generateAreaChooseText
	text := 'One of the following is the <Knowledge Area> of <' , pmiObject name , '>'!

generateGroupChooseText
	text := 'One of the following is the <Group> of <' , pmiObject name , '>'!

generateInputChooseText
	text := 'One of the following is the <input> of <' , pmiObject name , '>'!

generateOutputChooseText
	text := 'One of the following is the <output> of <' , pmiObject name , '>'!

generateRandomAreaChoose
	| outputs random |
	random := Random new.
	pmiObject := self getAllProcesses randomPeekWith: random.
	answer := pmiObject knowledgeArea.
	outputs := self knowledgeAreas copy remove: pmiObject knowledgeArea; yourself.
	options add: answer.
	options
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random).
	self generateAreaChooseText.
	self reorganizeOptions!

generateRandomGroupChoose
	| outputs random |
	random := Random new.
	pmiObject := self getAllProcesses randomPeekWith: random.
	answer := pmiObject managementGroup.
	outputs := self groups copy remove: pmiObject managementGroup; yourself.
	options add: answer.
	options
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random);
		add: (outputs randomPeekWith: random).
	self generateGroupChooseText.
	self reorganizeOptions!

generateRandomInputChoose
	| inputs |

	pmiObject := self getAllProcesses randomPeekWith: randomObject.
	answer := (pmiObject input select: [:each | each deliverable isNil or:[each deliverable isOrganizationAsset not]]) randomPeekWith: randomObject.
	inputs := ((self getAllInputs reject: [:each | (each deliverableEqualTo: answer) or: [pmiObject inputIncludesDeliverable: each ]]) reject: [:each | each isOrganizationAsset]) difference: pmiObject input.
	options add: answer.
	options
		add: (inputs randomPeekWith: randomObject);
		add: (inputs randomPeekWith: randomObject);
		add: (inputs randomPeekWith: randomObject).
	self generateInputChooseText.
	self reorganizeOptions!

generateRandomOutputChoose
	| outputs |

	pmiObject := self getAllProcesses randomPeekWith: randomObject.
	answer := pmiObject output randomPeekWith: randomObject.
	outputs := (self getAllOutputs copy difference: pmiObject output) reject: [:each | each isDocumentUpdate].
	options add: answer.
	options
		add: (((pmiObject peekNextProcessByKnowledgeArea ifNil: [outputs] ifNotNil: [:prc | prc output difference: pmiObject output]) difference: options) randomPeekWith: randomObject);
		add: (((pmiObject peekPreviousProcessByKnowledgeArea ifNil: [outputs] ifNotNil: [:prc | prc output difference: pmiObject output]) difference: options) randomPeekWith: randomObject);
		add: ((outputs difference: options) randomPeekWith: randomObject).
	self generateOutputChooseText.
	self reorganizeOptions.!

generateRandomToolChoose
	| tools |

	pmiObject := self getAllProcesses randomPeekWith: randomObject.
	answer := pmiObject toolsAndTechniques randomPeekWith: randomObject.
	tools := self toolsAndTechniques copy difference: pmiObject toolsAndTechniques.
	options add: answer.
	options
		add: ((pmiObject peekPreviousProcessByKnowledgeArea ifNil: [tools] ifNotNil: [:prc | prc toolsAndTechniques difference: pmiObject toolsAndTechniques]) randomPeekWith: randomObject);
		add: ((pmiObject peekNextProcessByKnowledgeArea ifNil: [tools] ifNotNil: [:prc | prc toolsAndTechniques difference: pmiObject toolsAndTechniques]) randomPeekWith: randomObject);
		add: (tools randomPeekWith: randomObject).
	self generateToolChooseText.
	self reorganizeOptions!

generateToolChooseText
	text := 'One of the following is a <tool or technique> of <' , pmiObject name , '>'!

pmiObject
	^pmiObject!

pmiObject: anObject 
	pmiObject := anObject! !
!PMIProcessChooseQuiz categoriesFor: #generateAreaChooseText!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #generateGroupChooseText!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #generateInputChooseText!public! !
!PMIProcessChooseQuiz categoriesFor: #generateOutputChooseText!public! !
!PMIProcessChooseQuiz categoriesFor: #generateRandomAreaChoose!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #generateRandomGroupChoose!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #generateRandomInputChoose!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #generateRandomOutputChoose!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #generateRandomToolChoose!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #generateToolChooseText!public!quiz! !
!PMIProcessChooseQuiz categoriesFor: #pmiObject!accessing!private! !
!PMIProcessChooseQuiz categoriesFor: #pmiObject:!accessing!private! !

