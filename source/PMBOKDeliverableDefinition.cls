"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKDeliverableDefinition
	instanceVariableNames: 'name description'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDeliverableDefinition guid: (GUID fromString: '{0ae861dc-9b48-4225-bd5b-f815749796b8}')!
PMBOKDeliverableDefinition comment: ''!
!PMBOKDeliverableDefinition categoriesForClass!Kernel-Objects! !
!PMBOKDeliverableDefinition methodsFor!

asInput
	^PMBOKInputDefinition deliverable: self!

asOutput
	^PMBOKOutputDefinition deliverable: self!

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
!PMBOKDeliverableDefinition categoriesFor: #asInput!public! !
!PMBOKDeliverableDefinition categoriesFor: #asOutput!public! !
!PMBOKDeliverableDefinition categoriesFor: #deliverable!public! !
!PMBOKDeliverableDefinition categoriesFor: #deliverableDescription!accessing!private! !
!PMBOKDeliverableDefinition categoriesFor: #deliverableEqualTo:!public! !
!PMBOKDeliverableDefinition categoriesFor: #description!accessing!private! !
!PMBOKDeliverableDefinition categoriesFor: #description:!accessing!private! !
!PMBOKDeliverableDefinition categoriesFor: #hasDescriptionText:!public! !
!PMBOKDeliverableDefinition categoriesFor: #initialize!public! !
!PMBOKDeliverableDefinition categoriesFor: #isDeliverable!public! !
!PMBOKDeliverableDefinition categoriesFor: #name!accessing!private! !
!PMBOKDeliverableDefinition categoriesFor: #name:!accessing!private! !
!PMBOKDeliverableDefinition categoriesFor: #printName!public! !
!PMBOKDeliverableDefinition categoriesFor: #printOn:!public! !
!PMBOKDeliverableDefinition categoriesFor: #quizName!public! !

!PMBOKDeliverableDefinition class methodsFor!

icon
	^ExternalStructure icon! !
!PMBOKDeliverableDefinition class categoriesFor: #icon!public! !

