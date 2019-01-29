"Filed out from Dolphin Smalltalk 7"!

PMBOKSearchResultComposite subclass: #PMBOKProcessSearchResultComposite
	instanceVariableNames: 'searchedElementDescriptionPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessSearchResultComposite guid: (GUID fromString: '{205420c2-e2af-4b2f-9c7d-1798bb4099e1}')!
PMBOKProcessSearchResultComposite comment: ''!
!PMBOKProcessSearchResultComposite categoriesForClass!MVP-Presenters! !
!PMBOKProcessSearchResultComposite methodsFor!

createComponents

	super createComponents.

	listContainer := self add: Presenter new name: 'listContainer'.
	descriptionPresenter := self add: RichTextComposite new name: 'description'.
	searchedElementDescriptionPresenter := self add: RichTextComposite new name: 'searchedElementDescription'.!

createProcessListFor: aPMIElement

	listPresenter := ListPresenter create: 'PMI Process list' in: listContainer on: (ListModel on: model).

	listPresenter when: #selectionChanged send: #onProcessSelectionChanged to: self.

	(aPMIElement isBehavior) "it is a Class ? - if NOT we link the visual component with #description"
	ifFalse: [aPMIElement deliverable isNil ifFalse: [searchedElementDescriptionPresenter model: (aPMIElement deliverable aspectValue: #description)].].!

onProcessSelectionChanged

	listPresenter hasSelection ifFalse: [^descriptionPresenter model: nil ].

	descriptionPresenter model: (listPresenter selection aspectValue: #description). !

showProcessDefinition
	^self topShell showProcessDefinitionFor: listPresenter selection! !
!PMBOKProcessSearchResultComposite categoriesFor: #createComponents!public! !
!PMBOKProcessSearchResultComposite categoriesFor: #createProcessListFor:!public! !
!PMBOKProcessSearchResultComposite categoriesFor: #onProcessSelectionChanged!public! !
!PMBOKProcessSearchResultComposite categoriesFor: #showProcessDefinition!public! !

!PMBOKProcessSearchResultComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 656 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 319 818 1201 603 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 159 0 0 0 88 2 0 0 204 1 0 0] 98 1 410 8 ##(Smalltalk.CardContainer)  98 16 0 560 98 2 8 1409286144 131073 928 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 928 655878 ##(Smalltalk.CardLayout)  202 208 98 2 721414 ##(Smalltalk.Association)  590662 1 ##(Smalltalk.CardLabel)  8 'Searched Element' 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  7 1 8 ##(Smalltalk.SmallInteger)  8 'doIt' 8 'CardLabel text: ''Searched Element'' iconBlock: [Icon fromId: ''GoSearch.ico'']' 8 #[29 30 35 113 31 32 180 106 195 105] 1152 1184 8 ##(Smalltalk.Icon)  8 'GoSearch.ico' 8 #fromId: 8 #text:iconBlock: 1216 11 1 0 0 410 8 ##(Smalltalk.ReferenceView)  98 14 0 928 98 2 8 1140850688 131073 1392 0 1010 8 4278190080 0 5 0 0 0 1392 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 690 202 208 98 1 754 784 98 2 818 9 49 818 1185 547 1392 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 84 2 0 0 41 1 0 0] 656 818 193 193 0 27 1122 1154 8 'Selection Description' 1202 0 0 1234 6 1 1152 8 'doIt' 8 '(CardLabel text: ''Selection Description'' iconBlock: [ListView icon])' 8 #[29 30 34 112 31 161 106 194 105] 1152 1760 8 ##(Smalltalk.ListView)  8 #icon 1376 1776 11 1 0 0 410 1408 98 14 0 928 98 2 8 1140850688 131073 1888 0 1010 8 4278190080 0 5 0 0 0 1888 1506 1536 1552 0 690 202 208 98 1 754 784 98 2 818 9 49 818 1185 547 1888 866 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 84 2 0 0 41 1 0 0] 656 1712 0 27 1392 234 256 98 4 1392 8 'searchedElementDescription' 1888 8 'description' 0 410 8 ##(Smalltalk.TabViewXP)  98 28 0 928 98 2 8 1140916736 1 2208 590662 2 ##(Smalltalk.ListModel)  202 208 98 2 1168 1744 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  0 0 1 0 0 0 2208 0 8 4294903331 1202 0 0 918822 ##(Smalltalk.CompiledMethod)  2 3 8 ##(Smalltalk.ListControlView)  8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 8 #displayString 2400 7 257 0 1202 0 0 2418 2 3 8 ##(Smalltalk.IconicListAbstract)  8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 2512 7 257 0 1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 8 #smallIcons 0 0 0 0 0 690 202 208 98 3 754 784 98 2 818 1 1 818 1201 603 2208 754 8 #basicSelectionsByIndex: 98 1 98 1 3 2208 754 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 2208 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 45 1 0 0] 98 0 1712 0 27 690 202 208 98 1 754 784 98 2 818 1 1 818 1201 603 928 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 45 1 0 0] 98 3 1392 1888 2208 1712 0 27 1712 0 27 5 16 234 256 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 3120 0 0 0 5 0 0 0 3120 498 234 240 656 32 234 256 656 0 690 202 208 98 1 754 784 98 2 818 1 1 818 1201 301 3120 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 150 0 0 0] 98 0 1712 0 27 8 'listContainer' 0 690 202 208 98 1 754 784 98 2 818 3199 21 818 1201 921 416 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 151 8 0 0 214 1 0 0] 98 3 3120 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 3568 0 1010 8 4278190080 0 517 0 0 0 3568 690 202 208 98 1 754 784 98 2 818 1 301 818 1201 19 3568 866 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 150 0 0 0 88 2 0 0 159 0 0 0] 98 0 1712 0 27 560 1712 0 27 )! !
!PMBOKProcessSearchResultComposite class categoriesFor: #resource_Default_view!public!resources-views! !

