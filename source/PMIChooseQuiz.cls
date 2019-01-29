"Filed out from Dolphin Smalltalk 7"!

PMIQuizObject subclass: #PMIChooseQuiz
	instanceVariableNames: 'text options answer pmiObject randomObject'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIChooseQuiz guid: (GUID fromString: '{997eff36-95de-4e48-9199-411d276ea3a8}')!
PMIChooseQuiz comment: ''!
!PMIChooseQuiz categoriesForClass!Kernel-Objects! !
!PMIChooseQuiz methodsFor!

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
!PMIChooseQuiz categoriesFor: #answer!accessing!private! !
!PMIChooseQuiz categoriesFor: #answer:!accessing!private! !
!PMIChooseQuiz categoriesFor: #initialize!public! !
!PMIChooseQuiz categoriesFor: #options!accessing!private! !
!PMIChooseQuiz categoriesFor: #options:!accessing!private! !
!PMIChooseQuiz categoriesFor: #reorganizeOptions!public! !
!PMIChooseQuiz categoriesFor: #reset!public! !
!PMIChooseQuiz categoriesFor: #selectDeliverableFromInput!public! !
!PMIChooseQuiz categoriesFor: #selectDeliverableFromOutput!public! !
!PMIChooseQuiz categoriesFor: #selectProcessWithDeliverableAsInput!public! !
!PMIChooseQuiz categoriesFor: #text!accessing!private! !
!PMIChooseQuiz categoriesFor: #text:!accessing!private! !

