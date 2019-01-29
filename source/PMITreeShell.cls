"Filed out from Dolphin Smalltalk 7"!

PMIShell subclass: #PMITreeShell
	instanceVariableNames: 'treePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMITreeShell guid: (GUID fromString: '{ebbd2206-8568-41a6-bfb7-51db7009382e}')!
PMITreeShell comment: ''!
!PMITreeShell categoriesForClass!MVP-Presenters! !
!PMITreeShell methodsFor!

createComponents

	super createComponents.

	treePresenter := self add: TreePresenter new name: 'tree'.!

createSchematicWiring

	super createSchematicWiring.

	treePresenter when: #leftButtonDoubleClicked: send: #onTreeDoubleClicked: to: self;
		when: #selectionChanged send: #onTreeChanged to: self.!

expandAll

	treePresenter view expandAll!

model: aTreeModel

	super model: aTreeModel.

	treePresenter model: aTreeModel!

onTreeChanged!

onTreeDoubleClicked: aMouseEvent

	treePresenter hasSelection ifFalse: [^self].

	treePresenter selection isProcessDefinition ifTrue: [^treePresenter selection show]! !
!PMITreeShell categoriesFor: #createComponents!public! !
!PMITreeShell categoriesFor: #createSchematicWiring!public! !
!PMITreeShell categoriesFor: #expandAll!public! !
!PMITreeShell categoriesFor: #model:!public! !
!PMITreeShell categoriesFor: #onTreeChanged!public! !
!PMITreeShell categoriesFor: #onTreeDoubleClicked:!public! !

!PMITreeShell class methodsFor!

icon

	^TreeModel icon!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 544 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 544 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_PMI_Browser_toolbar 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 866 1129 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 2 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 8 ##(Smalltalk.TreeView)  98 27 0 416 98 2 8 1409352231 1025 992 590918 3 ##(Smalltalk.TreeModel)  0 1310726 ##(Smalltalk.IdentitySearchPolicy)  525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 960 626 8 4278190080 0 7 0 0 0 992 0 8 4294902997 459270 ##(Smalltalk.Message)  8 #name 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 234 240 960 17 8 #mediumIcons 1 0 738 202 208 98 1 802 832 98 2 866 1 51 866 1129 795 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 52 2 0 0 166 1 0 0] 98 0 976 0 27 234 256 98 2 992 8 'tree' 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 3199 21 866 1161 921 416 802 8 #text: 98 1 8 'PMI Tree View' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 131 8 0 0 214 1 0 0] 98 2 544 992 976 0 27 )! !
!PMITreeShell class categoriesFor: #icon!public! !
!PMITreeShell class categoriesFor: #resource_Default_view!public!resources-views! !

