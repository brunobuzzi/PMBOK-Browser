"Filed out from Dolphin Smalltalk 7"!

PMIComposite subclass: #PMITreeBuilderComposite
	instanceVariableNames: 'nodeTypesPresenter elementsPresenter treePresenter descriptionPresenter treesPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMITreeBuilderComposite guid: (GUID fromString: '{3beeb257-68cb-4e56-a96c-84f59078c41e}')!
PMITreeBuilderComposite comment: ''!
!PMITreeBuilderComposite categoriesForClass!MVP-Presenters! !
!PMITreeBuilderComposite methodsFor!

createComponents

	super createComponents.

	nodeTypesPresenter := self add: ListPresenter new name: 'nodeTypes'.
	elementsPresenter := self add: ListPresenter new name: 'elements'.
	treePresenter := self add: TreePresenter new name: 'tree'.
	descriptionPresenter := self add: RichTextComposite new name: 'description'.
	treesPresenter := self add: ListPresenter new name: 'trees'.
!

createSchematicWiring

	super createComponents.

	nodeTypesPresenter when: #selectionChanged send: #onNodeTypeChanged to: self.

	treePresenter when: #dragOver: send: #onDragOverTree: to: self;
		when: #drop: send: #onDropOverTree: to: self;
		when: #selectionChanged send: #onTreeChanged to: self.

	treesPresenter when: #selectionChanged send: #onMyTreesChanged to: self.

	
!

getElementsOfSelectedNode
	"Answer anOrderedCollection "

	nodeTypesPresenter hasSelection ifFalse: [^OrderedCollection new].

	(nodeTypesPresenter selection = 'Process') ifTrue: [^self projectModel getAllProcesses].
	(nodeTypesPresenter selection = 'Deliverable') ifTrue: [^self projectModel deliverables].
	(nodeTypesPresenter selection = 'Tools') ifTrue: [^self projectModel toolsAndTechniques].
	(nodeTypesPresenter selection = 'Group') ifTrue: [^self projectModel groups].
	(nodeTypesPresenter selection = 'Knowledge Area') ifTrue: [^self projectModel knowledgeAreas].
	(nodeTypesPresenter selection = 'Artifacts') ifTrue: [^self projectModel getAllArtifacts].!

model: aPMITreeModel

	super model: aPMITreeModel.

	treePresenter model: aPMITreeModel tree.

	nodeTypesPresenter model: (ListModel on: self nodeTypes).

	treesPresenter model: (ListModel  on: (self projectModel trees asSortedCollection: [:a :b | a name <= b name])).!

nodeTypes

	^(OrderedCollection with: 'Process' with: 'Deliverable' with: 'Tools' with: 'Group' with: 'Knowledge Area')
		add: 'Artifacts';
		yourself.!

onDragOverTree: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."

	"aDragDropSession suggestedTarget ifNil: [^nil]."
	(aDragDropSession suggestedTarget  == aDragDropSession suggestedSource) ifTrue: [^nil].
	aDragDropSession operation: aDragDropSession intendedOperation

	
!

onDropOverTree: aDragDropSession
	"Private - A drag of one or more classes has been started. Populate the <DragDropSession>, session, with the objects to be dragged."


	aDragDropSession suggestedTarget  ifNil: [^treePresenter model addRoot: aDragDropSession suggestedSource asTreeNode].

	treePresenter model add: aDragDropSession suggestedSource asTreeNode asChildOf: aDragDropSession suggestedTarget.

	treePresenter expand: aDragDropSession suggestedTarget

	
!

onMyTreesChanged

	treesPresenter hasSelection ifFalse: [^self].

	treePresenter model: treesPresenter selectionOrNil tree.
	
!

onNodeTypeChanged

	elementsPresenter model: (ListModel on: self getElementsOfSelectedNode)!

