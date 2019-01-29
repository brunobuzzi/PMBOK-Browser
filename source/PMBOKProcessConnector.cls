"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectExecution subclass: #PMBOKProcessConnector
	instanceVariableNames: 'name isEnabled deliverables comments link'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessConnector guid: (GUID fromString: '{f43a54bd-78d4-46d1-80c7-7790031c7ebc}')!
PMBOKProcessConnector comment: 'PMIInput>>neededPercentage
The Percentage needed to be able to start using the Input. 
For example, neededPercentage=20, then the PMIInput is ready to be used when the 20% is completed.

PMIOutput>>neededPercentage
The Percentage needed to be able to start using the Input. 
For example, neededPercentage=20, then the PMIInput is ready to be used when the 20% is completed.'!
!PMBOKProcessConnector categoriesForClass!Kernel-Objects! !
!PMBOKProcessConnector methodsFor!

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
!PMBOKProcessConnector categoriesFor: #addCollection:to:!public! !
!PMBOKProcessConnector categoriesFor: #addDeliverable:!public! !
!PMBOKProcessConnector categoriesFor: #comments!accessing!private! !
!PMBOKProcessConnector categoriesFor: #comments:!accessing!private! !
!PMBOKProcessConnector categoriesFor: #deliverable!public! !
!PMBOKProcessConnector categoriesFor: #deliverables!accessing!private! !
!PMBOKProcessConnector categoriesFor: #deliverables:!accessing!private! !
!PMBOKProcessConnector categoriesFor: #event!public! !
!PMBOKProcessConnector categoriesFor: #getDeliverablesFor:!public! !
!PMBOKProcessConnector categoriesFor: #hasDeliverable!public! !
!PMBOKProcessConnector categoriesFor: #hasDeliverablesFor:!public! !
!PMBOKProcessConnector categoriesFor: #hasLink!public! !
!PMBOKProcessConnector categoriesFor: #initialize!public! !
!PMBOKProcessConnector categoriesFor: #isEnabled!accessing!private! !
!PMBOKProcessConnector categoriesFor: #isEnabled:!accessing!private! !
!PMBOKProcessConnector categoriesFor: #isOrganizationAsset!public! !
!PMBOKProcessConnector categoriesFor: #latestDeliverables!public! !
!PMBOKProcessConnector categoriesFor: #link!accessing!private! !
!PMBOKProcessConnector categoriesFor: #link:!accessing!private! !
!PMBOKProcessConnector categoriesFor: #name!accessing!private! !
!PMBOKProcessConnector categoriesFor: #name:!accessing!private! !
!PMBOKProcessConnector categoriesFor: #pathName!public! !
!PMBOKProcessConnector categoriesFor: #removeDeliverable:!public! !
!PMBOKProcessConnector categoriesFor: #templates!public! !

