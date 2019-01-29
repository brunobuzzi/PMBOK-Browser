"Filed out from Dolphin Smalltalk 7"!

PMIShell subclass: #PMIProjectShell
	instanceVariableNames: 'projectComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProjectShell guid: (GUID fromString: '{d82aad7b-b1de-47ce-9f02-16731a9b7a4f}')!
PMIProjectShell comment: ''!
!PMIProjectShell categoriesForClass!MVP-Presenters! !
!PMIProjectShell methodsFor!

createComponents

	super createComponents.

	projectComposite := self add: PMIProjectComposite new name: 'projectComposite'.!

model: aPMIProject

	super model: aPMIProject.

	projectComposite model: aPMIProject!

restartProject

	self halt.!

startProject

	^projectComposite startProject! !
!PMIProjectShell categoriesFor: #createComponents!public! !
!PMIProjectShell categoriesFor: #model:!public! !
!PMIProjectShell categoriesFor: #restartProject!public! !
!PMIProjectShell categoriesFor: #startProject!public! !

!PMIProjectShell class methodsFor!

icon
	^PMIProjectDefinition icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 624 0 482 8 4278190080 0 7 0 0 0 624 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.PMIProjectComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 930 1869 1205 624 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 166 3 0 0 90 2 0 0] 576 930 193 193 0 27 8 'projectComposite' 0 461638 4 ##(Smalltalk.MenuBar)  0 16 98 2 265030 4 ##(Smalltalk.Menu)  0 16 98 4 984134 2 ##(Smalltalk.CommandMenuItem)  1 1180998 4 ##(Smalltalk.CommandDescription)  8 #startProject 8 'Start Project' 1 1 0 0 0 1154 1 1186 8 #restartProject 8 'Restart Project' 1 1 0 0 0 983366 1 ##(Smalltalk.DividerMenuItem)  4097 1154 1 1186 8 #exit 8 'Exit' 1 1 0 0 0 8 'Project' 0 134217729 0 0 33579 0 0 1154 1 1186 8 #aboutPMIBrowser 8 'About PMI Browser' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 802 202 208 98 3 866 896 98 2 930 3199 21 930 1901 1321 416 866 8 #text: 98 1 8 'PMI Project Browser' 416 866 8 #updateMenuBar 576 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 245 9 0 0 158 2 0 0] 98 1 624 1024 0 27 )! !
!PMIProjectShell class categoriesFor: #icon!public! !
!PMIProjectShell class categoriesFor: #resource_Default_view!public!resources-views! !

