"Filed out from Dolphin Smalltalk 7"!

PMBOKQuizObject subclass: #PMBOKChooseQuiz
	instanceVariableNames: 'text options answer pmiObject randomObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKChooseQuiz guid: (GUID fromString: '{997eff36-95de-4e48-9199-411d276ea3a8}')!
PMBOKChooseQuiz comment: ''!
!PMBOKChooseQuiz categoriesForClass!Kernel-Objects! !
!PMBOKChooseQuiz methodsFor!

answer
	^answer!

answer: anObject
	answer := anObject!

initialize

	super initialize.

	text := ''.
	options := OrderedCollection new.
	randomObject := Random new.!

options
	^options!

options: anObject
	options := anObject!

reorganizeOptions
	| newOptions random |

	random := Random new.
	newOptions := OrderedCollection new.

	[options isEmpty] whileFalse: [
		newOptions addFirst: (options randomPeekWith: random).
		options remove: newOptions first.].

	options := newOptions.
	!

reset

	self initialize.
	!

selectDeliverableFromInput

	^self selectProcessWithDeliverableAsInput input randomPeekWith: randomObject!

selectDeliverableFromOutput

	^(self deliverables select: [:each | each parentProcess notNil]) randomPeekWith: randomObject!

selectProcessWithDeliverableAsInput

	^(self getAllProcesses select: [:each | each hasDeliverableInInput]) randomPeekWith: randomObject!

text
	^text!

text: anObject
	text := anObject! !
!PMBOKChooseQuiz categoriesFor: #answer!accessing!private! !
!PMBOKChooseQuiz categoriesFor: #answer:!accessing!private! !
!PMBOKChooseQuiz categoriesFor: #initialize!public! !
!PMBOKChooseQuiz categoriesFor: #options!accessing!private! !
!PMBOKChooseQuiz categoriesFor: #options:!accessing!private! !
!PMBOKChooseQuiz categoriesFor: #reorganizeOptions!public! !
!PMBOKChooseQuiz categoriesFor: #reset!public! !
!PMBOKChooseQuiz categoriesFor: #selectDeliverableFromInput!public! !
!PMBOKChooseQuiz categoriesFor: #selectDeliverableFromOutput!public! !
!PMBOKChooseQuiz categoriesFor: #selectProcessWithDeliverableAsInput!public! !
!PMBOKChooseQuiz categoriesFor: #text!accessing!private! !
!PMBOKChooseQuiz categoriesFor: #text:!accessing!private! !

