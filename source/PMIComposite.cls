"Filed out from Dolphin Smalltalk 7"!

Presenter subclass: #PMIComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIComposite guid: (GUID fromString: '{ff3ccdfb-224c-4688-8d23-b829f1dc2df0}')!
PMIComposite comment: ''!
!PMIComposite categoriesForClass!MVP-Presenters! !
!PMIComposite methodsFor!

defaultLanguage

	^PMILanguage default
	!

openImage: fileName

	(File exists: self projectModel imagePath, fileName) ifFalse: [^MessageBox notify: 'File not found !!'].

	ShellLibrary default shellOpen: (self projectModel imagePath, fileName).!

openPMIBrowser

	^PMIProjectDefinitionShell show: 'Default view2' on: self projectModel!

openPMIDefinitionBrowser

	^PMIProjectDefinitionShell show: 'Default view2' on: self projectModel.

	"PMIProjectDefinitionShell showOn: PMIProjectDefinition default"!

openPortfolioBrowser

	PMIPortfolioBrowserShell showOn: PMIPortfolio cache.!

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
!PMIComposite categoriesFor: #defaultLanguage!public! !
!PMIComposite categoriesFor: #openImage:!public! !
!PMIComposite categoriesFor: #openPMIBrowser!public! !
!PMIComposite categoriesFor: #openPMIDefinitionBrowser!public! !
!PMIComposite categoriesFor: #openPortfolioBrowser!public! !
!PMIComposite categoriesFor: #projectModel!public! !
!PMIComposite categoriesFor: #removeInput!public! !
!PMIComposite categoriesFor: #removeInputTo:!public! !

