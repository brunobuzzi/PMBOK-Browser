"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKToolComposite
	instanceVariableNames: 'toolDescription specificDescription'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKToolComposite guid: (GUID fromString: '{bc68efc5-4a39-43f1-9a05-cec15d30ce24}')!
PMBOKToolComposite comment: ''!
!PMBOKToolComposite categoriesForClass!MVP-Presenters! !
!PMBOKToolComposite methodsFor!

createComponents
	super createComponents.
	toolDescription := self add: RichTextComposite new name: 'description'.
	specificDescription := self add: RichTextComposite new name: 'specificDescription'!

model: aPMIProcessArtifactDefinition

	super model: aPMIProcessArtifactDefinition.

	toolDescription model: (self model aspectValue: #description).
	specificDescription model: (self model aspectValue: #specificDescription)!

onViewOpened
	super onViewOpened.

	self model: self model.! !
!PMBOKToolComposite categoriesFor: #createComponents!public! !
!PMBOKToolComposite categoriesFor: #model:!public! !
!PMBOKToolComposite categoriesFor: #onViewOpened!public! !

!PMBOKToolComposite class methodsFor!

defaultModel
	^PMBOKToolOrTechnique new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.CardContainer) 98 16 0 0 98 2 8 1409286144 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 5 0 0 0 416 655878 ##(Smalltalk.CardLayout) 202 208 98 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Tool' 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 6 1 640 8 'doIt' 8 '(CardLabel text: ''Tool'' iconBlock: [PMIToolOrTechnique icon])' 8 #[29 30 34 112 31 161 106 194 105] 640 672 8 ##(Smalltalk.PMBOKToolOrTechnique) 8 #icon 8 #text:iconBlock: 704 11 1 0 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 848 0 498 8 4278190080 0 5 0 0 0 848 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.RichTextComposite) 8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 9 49 1154 1035 735 848 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 9 2 0 0 135 1 0 0] 98 0 1154 193 193 0 27 610 642 8 'Specific Description' 690 0 0 722 6 1 640 8 'doIt' 8 '(CardLabel text: ''Specific Description'' iconBlock: [Metaclass icon])' 8 #[29 30 34 112 31 161 106 194 105] 640 1312 8 ##(Smalltalk.Metaclass) 816 832 1328 11 1 0 0 410 864 98 14 0 416 98 2 8 1140850688 131073 1424 0 498 8 4278190080 0 5 0 0 0 1424 962 992 1008 0 1026 202 208 98 1 1090 1120 98 2 1154 9 49 1154 1035 735 1424 1202 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 9 2 0 0 135 1 0 0] 1248 1264 0 27 848 234 256 98 4 1424 8 'specificDescription' 848 8 'description' 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 416 98 2 8 1140916736 1 1744 590662 2 ##(Smalltalk.ListModel) 202 208 98 2 656 1296 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 0 0 1 0 0 0 1744 0 8 4294902927 690 0 0 918822 ##(Smalltalk.CompiledMethod) 2 3 8 ##(Smalltalk.ListControlView) 8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 8 #displayString 1936 7 257 0 690 0 0 1954 2 3 8 ##(Smalltalk.IconicListAbstract) 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 2048 7 257 0 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 1026 202 208 98 3 1090 1120 98 2 1154 1 1 1154 1051 791 1744 1090 8 #basicSelectionsByIndex: 98 1 98 1 3 1744 1090 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 1744 1202 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 13 2 0 0 139 1 0 0] 98 0 1264 0 27 1026 202 208 98 1 1090 1120 98 2 1154 3199 21 1154 1051 791 416 1202 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 76 8 0 0 149 1 0 0] 98 3 848 1424 1744 1264 0 27)! !
!PMBOKToolComposite class categoriesFor: #defaultModel!public! !
!PMBOKToolComposite class categoriesFor: #resource_Default_view!public!resources-views! !

