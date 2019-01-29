"Filed out from Dolphin Smalltalk 7"!

Dialog subclass: #PMICustomTestShell
	instanceVariableNames: 'showInputsPresenter showToolsPresenter showOutputsPresenter showAreaPresenter showGroupPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMICustomTestShell guid: (GUID fromString: '{f959370c-30e6-49ec-acd7-c64c6a0ce6bf}')!
PMICustomTestShell comment: ''!
!PMICustomTestShell categoriesForClass!MVP-Presenters! !
!PMICustomTestShell methodsFor!

answer

	^Dictionary new
		at: #inputs put: showInputsPresenter value;
		at: #tools put: showToolsPresenter value;
		at: #outputs put: showOutputsPresenter value;
		at: #area put: showAreaPresenter value;
		at: #group put: showGroupPresenter value;
		yourself.
!

createComponents

	super createComponents.

	showInputsPresenter := self add: BooleanPresenter new name: 'showInputs'. 
	showToolsPresenter := self add: BooleanPresenter new name: 'showTools'. 
	showOutputsPresenter := self add: BooleanPresenter new name: 'showOutputs'. 
	showAreaPresenter := self add: BooleanPresenter new name: 'showArea'. 
	showGroupPresenter := self add: BooleanPresenter new name: 'showGroup'. !

onViewClosed

	self answer.

	super onViewClosed.! !
!PMICustomTestShell categoriesFor: #answer!public! !
!PMICustomTestShell categoriesFor: #createComponents!public! !
!PMICustomTestShell categoriesFor: #onViewClosed!public! !

!PMICustomTestShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.DialogView)  98 30 0 0 98 2 27131905 131073 416 0 721158 ##(Smalltalk.SystemColor)  31 0 39 0 0 0 416 0 234 256 98 10 410 8 ##(Smalltalk.CheckBox)  98 16 0 416 98 2 8 1409363203 1 544 721990 2 ##(Smalltalk.ValueHolder)  0 0 1114118 ##(Smalltalk.NeverSearchPolicy)  32 0 0 7 0 0 0 544 0 8 4294903247 852486 ##(Smalltalk.NullConverter)  0 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  411 411 866 227 43 544 802 8 #text: 98 1 8 'Show Group' 544 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 205 0 0 0 205 0 0 0 62 1 0 0 226 0 0 0] 98 0 866 193 193 0 27 8 'showGroup' 410 560 98 16 0 416 98 2 8 1409363203 1 1072 626 0 0 672 32 0 0 7 0 0 0 1072 0 8 4294903247 706 0 0 0 738 202 208 98 2 802 832 98 2 866 411 101 866 391 41 1072 802 928 98 1 8 'Show Tools and Techniques' 1072 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 205 0 0 0 50 0 0 0 144 1 0 0 70 0 0 0] 98 0 1040 0 27 8 'showTools' 410 560 98 16 0 416 98 2 8 1409363203 1 1408 626 0 0 672 32 0 0 7 0 0 0 1408 0 8 4294903247 706 0 0 0 738 202 208 98 2 802 832 98 2 866 81 211 866 227 43 1408 802 928 98 1 8 'Show Outputs' 1408 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 40 0 0 0 105 0 0 0 153 0 0 0 126 0 0 0] 98 0 1040 0 27 8 'showOutputs' 410 560 98 16 0 416 98 2 8 1409363203 1 1744 626 0 0 672 32 0 0 7 0 0 0 1744 0 8 4294903247 706 0 0 0 738 202 208 98 2 802 832 98 2 866 81 101 866 227 43 1744 802 928 98 1 8 'Show Inputs' 1744 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 40 0 0 0 50 0 0 0 153 0 0 0 71 0 0 0] 98 0 1040 0 27 8 'showInputs' 410 560 98 16 0 416 98 2 8 1409363203 1 2080 626 0 0 672 32 0 0 7 0 0 0 2080 0 8 4294903247 706 0 0 0 738 202 208 98 2 802 832 98 2 866 75 411 866 321 41 2080 802 928 98 1 8 'Show Knowledge Area' 2080 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 37 0 0 0 205 0 0 0 197 0 0 0 225 0 0 0] 98 0 1040 0 27 8 'showArea' 0 0 0 0 0 3 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore)  0 0 1 32 8 1997646493 738 202 208 98 3 802 832 98 2 866 3199 21 866 921 671 416 802 928 98 1 8 'Custom Test Configuration' 416 802 8 #updateMenuBar 98 0 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 11 8 0 0 89 1 0 0] 98 8 410 8 ##(Smalltalk.GroupBox)  98 14 0 416 98 2 8 1140850695 65 2720 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 7 0 0 0 2720 0 8 4294903247 738 202 208 98 2 802 832 98 2 866 35 41 866 811 261 2720 802 928 98 1 8 'Input - Tool - Output' 2720 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 17 0 0 0 20 0 0 0 166 1 0 0 150 0 0 0] 98 0 1040 0 27 410 2736 98 14 0 416 98 2 8 1140850695 65 3072 0 2802 2832 0 7 0 0 0 3072 0 8 4294903247 738 202 208 98 2 802 832 98 2 866 45 351 866 811 151 3072 802 928 98 1 8 'Area - Group' 3072 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 22 0 0 0 175 0 0 0 171 1 0 0 250 0 0 0] 98 0 1040 0 27 1744 1072 1408 2080 544 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 3376 0 0 0 7 0 0 0 3376 0 8 4294903247 1180998 4 ##(Smalltalk.CommandDescription)  8 #exit 8 'Done' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 721 531 866 141 51 3376 802 8 #isEnabled: 98 1 32 3376 802 928 98 1 8 'Done' 3376 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 104 1 0 0 9 1 0 0 174 1 0 0 34 1 0 0] 98 0 1040 0 29 1040 0 27 )! !
!PMICustomTestShell class categoriesFor: #resource_Default_view!public!resources-views! !

