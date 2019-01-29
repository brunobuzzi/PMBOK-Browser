"Filed out from Dolphin Smalltalk 7"!

PMBOKChooseQuiz subclass: #PMBOKDeliverableChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDeliverableChooseQuiz guid: (GUID fromString: '{235d93c6-cdab-4092-a00d-22ba87ed7266}')!
PMBOKDeliverableChooseQuiz comment: ''!
!PMBOKDeliverableChooseQuiz categoriesForClass!Kernel-Objects! !
!PMBOKDeliverableChooseQuiz methodsFor!

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
!PMBOKDeliverableChooseQuiz categoriesFor: #generateAreaChooseText!public!quiz! !
!PMBOKDeliverableChooseQuiz categoriesFor: #generateGroupChooseText!public!quiz! !
!PMBOKDeliverableChooseQuiz categoriesFor: #generateInputChooseText!public! !
!PMBOKDeliverableChooseQuiz categoriesFor: #generateOutputChooseText!public! !
!PMBOKDeliverableChooseQuiz categoriesFor: #generateRandomAreaChoose!public!quiz! !
!PMBOKDeliverableChooseQuiz categoriesFor: #generateRandomGroupChoose!public!quiz! !
!PMBOKDeliverableChooseQuiz categoriesFor: #generateRandomInputChoose!public!quiz! !
!PMBOKDeliverableChooseQuiz categoriesFor: #generateRandomOutputChoose!public!quiz! !

