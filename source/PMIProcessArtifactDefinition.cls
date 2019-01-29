"Filed out from Dolphin Smalltalk 7"!

PMIObjectDefinition subclass: #PMIProcessArtifactDefinition
	instanceVariableNames: 'deliverable description images'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProcessArtifactDefinition guid: (GUID fromString: '{f25fcdb8-4fcf-4f47-ba1d-cc7547acd7dc}')!
PMIProcessArtifactDefinition comment: ''!
!PMIProcessArtifactDefinition categoriesForClass!Kernel-Objects! !
!PMIProcessArtifactDefinition methodsFor!

addImage: aString

	^images add: aString!

deliverable
	^deliverable!

deliverable: anObject
	deliverable := anObject!

deliverableDescription
	^deliverable ifNotNil: [:value | value description] ifNil: ['none']!

deliverableDescription: aString

	^deliverable description: aString!

deliverableEqualTo: aPMIProcessArtifactDefinition

	^deliverable == aPMIProcessArtifactDefinition!

deliverableIsOrganizationAsset

	^deliverable isOrganizationAsset!

description
	^description!

description: anObject
	description := anObject!

hasDescriptionText: aString 

	^aString match: description asString!

hasImages

	^images notEmpty!

images
	^images!

images: anObject
	images := anObject!

initialize

	super initialize.

	description := ''.
	images := OrderedCollection new.!

isProcessOI

	^true!

name
	deliverable ifNil: [^'None'].
	^deliverable name!

outputProcess
	| processes |

	processes := self defaultLanguage defaultPMIModel getProcessesWithOutputDeliverable: deliverable.
	processes isEmpty ifTrue: [^nil].

	^processes first!

outputProcessName

	^self outputProcess ifNotNil: [:value | value name] ifNil: ['none']!

printType

	^self subclassResponsibility!

removeImage: aString

	^images remove: aString! !
!PMIProcessArtifactDefinition categoriesFor: #addImage:!public! !
!PMIProcessArtifactDefinition categoriesFor: #deliverable!accessing!private! !
!PMIProcessArtifactDefinition categoriesFor: #deliverable:!accessing!private! !
!PMIProcessArtifactDefinition categoriesFor: #deliverableDescription!public! !
!PMIProcessArtifactDefinition categoriesFor: #deliverableDescription:!public! !
!PMIProcessArtifactDefinition categoriesFor: #deliverableEqualTo:!public! !
!PMIProcessArtifactDefinition categoriesFor: #deliverableIsOrganizationAsset!public! !
!PMIProcessArtifactDefinition categoriesFor: #description!accessing!private! !
!PMIProcessArtifactDefinition categoriesFor: #description:!accessing!private! !
!PMIProcessArtifactDefinition categoriesFor: #hasDescriptionText:!public! !
!PMIProcessArtifactDefinition categoriesFor: #hasImages!public! !
!PMIProcessArtifactDefinition categoriesFor: #images!accessing!private! !
!PMIProcessArtifactDefinition categoriesFor: #images:!accessing!private! !
!PMIProcessArtifactDefinition categoriesFor: #initialize!public! !
!PMIProcessArtifactDefinition categoriesFor: #isProcessOI!public! !
!PMIProcessArtifactDefinition categoriesFor: #name!public! !
!PMIProcessArtifactDefinition categoriesFor: #outputProcess!public! !
!PMIProcessArtifactDefinition categoriesFor: #outputProcessName!public! !
!PMIProcessArtifactDefinition categoriesFor: #printType!public! !
!PMIProcessArtifactDefinition categoriesFor: #removeImage:!public! !

!PMIProcessArtifactDefinition class methodsFor!

deliverable: aPMIDeliverable

	^super new initialize
		deliverable: aPMIDeliverable;
		yourself.! !
!PMIProcessArtifactDefinition class categoriesFor: #deliverable:!public! !

