"Filed out from Dolphin Smalltalk 7"!

PMBOKChooseQuiz subclass: #PMBOKToolChooseQuiz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKToolChooseQuiz guid: (GUID fromString: '{9667ead7-2437-4ebb-9f99-c27620cb8709}')!
PMBOKToolChooseQuiz comment: ''!
!PMBOKToolChooseQuiz categoriesForClass!Kernel-Objects! !
!PMBOKToolChooseQuiz methodsFor!

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
!PMBOKToolChooseQuiz categoriesFor: #generateProcessesChooseText!public!quiz! !
!PMBOKToolChooseQuiz categoriesFor: #generateRandomProcessChoose!public!quiz! !

