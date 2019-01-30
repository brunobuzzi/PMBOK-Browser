"Filed out from Dolphin Smalltalk 7"!

PMIObject subclass: #PMBOKProcessesBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
PMBOKProcessesBuilder guid: (GUID fromString: '{f55667e1-44c7-4dd9-8541-065e326fc2cd}')!
PMBOKProcessesBuilder comment: ''!
!PMBOKProcessesBuilder categoriesForClass!Kernel-Objects! !
!PMBOKProcessesBuilder methodsFor!

buildPMBOKFromFile: pathFile
	| aFileStream object |

	aFileStream := FileStream read: pathFile text: false.
	object := (STBInFiler on: aFileStream) context: nil; next.

	self setProjectDefinitionWith: object.
	!

defaultProjectDefinition

	self subclassResponsibility
	!

fileOutPMBOKToFile: pathFile

	self defaultProjectDefinition binaryStoreOn: (FileStream write: pathFile text: false)!

setProjectDefinitionWith: aPMBOKProjectDefinition

	self subclassResponsibility
	! !
!PMBOKProcessesBuilder categoriesFor: #buildPMBOKFromFile:!binary filing!public! !
!PMBOKProcessesBuilder categoriesFor: #defaultProjectDefinition!binary filing!public! !
!PMBOKProcessesBuilder categoriesFor: #fileOutPMBOKToFile:!binary filing!public! !
!PMBOKProcessesBuilder categoriesFor: #setProjectDefinitionWith:!binary filing!public! !

!PMBOKProcessesBuilder class methodsFor!

default
	^default!

default: anObject
	default := anObject! !
!PMBOKProcessesBuilder class categoriesFor: #default!accessing!private! !
!PMBOKProcessesBuilder class categoriesFor: #default:!accessing!private! !

