"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKDeliverableBrowserComposite
	instanceVariableNames: 'deliverablesPresenter descriptionComposite inputProcessesPresenter outputProcessesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDeliverableBrowserComposite guid: (GUID fromString: '{c3f2cf1b-9506-4d98-ba6f-61baebc2700d}')!
PMBOKDeliverableBrowserComposite comment: ''!
!PMBOKDeliverableBrowserComposite categoriesForClass!MVP-Presenters! !
!PMBOKDeliverableBrowserComposite methodsFor!

addInputProcess!

addOutputProcess!

createComponents

	super createComponents.

	deliverablesPresenter := self add: ListPresenter new name: 'deliverables'.
	descriptionComposite := self add: RichTextComposite new name: 'description'.
	inputProcessesPresenter := self add: ListPresenter new name: 'inputProcesses'.
	outputProcessesPresenter := self add: ListPresenter new name: 'outputProcesses'.!

createSchematicWiring

	super createSchematicWiring.

	deliverablesPresenter when: #selectionChanged send: #onDeliverableChanged to: self.

	inputProcessesPresenter when: #leftButtonDoubleClicked: send: #onInputProcessDoubleCliked: to: self.

	outputProcessesPresenter when: #leftButtonDoubleClicked: send: #onOutputProcessDoubleCliked: to: self.!

model: anOrderedCollection

	super model: anOrderedCollection.

	deliverablesPresenter model: (ListModel on: anOrderedCollection)!

