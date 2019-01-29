"Filed out from Dolphin Smalltalk 7"!

PMBOKProcessArtifactDefinition subclass: #PMBOKOutputDefinition
	instanceVariableNames: 'event'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKOutputDefinition guid: (GUID fromString: '{2d1e82dc-55f4-4153-9795-129daef0f023}')!
PMBOKOutputDefinition comment: ''!
!PMBOKOutputDefinition categoriesForClass!Kernel-Objects! !
!PMBOKOutputDefinition methodsFor!

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
!PMBOKOutputDefinition categoriesFor: #event!accessing!private! !
!PMBOKOutputDefinition categoriesFor: #event:!accessing!private! !
!PMBOKOutputDefinition categoriesFor: #hasCreatedDeliverable!public! !
!PMBOKOutputDefinition categoriesFor: #hasUpdatedDeliverable!public! !
!PMBOKOutputDefinition categoriesFor: #icon!public! !
!PMBOKOutputDefinition categoriesFor: #initialize!public! !
!PMBOKOutputDefinition categoriesFor: #printType!public! !
!PMBOKOutputDefinition categoriesFor: #setAsCreation!public! !
!PMBOKOutputDefinition categoriesFor: #setAsUpdate!public! !
!PMBOKOutputDefinition categoriesFor: #switchEvent!public! !

!PMBOKOutputDefinition class methodsFor!

icon

	^Icon fromId: 'TransformationRule.ico'! !
!PMBOKOutputDefinition class categoriesFor: #icon!public! !