onTreeChanged

	treePresenter hasSelection ifFalse: [^descriptionPresenter model: nil].

	descriptionPresenter model: (treePresenter selection aspectValue: #description)
	
!

removeNode

	(treePresenter hasSelection) ifFalse: [^self].

	 (MessageBox confirm: 'Are sure to remove this node ?' caption: 'PMI Tree Builder') ifFalse: [^self].

	treePresenter model remove: treePresenter selection!

removeTree

	treesPresenter hasSelection ifFalse: [^self].

	 (MessageBox confirm: 'Are sure to remove this Tree ?' caption: 'PMI Tree Builder') ifFalse: [^self].

	self projectModel removeTree: treesPresenter selection.

	treesPresenter model: (ListModel  on: self projectModel trees).

	treePresenter model: TreeModel new.!

saveTree
	| name |

	name := Prompter prompt: 'Enter the name of the Tree' caption: 'PMI Tree Builder'.

	(name isNil or: [name isEmpty]) ifTrue: [^MessageBox notify: 'Tree NOT saved !!' caption: 'Tree Builder'].

	self model name: name.
	self projectModel addTree: self model.

	MessageBox notify: 'Tree saved !!' caption: 'PMI Tree Builder'.

	treesPresenter model: (ListModel  on: self projectModel trees).! !
!PMITreeBuilderComposite categoriesFor: #createComponents!public! !
!PMITreeBuilderComposite categoriesFor: #createSchematicWiring!public! !
!PMITreeBuilderComposite categoriesFor: #getElementsOfSelectedNode!public! !
!PMITreeBuilderComposite categoriesFor: #model:!public! !
!PMITreeBuilderComposite categoriesFor: #nodeTypes!public! !
!PMITreeBuilderComposite categoriesFor: #onDragOverTree:!public! !
!PMITreeBuilderComposite categoriesFor: #onDropOverTree:!public! !
!PMITreeBuilderComposite categoriesFor: #onMyTreesChanged!public! !
!PMITreeBuilderComposite categoriesFor: #onNodeTypeChanged!public! !
!PMITreeBuilderComposite categoriesFor: #onTreeChanged!public! !
!PMITreeBuilderComposite categoriesFor: #removeNode!public! !
!PMITreeBuilderComposite categoriesFor: #removeTree!public! !
!PMITreeBuilderComposite categoriesFor: #saveTree!public! !

!PMITreeBuilderComposite class methodsFor!

defaultModel

	^PMITreeModel new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  3199 21 706 2211 1401 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 144 10 0 0 198 2 0 0] 98 3 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 788230 ##(Smalltalk.BorderLayout)  1 1 410 432 98 15 0 816 98 2 8 1140850688 131073 912 0 721158 ##(Smalltalk.SystemColor)  31 0 5 0 0 0 912 0 234 256 98 4 410 8 ##(Smalltalk.ComboBox)  98 17 0 912 98 2 8 1412498947 1025 1040 590662 2 ##(Smalltalk.ListModel)  202 208 544 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  524550 ##(Smalltalk.ColorRef)  8 4278190080 0 5 0 0 0 1040 0 8 4294903107 459270 ##(Smalltalk.Message)  8 #displayString 98 0 544 401 578 202 208 98 1 642 672 98 2 706 41 71 706 351 47 1040 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 20 0 0 0 35 0 0 0 195 0 0 0 58 0 0 0] 98 0 706 193 193 0 27 8 'nodeTypes' 410 1056 98 17 0 912 98 2 8 1412498947 1025 1520 1122 202 208 544 0 1184 1202 1232 0 5 0 0 0 1520 0 8 4294903107 1266 8 #name 98 0 544 401 578 202 208 98 1 642 672 98 2 706 451 71 706 611 47 1520 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 225 0 0 0 35 0 0 0 18 2 0 0 58 0 0 0] 98 0 1488 0 27 8 'trees' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1097 231 912 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 36 2 0 0 115 0 0 0] 98 5 410 8 ##(Smalltalk.GroupBox)  98 14 0 912 98 2 8 1140850695 65 2032 0 1202 8 4278190080 0 5 0 0 0 2032 0 8 4294903393 578 202 208 98 2 642 672 98 2 706 21 21 706 391 131 2032 642 8 #text: 98 1 8 'Select Node Type' 2032 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 205 0 0 0 75 0 0 0] 98 0 1488 0 27 1040 1520 410 2048 98 14 0 912 98 2 8 1140850695 65 2384 0 1202 2128 0 5 0 0 0 2384 0 8 4294903393 578 202 208 98 2 642 672 98 2 706 431 21 706 651 131 2384 642 2288 98 1 8 'My Trees' 2384 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 215 0 0 0 10 0 0 0 28 2 0 0 75 0 0 0] 98 0 1488 0 27 410 8 ##(Smalltalk.PushButton)  98 20 0 912 98 2 8 1140924416 1 2688 0 0 0 5 0 0 0 2688 0 8 4294903393 1180998 4 ##(Smalltalk.CommandDescription)  8 #removeTree 8 'Remove Tree' 1 1 0 0 32 0 0 0 578 202 208 98 3 642 672 98 2 706 461 161 706 171 61 2688 642 8 #isEnabled: 98 1 32 2688 642 2288 98 1 8 'Remove Tree' 2688 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 230 0 0 0 80 0 0 0 59 1 0 0 110 0 0 0] 98 0 1488 0 29 1488 0 27 0 0 0 410 8 ##(Smalltalk.ListView)  98 30 0 816 98 2 8 1409355853 1025 3104 1122 202 208 544 0 1184 1202 8 4278190080 0 13 0 0 0 3104 0 8 4294905075 1266 1296 98 0 8 ##(Smalltalk.IconicListAbstract)  1049670 1 ##(Smalltalk.IconImageManager)  0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn)  8 'Name' 701 8 #left 1266 1664 98 0 787814 3 ##(Smalltalk.BlockClosure)  0 0 1180966 ##(Smalltalk.CompiledExpression)  2 1 3472 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 1664 3488 7 513 0 0 0 3104 0 1 0 0 8 #report 544 0 131169 0 0 578 202 208 98 2 642 672 98 2 706 1 231 706 1097 1171 3104 642 2288 98 1 8 'Name' 3104 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 115 0 0 0 36 2 0 0 188 2 0 0] 98 0 1488 0 27 234 256 98 2 3104 8 'elements' 0 578 202 208 98 1 642 672 98 2 706 1 1 706 1097 1401 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 36 2 0 0 188 2 0 0] 98 2 912 3104 1488 0 27 410 8 ##(Smalltalk.Splitter)  98 12 0 416 98 2 8 1140850688 1 4016 0 1202 8 4278190080 0 517 0 0 0 4016 578 202 208 98 1 642 672 98 2 706 1097 1 706 19 1401 4016 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 36 2 0 0 0 0 0 0 45 2 0 0 188 2 0 0] 98 0 1488 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 4288 0 0 0 5 0 0 0 4288 498 234 240 98 2 410 8 ##(Smalltalk.TreeView)  98 27 0 4288 98 2 8 1409352231 1025 4400 590918 3 ##(Smalltalk.TreeModel)  0 1184 525062 ##(Smalltalk.TreeNode)  0 0 0 234 256 544 1202 8 4278190080 0 21 265030 4 ##(Smalltalk.Menu)  0 16 98 1 984134 2 ##(Smalltalk.CommandMenuItem)  1 2786 8 #removeNode 8 'Remove Node' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 4400 0 8 4294903647 1266 1664 98 0 3296 3328 0 0 0 0 0 234 240 544 17 8 #mediumIcons 1 0 578 202 208 98 2 642 672 98 2 706 1 1 706 1097 921 4400 642 8 #contextMenu: 98 1 4608 4400 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 36 2 0 0 204 1 0 0] 98 0 1488 0 27 5 16 234 256 98 4 410 8 ##(Smalltalk.ReferenceView)  98 14 0 4288 98 2 8 1140850688 131073 5056 0 1202 8 4278190080 0 5 0 0 0 5056 1180166 ##(Smalltalk.ResourceIdentifier)  8 ##(Smalltalk.RichTextComposite)  8 #resource_Default_view 0 578 202 208 98 1 642 672 98 2 706 1 939 706 1097 463 5056 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 213 1 0 0 36 2 0 0 188 2 0 0] 544 1488 0 27 8 'description' 4400 8 'tree' 0 578 202 208 98 1 642 672 98 2 706 1115 1 706 1097 1401 4288 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 45 2 0 0 0 0 0 0 81 4 0 0 188 2 0 0] 98 3 4400 410 4032 98 12 0 4288 98 2 8 1140850688 1 5568 0 1202 8 4278190080 0 517 0 0 0 5568 578 202 208 98 1 642 672 98 2 706 1 921 706 1097 19 5568 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 204 1 0 0 36 2 0 0 213 1 0 0] 98 0 1488 0 27 5056 1488 0 27 1488 0 27 )! !
!PMITreeBuilderComposite class categoriesFor: #defaultModel!public! !
!PMITreeBuilderComposite class categoriesFor: #resource_Default_view!public!resources-views! !