onAboutToDisplayMenu: popup 
	"The system is about to display the <Menu>, popup, this is our chance
	to fiddle with it."

	super onAboutToDisplayMenu: popup.

	(popup name  == #images)
	ifTrue: [| docMenu deliverable |  
		docMenu := popup "find: 'Templates' ifAbsent: [^nil]". 
		docMenu clear.	
		deliverable := deliverablesPresenter selectionOrNil.
		deliverable notNil
		ifTrue: [ deliverable images do: [:each | | msg |
				msg := MessageSend receiver: self selector: #openImage: argument: each. 
				docMenu addCommand: msg description: each].].].!

onDeliverableChanged

	deliverablesPresenter hasSelection ifFalse: [inputProcessesPresenter model: ListModel new. 
		outputProcessesPresenter model: ListModel new.
		^descriptionComposite model: nil].

	descriptionComposite model: (deliverablesPresenter selection aspectValue: #description).

	inputProcessesPresenter model: (ListModel on: (self projectModel getProcessesWithInputDeliverable: deliverablesPresenter selection)).

	outputProcessesPresenter model: (ListModel on: (self projectModel getProcessesWithOutputDeliverable: deliverablesPresenter selection)).
!

onInputProcessDoubleCliked: aMouseEvent

	inputProcessesPresenter hasSelection ifFalse: [^self].

	inputProcessesPresenter selection show!

onOutputProcessDoubleCliked: aMouseEvent

	outputProcessesPresenter hasSelection ifFalse: [^self].

	outputProcessesPresenter selection show!

queryCommand: aCommandQuery
	| cmd |

	super queryCommand: aCommandQuery.

	cmd := aCommandQuery commandSymbol.

	cmd == #images ifTrue: [aCommandQuery isEnabled: deliverablesPresenter hasSelection].!

removeInputProcess!

removeOutputProcess! !
!PMBOKDeliverableBrowserComposite categoriesFor: #addInputProcess!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #addOutputProcess!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #createComponents!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #model:!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #onAboutToDisplayMenu:!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #onDeliverableChanged!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #onInputProcessDoubleCliked:!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #onOutputProcessDoubleCliked:!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #queryCommand:!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #removeInputProcess!public! !
!PMBOKDeliverableBrowserComposite categoriesFor: #removeOutputProcess!public! !

!PMBOKDeliverableBrowserComposite class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 560 0 0 0 5 0 0 0 560 498 234 240 98 0 16 234 256 98 2 410 8 ##(Smalltalk.ReferenceView)  98 14 0 560 98 2 8 1140850688 131073 704 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 265030 4 ##(Smalltalk.Menu)  0 16 98 1 834 0 16 98 0 8 'Images' 8 #images 134217729 0 0 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 704 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.ListPresenter)  8 #resource_PMI_Deliverable_list 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  1 1 1154 907 551 704 1090 8 #contextMenu: 98 1 848 704 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 1 0 0 19 1 0 0] 656 1154 193 193 0 27 8 'deliverables' 0 1026 202 208 98 1 1090 1120 98 2 1154 1 1 1154 907 1121 560 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 1 0 0 48 2 0 0] 98 3 704 410 8 ##(Smalltalk.Splitter)  98 12 0 560 98 2 8 1140850688 1 1488 0 786 8 4278190080 0 517 0 0 0 1488 1026 202 208 98 1 1090 1120 98 2 1154 1 551 1154 907 19 1488 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 19 1 0 0 197 1 0 0 28 1 0 0] 98 0 1296 0 27 410 432 98 15 0 560 98 2 8 1140850688 131073 1760 0 0 0 5 0 0 0 1760 498 234 240 656 16 234 256 656 0 1026 202 208 98 1 1090 1120 98 2 1154 1 569 1154 907 553 1760 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 28 1 0 0 197 1 0 0 48 2 0 0] 98 3 410 432 98 15 0 1760 98 2 8 1140850688 131073 2032 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 2032 852230 ##(Smalltalk.FramingLayout)  234 240 98 4 410 8 ##(Smalltalk.GroupBox)  98 14 0 2032 98 2 8 1140850695 65 2192 0 786 8 4278190080 0 5 0 0 0 2192 0 8 4294903033 1026 202 208 98 2 1090 1120 98 2 1154 21 21 1154 867 227 2192 1090 8 #text: 98 1 8 'Processes with Input' 2192 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 187 1 0 0 123 0 0 0] 98 0 1296 0 27 1181766 2 ##(Smalltalk.FramingConstraints)  1180678 ##(Smalltalk.FramingCalculation)  8 #fixedParentLeft 21 2578 8 #fixedParentRight -19 2578 8 #fixedParentTop 21 2578 8 #fixedParentBottom -19 410 720 98 14 0 2032 98 2 8 1140850688 131073 2720 0 786 8 4278190080 0 5 0 0 0 2720 962 992 8 #resource_PMI_Process_list 0 1026 202 208 98 1 1090 1120 98 2 1154 41 71 1154 827 157 2720 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 177 1 0 0 113 0 0 0] 656 1296 0 27 2546 2592 41 2624 -39 2656 71 2688 -39 234 256 98 2 2720 8 'inputProcesses' 0 1026 202 208 98 1 1090 1120 98 2 1154 1 1 1154 907 267 2032 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 1 0 0 133 0 0 0] 98 2 2720 2192 1296 0 27 410 1504 98 12 0 1760 98 2 8 1140850688 1 3216 0 786 8 4278190080 0 517 0 0 0 3216 1026 202 208 98 1 1090 1120 98 2 1154 1 267 1154 907 19 3216 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 133 0 0 0 197 1 0 0 142 0 0 0] 98 0 1296 0 27 410 432 98 15 0 1760 98 2 8 1140850688 131073 3472 0 2098 31 0 5 0 0 0 3472 2130 234 240 98 4 410 2208 98 14 0 3472 98 2 8 1140850695 65 3600 0 786 2288 0 5 0 0 0 3600 0 8 4294903033 1026 202 208 98 2 1090 1120 98 2 1154 21 21 1154 867 229 3600 1090 2448 98 1 8 'Processes with Output' 3600 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 187 1 0 0 124 0 0 0] 98 0 1296 0 27 2546 2592 21 2624 -19 2656 21 2688 -19 410 720 98 14 0 3472 98 2 8 1140850688 131073 3920 0 786 2800 0 5 0 0 0 3920 962 992 2832 0 1026 202 208 98 1 1090 1120 98 2 1154 41 71 1154 827 159 3920 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 177 1 0 0 114 0 0 0] 656 1296 0 27 2546 2592 41 2624 -39 2656 71 2688 -39 234 256 98 2 3920 8 'outputProcesses' 0 1026 202 208 98 1 1090 1120 98 2 1154 1 285 1154 907 269 3472 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 142 0 0 0 197 1 0 0 20 1 0 0] 98 2 3920 3600 1296 0 27 1296 0 27 1296 0 27 3 32 234 256 656 0 1026 202 208 98 1 1090 1120 98 2 1154 3199 21 1154 1831 1121 416 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 210 9 0 0 58 2 0 0] 98 3 560 410 1504 98 12 0 416 98 2 8 1140850688 1 4560 0 786 8 4278190080 0 517 0 0 0 4560 1026 202 208 98 1 1090 1120 98 2 1154 907 1 1154 19 1121 4560 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 197 1 0 0 0 0 0 0 206 1 0 0 48 2 0 0] 98 0 1296 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 4816 0 0 0 5 0 0 0 4816 498 234 240 656 32 234 256 98 2 410 720 98 14 0 4816 98 2 8 1140850688 131073 4944 0 786 816 0 5 0 0 0 4944 962 8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 1026 202 208 98 1 1090 1120 98 2 1154 1 1 1154 907 1121 4944 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 197 1 0 0 48 2 0 0] 656 1296 0 27 8 'description' 0 1026 202 208 98 1 1090 1120 98 2 1154 925 1 1154 907 1121 4816 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 206 1 0 0 0 0 0 0 147 3 0 0 48 2 0 0] 98 1 4944 1296 0 27 1296 0 27 )! !
!PMBOKDeliverableBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

