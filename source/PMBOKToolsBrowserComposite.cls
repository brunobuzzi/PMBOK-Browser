"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKToolsBrowserComposite
	instanceVariableNames: 'toolsPresenter toolComposite processesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKToolsBrowserComposite guid: (GUID fromString: '{33683e2b-32e0-4b43-9192-c3d7996b7bfb}')!
PMBOKToolsBrowserComposite comment: ''!
!PMBOKToolsBrowserComposite categoriesForClass!MVP-Presenters! !
!PMBOKToolsBrowserComposite methodsFor!

createComponents
	super createComponents.
	toolsPresenter := self add: ListPresenter new name: 'tools'.
	toolComposite := self add: PMBOKToolComposite new name: 'toolComposite'.
	processesPresenter := self add: ListPresenter new name: 'processes'!

createSchematicWiring

	super createSchematicWiring.

	toolsPresenter when: #selectionChanged send: #onToolChanged to: self.

	processesPresenter when: #leftButtonDoubleClicked: send: #onProcessDoubleCliked: to: self.!

model: anOrderedCollection

	super model: anOrderedCollection.

	toolsPresenter model: (ListModel on: anOrderedCollection)!

onAboutToDisplayMenu: popup 
	"The system is about to display the <Menu>, popup, this is our chance
	to fiddle with it."

	super onAboutToDisplayMenu: popup.

	(popup name  == #images)
	ifTrue: [| docMenu deliverable |  
		docMenu := popup "find: 'Templates' ifAbsent: [^nil]". 
		docMenu clear.	
		deliverable := toolsPresenter selectionOrNil.
		deliverable notNil
		ifTrue: [ deliverable images do: [:each | | msg |
				msg := MessageSend receiver: self selector: #openImage: argument: each. 
				docMenu addCommand: msg description: each].].].!

onProcessDoubleCliked: aMouseEvent

	processesPresenter hasSelection ifFalse: [^self].

	processesPresenter selection show!

onToolChanged
	toolsPresenter hasSelection
		ifFalse: 
			[processesPresenter model: ListModel new.
			^toolComposite model: PMBOKToolOrTechnique new].
	toolComposite model: toolsPresenter selection.
	processesPresenter
		model: (ListModel on: (self projectModel getProcessesWithToolOrTechnique: toolsPresenter selection))!

queryCommand: aCommandQuery
	| cmd |

	super queryCommand: aCommandQuery.

	cmd := aCommandQuery commandSymbol.

	cmd == #images ifTrue: [aCommandQuery isEnabled: toolsPresenter hasSelection].! !
!PMBOKToolsBrowserComposite categoriesFor: #createComponents!public! !
!PMBOKToolsBrowserComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKToolsBrowserComposite categoriesFor: #model:!public! !
!PMBOKToolsBrowserComposite categoriesFor: #onAboutToDisplayMenu:!public! !
!PMBOKToolsBrowserComposite categoriesFor: #onProcessDoubleCliked:!public! !
!PMBOKToolsBrowserComposite categoriesFor: #onToolChanged!public! !
!PMBOKToolsBrowserComposite categoriesFor: #queryCommand:!public! !

!PMBOKToolsBrowserComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 0 32 234 256 544 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 3199 21 706 1651 1271 416 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 120 9 0 0 133 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 498 234 240 98 2 410 8 ##(Smalltalk.ReferenceView) 98 14 0 816 98 2 8 1140850688 131073 928 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu) 0 16 98 1 1058 0 16 98 0 8 'Images' 8 #images 134217729 0 0 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 928 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.ListPresenter) 8 #resource_PMI_Tools_and_Techniques_list 0 578 202 208 98 2 642 672 98 2 706 1 1 706 817 895 928 642 8 #contextMenu: 98 1 1072 928 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 152 1 0 0 191 1 0 0] 544 706 193 193 0 27 524806 ##(Smalltalk.Fraction) 11 5 16 234 256 98 2 928 8 'tools' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 817 1271 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 152 1 0 0 123 2 0 0] 98 3 928 410 8 ##(Smalltalk.Splitter) 98 12 0 816 98 2 8 1140850688 1 1696 0 1010 8 4278190080 0 517 0 0 0 1696 578 202 208 98 1 642 672 98 2 706 1 895 706 817 19 1696 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 191 1 0 0 152 1 0 0 200 1 0 0] 98 0 1440 0 27 410 432 98 15 0 816 98 2 8 1140850688 131073 1968 0 721158 ##(Smalltalk.SystemColor) 31 0 5 0 0 0 1968 852230 ##(Smalltalk.FramingLayout) 234 240 98 4 410 8 ##(Smalltalk.GroupBox) 98 14 0 1968 98 2 8 1140850695 65 2128 0 1010 8 4278190080 0 5 0 0 0 2128 0 8 4294903523 578 202 208 98 2 642 672 98 2 706 21 21 706 777 319 2128 642 8 #text: 98 1 8 'Processes with Tool or Technique' 2128 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 142 1 0 0 169 0 0 0] 98 0 1440 0 27 1181766 2 ##(Smalltalk.FramingConstraints) 1180678 ##(Smalltalk.FramingCalculation) 8 #fixedParentLeft 21 2514 8 #fixedParentRight -19 2514 8 #fixedParentTop 21 2514 8 #fixedParentBottom -19 410 944 98 14 0 1968 98 2 8 1140850688 131073 2656 0 1010 8 4278190080 0 5 0 0 0 2656 1186 1216 8 #resource_PMI_Process_list 0 578 202 208 98 1 642 672 98 2 706 41 71 706 737 249 2656 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 132 1 0 0 159 0 0 0] 544 1440 0 27 2482 2528 41 2560 -39 2592 71 2624 -39 234 256 98 2 2656 8 'processes' 0 578 202 208 98 1 642 672 98 2 706 1 913 706 817 359 1968 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 200 1 0 0 152 1 0 0 123 2 0 0] 98 2 2656 2128 1440 0 27 1440 0 27 410 1712 98 12 0 416 98 2 8 1140850688 1 3152 0 1010 8 4278190080 0 517 0 0 0 3152 578 202 208 98 1 642 672 98 2 706 817 1 706 19 1271 3152 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 152 1 0 0 0 0 0 0 161 1 0 0 123 2 0 0] 98 0 1440 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 3408 0 0 0 5 0 0 0 3408 498 234 240 544 32 234 256 98 2 410 944 98 14 0 3408 98 2 8 1140850688 131073 3536 0 1010 1040 0 5 0 0 0 3536 1186 8 ##(Smalltalk.PMBOKToolComposite) 8 #resource_Default_view 0 578 202 208 98 1 642 672 98 2 706 1 1 706 817 1271 3536 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 152 1 0 0 123 2 0 0] 544 1440 0 27 8 'toolComposite' 0 578 202 208 98 1 642 672 98 2 706 835 1 706 817 1271 3408 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 161 1 0 0 0 0 0 0 57 3 0 0 123 2 0 0] 98 1 3536 1440 0 27 1440 0 27)! !
!PMBOKToolsBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

