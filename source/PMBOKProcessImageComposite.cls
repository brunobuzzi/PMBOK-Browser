"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKProcessImageComposite
	instanceVariableNames: 'imagePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProcessImageComposite guid: (GUID fromString: '{d3cd4f0f-6bde-486d-b0bb-d601e57a7dc7}')!
PMBOKProcessImageComposite comment: ''!
!PMBOKProcessImageComposite categoriesForClass!MVP-Presenters! !
!PMBOKProcessImageComposite methodsFor!

createComponents

	super createComponents.

	imagePresenter := self add: ImagePresenter new name: 'image'.!

model: anImage

	super model: anImage.

	imagePresenter model: anImage! !
!PMBOKProcessImageComposite categoriesFor: #createComponents!public! !
!PMBOKProcessImageComposite categoriesFor: #model:!public! !

!PMBOKProcessImageComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  3199 21 706 1221 871 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 161 8 0 0 189 1 0 0] 98 1 410 8 ##(Smalltalk.ScrollingDecorator)  98 18 0 416 98 2 8 1143996416 131073 816 0 0 0 5 0 0 0 816 1573190 1 ##(Smalltalk.ScrollingDecoratorLayout)  16 234 256 98 2 410 8 ##(Smalltalk.StaticBitmap)  98 17 0 816 98 2 8 1149239566 1 960 721990 2 ##(Smalltalk.ValueHolder)  0 0 1376774 ##(Smalltalk.PluggableSearchPolicy)  459270 ##(Smalltalk.Message)  8 #== 98 0 1106 8 #hash 98 0 0 0 0 5 0 0 0 960 0 8 4294903665 852486 ##(Smalltalk.NullConverter)  0 0 32 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1221 871 960 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 98 2 0 0 179 1 0 0] 98 0 706 193 193 0 27 8 'image' 0 706 1 1 16 706 17 17 578 202 208 98 1 642 672 98 2 706 1 1 706 1221 871 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 98 2 0 0 179 1 0 0] 98 1 960 1424 0 27 1424 0 27 )! !
!PMBOKProcessImageComposite class categoriesFor: #resource_Default_view!public!resources-views! !

