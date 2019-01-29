"Filed out from Dolphin Smalltalk 7"!

PMIObjectExecution subclass: #PMIDeliverable
	instanceVariableNames: 'name description version versionComments completedPercentage pmiEvents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIDeliverable guid: (GUID fromString: '{74372af3-2856-4359-821c-3f9c58d57a96}')!
PMIDeliverable comment: ''!
!PMIDeliverable categoriesForClass!Kernel-Objects! !
!PMIDeliverable methodsFor!

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
!PMIDeliverable categoriesFor: #addEvent:!public! !
!PMIDeliverable categoriesFor: #completedPercentage!accessing!private! !
!PMIDeliverable categoriesFor: #description!accessing!private! !
!PMIDeliverable categoriesFor: #description:!accessing!private! !
!PMIDeliverable categoriesFor: #includesEvent:!public! !
!PMIDeliverable categoriesFor: #increaseAdvanceBy:!pmi event!public! !
!PMIDeliverable categoriesFor: #initialize!public! !
!PMIDeliverable categoriesFor: #name!accessing!private! !
!PMIDeliverable categoriesFor: #name:!accessing!private! !
!PMIDeliverable categoriesFor: #pmiEvents!accessing!private! !
!PMIDeliverable categoriesFor: #pmiEvents:!accessing!private! !
!PMIDeliverable categoriesFor: #printVersion!public! !
!PMIDeliverable categoriesFor: #removeEvent:!public! !
!PMIDeliverable categoriesFor: #setAdvanceWith:!pmi event!public! !
!PMIDeliverable categoriesFor: #version!accessing!private! !
!PMIDeliverable categoriesFor: #version:!accessing!private! !
!PMIDeliverable categoriesFor: #versionComments!accessing!private! !
!PMIDeliverable categoriesFor: #versionComments:!accessing!private! !

!PMIDeliverable class methodsFor!

icon

	^PMIDeliverableDefinition icon! !
!PMIDeliverable class categoriesFor: #icon!public! !

