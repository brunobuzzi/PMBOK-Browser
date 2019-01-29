"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMBOKLanguage
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKLanguage guid: (GUID fromString: '{9b9567c5-0440-4b30-b47c-26a83898981c}')!
PMBOKLanguage comment: ''!
!PMBOKLanguage categoriesForClass!Kernel-Objects! !
!PMBOKLanguage methodsFor!

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
!PMBOKLanguage categoriesFor: #addDefaultDeliverables!public! !
!PMBOKLanguage categoriesFor: #addDefaultToolsAndTechniques!public! !
!PMBOKLanguage categoriesFor: #defaultPMIModel!public! !
!PMBOKLanguage categoriesFor: #isEnglish!public! !
!PMBOKLanguage categoriesFor: #setAsDefault!public! !

!PMBOKLanguage class methodsFor!

default

	Default ifNil: [Default := super new initialize].

	^Default!

default: aPMILanguage

	^Default := aPMILanguage! !
!PMBOKLanguage class categoriesFor: #default!public! !
!PMBOKLanguage class categoriesFor: #default:!public! !

