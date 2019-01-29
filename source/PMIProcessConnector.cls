"Filed out from Dolphin Smalltalk 7"!

PMIObjectExecution subclass: #PMIProcessConnector
	instanceVariableNames: 'name isEnabled deliverables comments link'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProcessConnector guid: (GUID fromString: '{f43a54bd-78d4-46d1-80c7-7790031c7ebc}')!
PMIProcessConnector comment: 'PMIInput>>neededPercentage
The Percentage needed to be able to start using the Input. 
For example, neededPercentage=20, then the PMIInput is ready to be used when the 20% is completed.

PMIOutput>>neededPercentage
The Percentage needed to be able to start using the Input. 
For example, neededPercentage=20, then the PMIInput is ready to be used when the 20% is completed.'!
!PMIProcessConnector categoriesForClass!Kernel-Objects! !
!PMIProcessConnector methodsFor!

addCollection: aCollection to: aPMIDeliverable

	^deliverables at: aPMIDeliverable name put: aCollection!

addDeliverable: aPMIDeliverable

	^(deliverables at: aPMIDeliverable name ifAbsent: [deliverables at: aPMIDeliverable name put: OrderedCollection new])
		add: aPMIDeliverable!

comments
	^comments!

comments: anObject
	comments := anObject!

deliverable
	"For Customo Draw Block compability in ListPresenter.PMI Input"
	^self!

deliverables
	^deliverables!

deliverables: anObject
	deliverables := anObject!

event

	^pmiDefinition event!

getDeliverablesFor: aString

	^deliverables at: aString!

hasDeliverable
	^deliverables notEmpty and: [deliverables allSatisfy: [:each | each notEmpty]]!

hasDeliverablesFor: aString

	^deliverables includesKey: aString!

hasLink

	^link notNil!

initialize

	super initialize.

	name := ''.
	comments := ''.
	isEnabled := true.
	deliverables := LookupTable new.!

isEnabled
	^isEnabled!

isEnabled: anObject
	isEnabled := anObject!

isOrganizationAsset

	^false!

latestDeliverables

	^(deliverables select: [:eachCollection | eachCollection notEmpty]  thenCollect: [:eachCollection | eachCollection last]) asOrderedCollection!

link
	^link!

link: anObject
	link := anObject!

name
	^name!

name: anObject
	name := anObject!

pathName

	^self subclassResponsibility!

removeDeliverable: aPMIDeliverable

	^(deliverables at: aPMIDeliverable name ifAbsent: [^aPMIDeliverable])
		remove: aPMIDeliverable!

templates
	^pmiDefinition deliverable templates! !
!PMIProcessConnector categoriesFor: #addCollection:to:!public! !
!PMIProcessConnector categoriesFor: #addDeliverable:!public! !
!PMIProcessConnector categoriesFor: #comments!accessing!private! !
!PMIProcessConnector categoriesFor: #comments:!accessing!private! !
!PMIProcessConnector categoriesFor: #deliverable!public! !
!PMIProcessConnector categoriesFor: #deliverables!accessing!private! !
!PMIProcessConnector categoriesFor: #deliverables:!accessing!private! !
!PMIProcessConnector categoriesFor: #event!public! !
!PMIProcessConnector categoriesFor: #getDeliverablesFor:!public! !
!PMIProcessConnector categoriesFor: #hasDeliverable!public! !
!PMIProcessConnector categoriesFor: #hasDeliverablesFor:!public! !
!PMIProcessConnector categoriesFor: #hasLink!public! !
!PMIProcessConnector categoriesFor: #initialize!public! !
!PMIProcessConnector categoriesFor: #isEnabled!accessing!private! !
!PMIProcessConnector categoriesFor: #isEnabled:!accessing!private! !
!PMIProcessConnector categoriesFor: #isOrganizationAsset!public! !
!PMIProcessConnector categoriesFor: #latestDeliverables!public! !
!PMIProcessConnector categoriesFor: #link!accessing!private! !
!PMIProcessConnector categoriesFor: #link:!accessing!private! !
!PMIProcessConnector categoriesFor: #name!accessing!private! !
!PMIProcessConnector categoriesFor: #name:!accessing!private! !
!PMIProcessConnector categoriesFor: #pathName!public! !
!PMIProcessConnector categoriesFor: #removeDeliverable:!public! !
!PMIProcessConnector categoriesFor: #templates!public! !

