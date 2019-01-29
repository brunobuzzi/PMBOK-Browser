"Filed out from Dolphin Smalltalk 7"!

PMISearchResultComposite subclass: #PMIArtifactDefinitionSearchResultComposite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIArtifactDefinitionSearchResultComposite guid: (GUID fromString: '{849aab04-f42c-4f7f-b4b3-17c65e03c8c5}')!
PMIArtifactDefinitionSearchResultComposite comment: ''!
!PMIArtifactDefinitionSearchResultComposite categoriesForClass!MVP-Presenters! !
!PMIArtifactDefinitionSearchResultComposite methodsFor!

createArtifactDefinitionList

	listPresenter := ListPresenter create: 'PMI Artifact definitions' in: listContainer on: (ListModel on: model).

	listPresenter when: #selectionChanged send: #onArtifactDefinitionSelectionChanged to: self.!

createComponents

	super createComponents.

	listContainer := self add: Presenter new name: 'listContainer'.
	descriptionPresenter := self add: PMIInputComposite new name: 'description'.!

onArtifactDefinitionSelectionChanged

	listPresenter hasSelection ifFalse: [^descriptionPresenter model: PMIArtifactDefinition new].

	descriptionPresenter model: listPresenter selection. 

	! !
!PMIArtifactDefinitionSearchResultComposite categoriesFor: #createArtifactDefinitionList!public! !
!PMIArtifactDefinitionSearchResultComposite categoriesFor: #createComponents!public! !
!PMIArtifactDefinitionSearchResultComposite categoriesFor: #onArtifactDefinitionSelectionChanged!public! !

!PMIArtifactDefinitionSearchResultComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 32 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 704 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 704 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.PMIInputComposite)  8 #resource_Default_view 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1026 1201 603 704 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 45 1 0 0] 656 1026 193 193 0 27 8 'description' 0 898 202 208 98 1 962 992 98 2 1026 1 319 1026 1201 603 560 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 159 0 0 0 88 2 0 0 204 1 0 0] 98 1 704 1120 0 27 5 16 234 256 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 1344 0 0 0 5 0 0 0 1344 498 234 240 656 32 234 256 656 0 898 202 208 98 1 962 992 98 2 1026 1 1 1026 1201 301 1344 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 88 2 0 0 150 0 0 0] 98 0 1120 0 27 8 'listContainer' 0 898 202 208 98 1 962 992 98 2 1026 3199 21 1026 1201 921 416 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 151 8 0 0 214 1 0 0] 98 3 1344 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 1792 0 786 8 4278190080 0 517 0 0 0 1792 898 202 208 98 1 962 992 98 2 1026 1 301 1026 1201 19 1792 1074 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 150 0 0 0 88 2 0 0 159 0 0 0] 98 0 1120 0 27 560 1120 0 27 )! !
!PMIArtifactDefinitionSearchResultComposite class categoriesFor: #resource_Default_view!public!resources-views! !

