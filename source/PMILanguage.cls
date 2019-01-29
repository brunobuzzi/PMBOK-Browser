"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMILanguage
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMILanguage guid: (GUID fromString: '{9b9567c5-0440-4b30-b47c-26a83898981c}')!
PMILanguage comment: ''!
!PMILanguage categoriesForClass!Kernel-Objects! !
!PMILanguage methodsFor!

addDefaultDeliverables

	^self subclassResponsibility!

addDefaultToolsAndTechniques

	^self subclassResponsibility!

defaultPMIModel

	^self subclassResponsibility!

isEnglish

	^false!

setAsDefault

	self class default: self! !
!PMILanguage categoriesFor: #addDefaultDeliverables!public! !
!PMILanguage categoriesFor: #addDefaultToolsAndTechniques!public! !
!PMILanguage categoriesFor: #defaultPMIModel!public! !
!PMILanguage categoriesFor: #isEnglish!public! !
!PMILanguage categoriesFor: #setAsDefault!public! !

!PMILanguage class methodsFor!

default

	Default ifNil: [Default := super new initialize].

	^Default!

default: aPMILanguage

	^Default := aPMILanguage! !
!PMILanguage class categoriesFor: #default!public! !
!PMILanguage class categoriesFor: #default:!public! !

