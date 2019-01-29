"Filed out from Dolphin Smalltalk 7"!

PMIChooseQuiz subclass: #PMIDeliverableChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDeliverableChooseQuiz guid: (GUID fromString: '{235d93c6-cdab-4092-a00d-22ba87ed7266}')!
PMIDeliverableChooseQuiz comment: ''!
!PMIDeliverableChooseQuiz categoriesForClass!Kernel-Objects! !
!PMIDeliverableChooseQuiz methodsFor!

generateAreaChooseText
	text := '<' , pmiObject name , '>  is output of <Knowledge Area>'!

generateGroupChooseText

	text := '<' , pmiObject name , '>  is output of <Group>'!

generateInputChooseText
	text := '<' , pmiObject name , '>', 'is input of one of the following <Process>'!

generateOutputChooseText
	text := '<' , pmiObject name , '>', 'is output of one of the following <Process>'!

generateRandomAreaChoose
	| areas |

	pmiObject := self selectDeliverableFromOutput.
	answer := pmiObject parentProcess knowledgeArea.
	areas := self knowledgeAreas copy remove: answer; yourself.
	options add: answer.
	options
		add: ((areas difference: options) randomPeekWith: randomObject);
		add: ((areas difference: options) randomPeekWith: randomObject);
		add: ((areas difference: options) randomPeekWith: randomObject).
	self generateAreaChooseText.
	self reorganizeOptions!

generateRandomGroupChoose
	| groups |

	pmiObject := self selectDeliverableFromOutput.
	answer := pmiObject parentProcess managementGroup.
	groups := self groups difference: (OrderedCollection with: answer).
	options add: answer.
	options
		add: ((groups difference: options) randomPeekWith: randomObject);
		add: ((groups difference: options) randomPeekWith: randomObject);
		add: ((groups difference: options) randomPeekWith: randomObject).
	self generateGroupChooseText.
	self reorganizeOptions!

generateRandomInputChoose
	| processes |

	answer := self selectProcessWithDeliverableAsInput.
	pmiObject := (answer input select: [:each | each isProcessOI]) randomPeekWith: randomObject.

	processes := self getAllProcesses.
	options add: answer.
	options
		add: (processes randomPeekWith: randomObject);
		add: (processes randomPeekWith: randomObject);
		add: (processes randomPeekWith: randomObject).
	self generateInputChooseText.
	self reorganizeOptions.!

generateRandomOutputChoose
	| processes |

	pmiObject := self selectDeliverableFromOutput.
	answer := pmiObject parentProcess.
	processes := self getAllProcesses.
	options add: answer.
	options
		add: (processes randomPeekWith: randomObject);
		add: (processes randomPeekWith: randomObject);
		add: (processes randomPeekWith: randomObject).
	self generateOutputChooseText.
	self reorganizeOptions.! !
!PMIDeliverableChooseQuiz categoriesFor: #generateAreaChooseText!public!quiz! !
!PMIDeliverableChooseQuiz categoriesFor: #generateGroupChooseText!public!quiz! !
!PMIDeliverableChooseQuiz categoriesFor: #generateInputChooseText!public! !
!PMIDeliverableChooseQuiz categoriesFor: #generateOutputChooseText!public! !
!PMIDeliverableChooseQuiz categoriesFor: #generateRandomAreaChoose!public!quiz! !
!PMIDeliverableChooseQuiz categoriesFor: #generateRandomGroupChoose!public!quiz! !
!PMIDeliverableChooseQuiz categoriesFor: #generateRandomInputChoose!public!quiz! !
!PMIDeliverableChooseQuiz categoriesFor: #generateRandomOutputChoose!public!quiz! !

