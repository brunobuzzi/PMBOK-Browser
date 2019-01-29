"Filed out from Dolphin Smalltalk 7"!

PMBOKTreeShell subclass: #PMBOKTreeNodeDescriptionShell
	instanceVariableNames: 'descriptionComposite pmiDescriptionComposite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKTreeNodeDescriptionShell guid: (GUID fromString: '{f2041706-72d3-4b0e-b278-cee6774d444c}')!
PMBOKTreeNodeDescriptionShell comment: ''!
!PMBOKTreeNodeDescriptionShell categoriesForClass!MVP-Presenters! !
!PMBOKTreeNodeDescriptionShell methodsFor!

createComponents

	super createComponents.

	descriptionComposite := self add: RichTextComposite new name: 'description'.
	pmiDescriptionComposite := self add: RichTextComposite new name: 'pmiDescription'. !

onTreeChanged

	treePresenter hasSelection ifFalse: [pmiDescriptionComposite model: nil. ^descriptionComposite model: nil].

	descriptionComposite model: (treePresenter selection aspectValue: #description).

	pmiDescriptionComposite model: (treePresenter selection aspectValue: #objectDescription).! !
!PMBOKTreeNodeDescriptionShell categoriesFor: #createComponents!public! !
!PMBOKTreeNodeDescriptionShell categoriesFor: #onTreeChanged!public! !

!PMBOKTreeNodeDescriptionShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout)  1 1 410 8 ##(Smalltalk.ReferenceView)  98 14 0 416 98 2 8 1140850688 131073 544 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 544 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.Toolbar)  8 #resource_PMI_Browser_toolbar 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 866 1129 51 544 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 2 0 0 25 0 0 0] 98 0 866 193 193 0 27 0 0 0 410 8 ##(Smalltalk.ContainerView)  98 15 0 416 98 2 8 1140850688 131073 992 0 0 0 7 0 0 0 992 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 8 ##(Smalltalk.TreeView)  98 27 0 992 98 2 8 1409352231 1025 1136 590918 3 ##(Smalltalk.TreeModel)  0 1310726 ##(Smalltalk.IdentitySearchPolicy)  525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 960 626 8 4278190080 0 7 0 0 0 1136 0 8 4294902997 459270 ##(Smalltalk.Message)  8 #name 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 234 240 960 17 8 #mediumIcons 1 0 738 202 208 98 1 802 832 98 2 866 1 1 866 1129 517 1136 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 2 0 0 2 1 0 0] 98 0 976 0 27 5 16 234 256 98 2 1136 8 'tree' 0 738 202 208 98 1 802 832 98 2 866 1 51 866 1129 795 992 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 52 2 0 0 166 1 0 0] 98 3 1136 410 8 ##(Smalltalk.Splitter)  98 12 0 992 98 2 8 1140850688 1 1888 0 626 8 4278190080 0 519 0 0 0 1888 738 202 208 98 1 802 832 98 2 866 1 517 866 1129 19 1888 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 2 1 0 0 52 2 0 0 11 1 0 0] 98 0 976 0 27 410 8 ##(Smalltalk.CardContainer)  98 16 0 992 98 2 8 1409286144 131073 2160 0 626 8 4278190080 0 7 0 0 0 2160 655878 ##(Smalltalk.CardLayout)  202 208 98 2 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Node Description' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  6 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Node Description'' iconBlock: [TreeModel  icon]' 8 #[29 30 34 112 31 161 106 194 105] 2368 2400 1216 8 #icon 8 #text:iconBlock: 2432 11 1 0 0 410 560 98 14 0 2160 98 2 8 1140850688 131073 2576 0 626 8 4278190080 0 7 0 0 0 2576 674 8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 738 202 208 98 1 802 832 98 2 866 9 49 866 1113 205 2576 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 48 2 0 0 126 0 0 0] 960 976 0 27 2338 2370 8 'PMI Description' 2418 0 0 2450 6 1 2480 8 'doIt' 8 'CardLabel text: ''PMI Description'' iconBlock: [String icon]' 8 #[29 30 34 112 31 161 106 194 105] 2368 2896 80 2544 2560 2912 11 1 0 0 410 560 98 14 0 2160 98 2 8 1140850688 131073 2992 0 626 8 4278190080 0 5 0 0 0 2992 674 2688 2704 0 738 202 208 98 1 802 832 98 2 866 9 49 866 1113 205 2992 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 48 2 0 0 126 0 0 0] 960 976 0 27 2576 234 256 98 4 2576 8 'description' 2992 8 'pmiDescription' 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 2160 98 2 8 1140916736 1 3312 590662 2 ##(Smalltalk.ListModel)  202 208 98 2 2384 2880 0 1264 0 0 1 0 0 0 3312 0 8 4294902959 2418 0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 8 #displayString 3472 7 257 0 2418 0 0 3490 2 3 1440 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 3584 7 257 0 1472 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 738 202 208 98 3 802 832 98 2 866 1 1 866 1129 261 3312 802 8 #basicSelectionsByIndex: 98 1 98 1 3 3312 802 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 3312 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 52 2 0 0 130 0 0 0] 98 0 976 0 27 738 202 208 98 1 802 832 98 2 866 1 535 866 1129 261 2160 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 11 1 0 0 52 2 0 0 141 1 0 0] 98 3 2576 2992 3312 976 0 27 976 0 27 234 256 960 0 0 0 0 0 1 0 0 0 0 1 0 0 738 202 208 98 3 802 832 98 2 866 3199 21 866 1161 921 416 802 8 #text: 98 1 8 'PMI Tree View' 416 802 8 #updateMenuBar 960 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 131 8 0 0 214 1 0 0] 98 2 544 992 976 0 27 )! !
!PMBOKTreeNodeDescriptionShell class categoriesFor: #resource_Default_view!public!resources-views! !

