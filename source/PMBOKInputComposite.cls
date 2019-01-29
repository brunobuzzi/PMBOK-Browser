"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKInputComposite
	instanceVariableNames: 'inputDescription deliverableDescription'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKInputComposite guid: (GUID fromString: '{751cf6f0-a796-453d-b767-00b0c54d947f}')!
PMBOKInputComposite comment: ''!
!PMBOKInputComposite categoriesForClass!MVP-Presenters! !
!PMBOKInputComposite methodsFor!

createComponents

	super createComponents. 

	inputDescription := self add: RichTextComposite new name: 'inputDescription'.
	deliverableDescription := self add: RichTextComposite new name: 'deliverableDescription'.!

model: aPMIProcessArtifactDefinition

	super model: aPMIProcessArtifactDefinition.

	inputDescription model: (self model aspectValue: #description).
	deliverableDescription model: (self model aspectValue: #deliverableDescription).

	!

onViewOpened

	super onViewOpened.

	self model: self model! !
!PMBOKInputComposite categoriesFor: #createComponents!public! !
!PMBOKInputComposite categoriesFor: #model:!public! !
!PMBOKInputComposite categoriesFor: #onViewOpened!public! !

!PMBOKInputComposite class methodsFor!

defaultModel
	^PMBOKInputDefinition new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.CardContainer) 98 16 0 0 98 2 8 1409286144 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 5 0 0 0 416 655878 ##(Smalltalk.CardLayout) 202 208 98 2 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Input' 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 6 1 8 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Input'' iconBlock: [PMIInput icon]' 8 #[29 30 34 112 31 161 106 194 105] 640 672 8 ##(Smalltalk.PMBOKInputDefinition) 8 #icon 8 #text:iconBlock: 704 11 1 0 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 864 0 498 8 4278190080 0 5 0 0 0 864 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.RichTextComposite) 8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 9 49 1170 1035 735 864 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 9 2 0 0 135 1 0 0] 98 0 1170 193 193 0 27 610 642 8 'Deliverable' 690 0 0 722 6 1 640 8 'doIt' 8 '(CardLabel text: ''Deliverable'' iconBlock: [PMIDeliverable icon])' 8 #[29 30 34 112 31 161 106 194 105] 640 1328 8 ##(Smalltalk.PMBOKDeliverableDefinition) 832 848 1344 11 1 0 0 410 880 98 14 0 416 98 2 8 1140850688 131073 1440 0 498 8 4278190080 0 5 0 0 0 1440 978 1008 1024 0 1042 202 208 98 1 1106 1136 98 2 1170 9 49 1170 1035 735 1440 1218 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 0 24 0 0 0 9 2 0 0 135 1 0 0] 1264 1280 0 27 864 234 256 98 4 864 8 'inputDescription' 1440 8 'deliverableDescription' 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 416 98 2 8 1140916736 1 1760 590662 2 ##(Smalltalk.ListModel) 202 208 98 2 656 1312 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 0 0 1 0 0 0 1760 0 8 4294902927 690 0 0 918822 ##(Smalltalk.CompiledMethod) 2 3 8 ##(Smalltalk.ListControlView) 8 #defaultGetTextBlock 575230339 8 #[30 105 226 0 106] 8 #displayString 1952 7 257 0 690 0 0 1970 2 3 8 ##(Smalltalk.IconicListAbstract) 8 #defaultGetImageBlock 579598755 8 #[30 105 226 0 106] 8 #iconImageIndex 2064 7 257 0 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 1042 202 208 98 3 1106 1136 98 2 1170 1 1 1170 1051 791 1760 1106 8 #basicSelectionsByIndex: 98 1 98 1 3 1760 1106 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 1760 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 13 2 0 0 139 1 0 0] 98 0 1280 0 27 1042 202 208 98 1 1106 1136 98 2 1170 3199 21 1170 1051 791 416 1218 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 76 8 0 0 149 1 0 0] 98 3 864 1440 1760 1280 0 27)! !
!PMBOKInputComposite class categoriesFor: #defaultModel!public! !
!PMBOKInputComposite class categoriesFor: #resource_Default_view!public!resources-views! !

