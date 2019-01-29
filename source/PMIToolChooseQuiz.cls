"Filed out from Dolphin Smalltalk 7"!

PMIChooseQuiz subclass: #PMIToolChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIToolChooseQuiz guid: (GUID fromString: '{9667ead7-2437-4ebb-9f99-c27620cb8709}')!
PMIToolChooseQuiz comment: ''!
!PMIToolChooseQuiz categoriesForClass!Kernel-Objects! !
!PMIToolChooseQuiz methodsFor!

generateProcessesChooseText
	text := 'One of the following is an <Process> use the tool or technique <' , pmiObject name , '>'!

generateRandomProcessChoose
	| processes |

	pmiObject := self toolsAndTechniques randomPeekWith: randomObject.
	answer := pmiObject parentProcesses randomPeekWith: randomObject.
	processes := self getAllProcesses difference: pmiObject parentProcesses.
	options add: answer.
	options
		add: (processes randomPeekWith: randomObject);
		add: (processes randomPeekWith: randomObject);
		add: (processes randomPeekWith: randomObject).
	self generateProcessesChooseText.
	self reorganizeOptions! !
!PMIToolChooseQuiz categoriesFor: #generateProcessesChooseText!public!quiz! !
!PMIToolChooseQuiz categoriesFor: #generateRandomProcessChoose!public!quiz! !

