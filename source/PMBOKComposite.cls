"Filed out from Dolphin Smalltalk 7"!

Presenter subclass: #PMBOKComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKComposite guid: (GUID fromString: '{ff3ccdfb-224c-4688-8d23-b829f1dc2df0}')!
PMBOKComposite comment: ''!
!PMBOKComposite categoriesForClass!MVP-Presenters! !
!PMBOKComposite methodsFor!

defaultLanguage
	^PMBOKLanguage default!

openImage: fileName

	(File exists: self projectModel imagePath, fileName) ifFalse: [^MessageBox notify: 'File not found !!'].

	ShellLibrary default shellOpen: (self projectModel imagePath, fileName).!

openPMIBrowser
	^PMBOKProjectDefinitionShell show: 'Default view2' on: self projectModel!

openPMIDefinitionBrowser
	^PMBOKProjectDefinitionShell show: 'Default view2' on: self projectModel

	"PMIProjectDefinitionShell showOn: PMIProjectDefinition default"!

openPortfolioBrowser
	PMBOKPortfolioBrowserShell showOn: PMBOKPortfolio cache!

projectModel

	^self defaultLanguage defaultPMIModel!

removeInput

	inputsPresenter hasSelection ifFalse: [^self].

	self model removeInput: inputsPresenter selection.

	inputsPresenter model: (ListModel on: self model inputResults).!

removeInputTo: anInputPresenter

	anInputPresenter hasSelection ifFalse: [^self].

	self model removeInput: anInputPresenter selection.

	anInputPresenter model: (ListModel on: self model inputResults).! !
!PMBOKComposite categoriesFor: #defaultLanguage!public! !
!PMBOKComposite categoriesFor: #openImage:!public! !
!PMBOKComposite categoriesFor: #openPMIBrowser!public! !
!PMBOKComposite categoriesFor: #openPMIDefinitionBrowser!public! !
!PMBOKComposite categoriesFor: #openPortfolioBrowser!public! !
!PMBOKComposite categoriesFor: #projectModel!public! !
!PMBOKComposite categoriesFor: #removeInput!public! !
!PMBOKComposite categoriesFor: #removeInputTo:!public! !

