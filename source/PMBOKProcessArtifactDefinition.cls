"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectDefinition subclass: #PMBOKProcessArtifactDefinition
	instanceVariableNames: 'deliverable description images'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessArtifactDefinition guid: (GUID fromString: '{f25fcdb8-4fcf-4f47-ba1d-cc7547acd7dc}')!
PMBOKProcessArtifactDefinition comment: ''!
!PMBOKProcessArtifactDefinition categoriesForClass!Kernel-Objects! !
!PMBOKProcessArtifactDefinition methodsFor!

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
!PMBOKProcessArtifactDefinition categoriesFor: #addImage:!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #deliverable!accessing!private! !
!PMBOKProcessArtifactDefinition categoriesFor: #deliverable:!accessing!private! !
!PMBOKProcessArtifactDefinition categoriesFor: #deliverableDescription!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #deliverableDescription:!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #deliverableEqualTo:!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #deliverableIsOrganizationAsset!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #description!accessing!private! !
!PMBOKProcessArtifactDefinition categoriesFor: #description:!accessing!private! !
!PMBOKProcessArtifactDefinition categoriesFor: #hasDescriptionText:!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #hasImages!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #images!accessing!private! !
!PMBOKProcessArtifactDefinition categoriesFor: #images:!accessing!private! !
!PMBOKProcessArtifactDefinition categoriesFor: #initialize!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #isProcessOI!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #name!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #outputProcess!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #outputProcessName!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #printType!public! !
!PMBOKProcessArtifactDefinition categoriesFor: #removeImage:!public! !

!PMBOKProcessArtifactDefinition class methodsFor!

deliverable: aPMIDeliverable

	^super new initialize
		deliverable: aPMIDeliverable;
		yourself.! !
!PMBOKProcessArtifactDefinition class categoriesFor: #deliverable:!public! !

