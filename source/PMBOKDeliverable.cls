"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectExecution subclass: #PMBOKDeliverable
	instanceVariableNames: 'name description version versionComments completedPercentage pmiEvents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDeliverable guid: (GUID fromString: '{74372af3-2856-4359-821c-3f9c58d57a96}')!
PMBOKDeliverable comment: ''!
!PMBOKDeliverable categoriesForClass!Kernel-Objects! !
!PMBOKDeliverable methodsFor!

addEvent: aPMIEvent

	^pmiEvents add: aPMIEvent!

completedPercentage
	^completedPercentage!

description
	^description!

description: anObject
	description := anObject!

includesEvent: aPMIEvent

	^pmiEvents includes: aPMIEvent!

increaseAdvanceBy: aNumber

	completedPercentage := completedPercentage + aNumber!

initialize

	super initialize.

	name := ''.
	description := ''.
	version := 1.
	completedPercentage := 0.
	versionComments := ''.
	pmiEvents := OrderedCollection new.!

name
	^name!

name: anObject
	name := anObject!

pmiEvents
	^pmiEvents!

pmiEvents: anObject
	pmiEvents := anObject!

printVersion

	^version printString!

removeEvent: aPMIEvent

	^pmiEvents remove: aPMIEvent!

setAdvanceWith: aNumber

	completedPercentage := aNumber!

version
	^version!

version: anObject
	version := anObject!

versionComments
	^versionComments!

versionComments: anObject
	versionComments := anObject! !
!PMBOKDeliverable categoriesFor: #addEvent:!public! !
!PMBOKDeliverable categoriesFor: #completedPercentage!accessing!private! !
!PMBOKDeliverable categoriesFor: #description!accessing!private! !
!PMBOKDeliverable categoriesFor: #description:!accessing!private! !
!PMBOKDeliverable categoriesFor: #includesEvent:!public! !
!PMBOKDeliverable categoriesFor: #increaseAdvanceBy:!pmi event!public! !
!PMBOKDeliverable categoriesFor: #initialize!public! !
!PMBOKDeliverable categoriesFor: #name!accessing!private! !
!PMBOKDeliverable categoriesFor: #name:!accessing!private! !
!PMBOKDeliverable categoriesFor: #pmiEvents!accessing!private! !
!PMBOKDeliverable categoriesFor: #pmiEvents:!accessing!private! !
!PMBOKDeliverable categoriesFor: #printVersion!public! !
!PMBOKDeliverable categoriesFor: #removeEvent:!public! !
!PMBOKDeliverable categoriesFor: #setAdvanceWith:!pmi event!public! !
!PMBOKDeliverable categoriesFor: #version!accessing!private! !
!PMBOKDeliverable categoriesFor: #version:!accessing!private! !
!PMBOKDeliverable categoriesFor: #versionComments!accessing!private! !
!PMBOKDeliverable categoriesFor: #versionComments:!accessing!private! !

!PMBOKDeliverable class methodsFor!

icon
	^PMBOKDeliverableDefinition icon! !
!PMBOKDeliverable class categoriesFor: #icon!public! !

