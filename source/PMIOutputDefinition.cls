"Filed out from Dolphin Smalltalk 7"!

PMIProcessArtifactDefinition subclass: #PMIOutputDefinition
	instanceVariableNames: 'event'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIOutputDefinition guid: (GUID fromString: '{2d1e82dc-55f4-4153-9795-129daef0f023}')!
PMIOutputDefinition comment: ''!
!PMIOutputDefinition categoriesForClass!Kernel-Objects! !
!PMIOutputDefinition methodsFor!

event
	^event!

event: anObject
	event := anObject!

hasCreatedDeliverable

	^event == #create!

hasUpdatedDeliverable

	^event == #update!

icon

	self hasCreatedDeliverable ifTrue: [^self class icon].

	^Icon fromId: 'LintRule.ico'!

initialize

	super initialize.

	event := #create. "values: #create - #update"!

printType

	^'Output'!

setAsCreation

	event := #create!

setAsUpdate

	event := #update!

switchEvent

	self hasCreatedDeliverable ifTrue: [^self setAsUpdate].

	^self setAsCreation! !
!PMIOutputDefinition categoriesFor: #event!accessing!private! !
!PMIOutputDefinition categoriesFor: #event:!accessing!private! !
!PMIOutputDefinition categoriesFor: #hasCreatedDeliverable!public! !
!PMIOutputDefinition categoriesFor: #hasUpdatedDeliverable!public! !
!PMIOutputDefinition categoriesFor: #icon!public! !
!PMIOutputDefinition categoriesFor: #initialize!public! !
!PMIOutputDefinition categoriesFor: #printType!public! !
!PMIOutputDefinition categoriesFor: #setAsCreation!public! !
!PMIOutputDefinition categoriesFor: #setAsUpdate!public! !
!PMIOutputDefinition categoriesFor: #switchEvent!public! !

!PMIOutputDefinition class methodsFor!

icon

	^Icon fromId: 'TransformationRule.ico'! !
!PMIOutputDefinition class categoriesFor: #icon!public! !

