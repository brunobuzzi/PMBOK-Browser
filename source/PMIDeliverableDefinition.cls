"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIDeliverableDefinition
	instanceVariableNames: 'name description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDeliverableDefinition guid: (GUID fromString: '{0ae861dc-9b48-4225-bd5b-f815749796b8}')!
PMIDeliverableDefinition comment: ''!
!PMIDeliverableDefinition categoriesForClass!Kernel-Objects! !
!PMIDeliverableDefinition methodsFor!

asInput
	^PMIInputDefinition deliverable: self!

asOutput
	^PMIOutputDefinition deliverable: self!

deliverable
	^self!

deliverableDescription
	^description!

deliverableEqualTo: aPMIDeliverableDefinition

	^self == aPMIDeliverableDefinition!

description
	^description!

description: anObject
	description := anObject!

hasDescriptionText: aString 

	^aString match: description asString!

initialize

	super initialize.

	name := ''.
	description := ''.!

isDeliverable

	^true!

name
	^name!

name: anObject
	name := anObject!

printName

	^'Deliverable'!

printOn: target
	"Append, to the <puttableStream>, target, a string whose characters are a 
	the same as those which would result from sending a #printString
	message to the receiver.
	N.B. This is really intended for development use. #displayOn: and #displayString
	are complementary methods for generating strings for presentation to an
	end-user."

	super printOn: target.

	target nextPutAll: '[', name, ']'!

quizName

	^self name! !
!PMIDeliverableDefinition categoriesFor: #asInput!public! !
!PMIDeliverableDefinition categoriesFor: #asOutput!public! !
!PMIDeliverableDefinition categoriesFor: #deliverable!public! !
!PMIDeliverableDefinition categoriesFor: #deliverableDescription!accessing!private! !
!PMIDeliverableDefinition categoriesFor: #deliverableEqualTo:!public! !
!PMIDeliverableDefinition categoriesFor: #description!accessing!private! !
!PMIDeliverableDefinition categoriesFor: #description:!accessing!private! !
!PMIDeliverableDefinition categoriesFor: #hasDescriptionText:!public! !
!PMIDeliverableDefinition categoriesFor: #initialize!public! !
!PMIDeliverableDefinition categoriesFor: #isDeliverable!public! !
!PMIDeliverableDefinition categoriesFor: #name!accessing!private! !
!PMIDeliverableDefinition categoriesFor: #name:!accessing!private! !
!PMIDeliverableDefinition categoriesFor: #printName!public! !
!PMIDeliverableDefinition categoriesFor: #printOn:!public! !
!PMIDeliverableDefinition categoriesFor: #quizName!public! !

!PMIDeliverableDefinition class methodsFor!

icon
	^ExternalStructure icon! !
!PMIDeliverableDefinition class categoriesFor: #icon!public! !

