"Filed out from Dolphin Smalltalk 7"!

PMBOKComposite subclass: #PMBOKPortfolioBrowserComposite
	instanceVariableNames: 'portfoliosPresenter lowerPortfoliosPresenter programsPresenter projectsPresenter lowerPorfolioDescriptionPresenter higherLevelProgramDescriptionPresenter projectDescriptionPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKPortfolioBrowserComposite guid: (GUID fromString: '{6d1d9cd2-e960-4fe5-a328-5050301d79e7}')!
PMBOKPortfolioBrowserComposite comment: ''!
!PMBOKPortfolioBrowserComposite categoriesForClass!MVP-Presenters! !
!PMBOKPortfolioBrowserComposite methodsFor!

addLowerLevelPorfolio
	| portfolioName portfolio |
	portfoliosPresenter hasSelection ifFalse: [^self].
	portfolioName := Prompter prompt: 'Enter the name of the new Portfolio' caption: 'PMI Browser'.
	portfolioName ifNil: [^self].
	portfolioName isEmpty ifTrue: [^self].
	portfolio := PMBOKLowerLevelPortfolio new name: portfolioName.
	portfoliosPresenter selection addLowerLevelPortfolio: portfolio.
	lowerPortfoliosPresenter model: (ListModel on: portfoliosPresenter selection lowerLevelPortfolios)!

addPorfolio
	| portfolioName portfolio |
	portfolioName := Prompter prompt: 'Enter the name of the new Portfolio' caption: 'PMI Browser'.
	portfolioName ifNil: [^self].
	portfolioName isEmpty ifTrue: [^self].
	portfolio := PMBOKHigherLevelPortfolio new name: portfolioName.
	portfolio addToCache.
	self model: self model!

addProgram
	| programName program |
	portfoliosPresenter hasSelection ifFalse: [^self].
	programName := Prompter prompt: 'Enter the name of the new Program' caption: 'PMI Browser'.
	programName ifNil: [^self].
	programName isEmpty ifTrue: [^self].
	program := PMBOKHigherLevelProgram new name: programName.
	portfoliosPresenter selection addHigherLevelProgram: program.
	programsPresenter model: (ListModel on: portfoliosPresenter selection higherLevelPrograms)!

addProject
	| projectName project |
	portfoliosPresenter hasSelection ifFalse: [^self].
	projectName := Prompter prompt: 'Enter the name of the new Project' caption: 'PMI Browser'.
	projectName ifNil: [^self].
	projectName isEmpty ifTrue: [^self].
	project := (PMBOKProject definition: self projectModel) name: projectName.
	portfoliosPresenter selection addProject: project.
	projectsPresenter model: (ListModel on: portfoliosPresenter selection projects)!

createComponents

	super createComponents.

	portfoliosPresenter := self add: ListPresenter new name: 'portfolios'.
	lowerPortfoliosPresenter := self add: ListPresenter new name: 'lowerPortfolios'.
	programsPresenter := self add: ListPresenter new name: 'programs'.
	projectsPresenter := self add: ListPresenter new name: 'projects'.

	lowerPorfolioDescriptionPresenter := self add: RichTextComposite new name: 'lowerPorfolioDescription'.
	higherLevelProgramDescriptionPresenter := self add: RichTextComposite new name: 'higherLevelProgramDescription'.
	projectDescriptionPresenter := self add: RichTextComposite new name: 'projectDescription'.
!

createSchematicWiring

	super createSchematicWiring.

	portfoliosPresenter when: #selectionChanged send: #onMainPortfolioChanged to: self.

	projectsPresenter when: #leftButtonDoubleClicked: send: #onProjectDoubleClicked: to: self;
		when: #selectionChanged send: #onProjectChanged to: self.

	lowerPortfoliosPresenter when: #selectionChanged send: #onLowerLevelPortfolioChanged to: self.

	programsPresenter when: #selectionChanged send: #onHigherLevelProgramChanged to: self.!

model: aCollectionOfPortfolios

	super model: aCollectionOfPortfolios.

	portfoliosPresenter model: (ListModel on: aCollectionOfPortfolios)!

onHigherLevelProgramChanged

	programsPresenter hasSelection ifFalse: [^higherLevelProgramDescriptionPresenter model: nil].

	higherLevelProgramDescriptionPresenter model: (programsPresenter selection aspectValue: #description). !

onLowerLevelPortfolioChanged

	lowerPortfoliosPresenter hasSelection ifFalse: [^lowerPorfolioDescriptionPresenter model: nil].

	lowerPorfolioDescriptionPresenter model: (lowerPortfoliosPresenter selection aspectValue: #description). !

onMainPortfolioChanged

	portfoliosPresenter hasSelection ifFalse: [
		lowerPortfoliosPresenter model: ListModel new.
		programsPresenter model: ListModel new.
		^projectsPresenter model: ListModel new].

	lowerPortfoliosPresenter model: (ListModel on: portfoliosPresenter selection lowerLevelPortfolios).
	programsPresenter model: (ListModel on: portfoliosPresenter selection higherLevelPrograms).
	projectsPresenter model: (ListModel on: portfoliosPresenter selection projects).
!

onProjectChanged

	projectsPresenter hasSelection ifFalse: [^projectDescriptionPresenter model: nil].

	projectDescriptionPresenter model: (projectsPresenter selection aspectValue: #description). !

onProjectDoubleClicked: aMouseEvent

	projectsPresenter hasSelection ifFalse: [^self].

	projectsPresenter selection show!

removeLowerLevelPorfolio

	portfoliosPresenter hasSelection ifFalse: [^self].
	lowerPortfoliosPresenter hasSelection ifFalse: [^self].

	(MessageBox confirm: 'Are you sure to remove the selected Lower Level Portfolio ?' caption: 'PMI Browser') ifFalse: [^self].

	portfoliosPresenter selection removeLowerLevelPortfolio: lowerPortfoliosPresenter selection.

	lowerPortfoliosPresenter model: (ListModel on: portfoliosPresenter selection lowerLevelPortfolios)
!

removePorfolio

	portfoliosPresenter hasSelection ifFalse: [^self].

	(MessageBox confirm: 'Are you sure to remove the selected Portfolio ?' caption: 'PMI Browser') ifFalse: [^self].

	portfoliosPresenter selection removeFromCache.

	self model: self model!

removeProgram

	portfoliosPresenter hasSelection ifFalse: [^self].
	programsPresenter hasSelection ifFalse: [^self].

	(MessageBox confirm: 'Are you sure to remove the selected Program ?' caption: 'PMI Browser') ifFalse: [^self].

	portfoliosPresenter selection removeHigherLevelProgram: programsPresenter selection.

	programsPresenter model: (ListModel on: portfoliosPresenter selection higherLevelPrograms)!

removeProject

	portfoliosPresenter hasSelection ifFalse: [^self].
	projectsPresenter hasSelection ifFalse: [^self].

	(MessageBox confirm: 'Are you sure to remove the selected Project ?' caption: 'PMI Browser') ifFalse: [^self].

	portfoliosPresenter selection removeProject: projectsPresenter selection.

	projectsPresenter model: (ListModel on: portfoliosPresenter selection projects)! !
!PMBOKPortfolioBrowserComposite categoriesFor: #addLowerLevelPorfolio!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #addPorfolio!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #addProgram!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #addProject!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #createComponents!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #createSchematicWiring!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #model:!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #onHigherLevelProgramChanged!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #onLowerLevelPortfolioChanged!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #onMainPortfolioChanged!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #onProjectChanged!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #onProjectDoubleClicked:!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #removeLowerLevelPorfolio!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #removePorfolio!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #removeProgram!public! !
!PMBOKPortfolioBrowserComposite categoriesFor: #removeProject!public! !

!PMBOKPortfolioBrowserComposite class methodsFor!

defaultModel

	^OrderedCollection new!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1409286144 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 721158 ##(Smalltalk.SystemColor) 31 0 5 0 0 0 528 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 0 32 234 256 672 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 834 2061 61 528 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 6 4 0 0 30 0 0 0] 98 1 410 8 ##(Smalltalk.ReferenceView) 98 14 0 528 98 2 8 1140850688 131073 944 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 5 0 0 0 944 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Toolbar) 8 #resource_PMI_Browser_toolbar 0 706 202 208 98 1 770 800 98 2 834 1 1 834 2061 61 944 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 6 4 0 0 30 0 0 0] 672 834 193 193 0 27 1280 0 27 0 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 1296 0 0 0 5 0 0 0 1296 626 234 240 98 2 410 432 98 15 0 1296 98 2 8 1140850688 131073 1408 0 0 0 5 0 0 0 1408 626 234 240 672 16 234 256 672 0 706 202 208 98 1 770 800 98 2 834 529 1 834 1533 1391 1408 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 8 1 0 0 0 0 0 0 6 4 0 0 183 2 0 0] 98 5 410 432 98 15 0 1408 98 2 8 1140850688 131073 1680 0 594 31 0 5 0 0 0 1680 498 1 1 410 432 98 15 0 1680 98 2 8 1140850688 131073 1776 0 0 0 5 0 0 0 1776 626 234 240 672 32 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 1 834 1533 61 1776 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 2 0 0 30 0 0 0] 98 1 410 8 ##(Smalltalk.StaticText) 98 16 0 1776 98 2 8 1140850945 262145 2048 0 0 0 5 0 263174 ##(Smalltalk.Font) 0 16 459014 ##(Smalltalk.LOGFONT) 8 #[237 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 834 193 193 0 2048 0 8 4294903115 852486 ##(Smalltalk.NullConverter) 0 0 0 706 202 208 98 2 770 800 98 2 834 1 1 834 1533 61 2048 770 8 #text: 98 1 8 'Lower Level Porfolios' 2048 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 2 0 0 30 0 0 0] 98 0 1280 0 27 1280 0 27 0 0 0 410 432 98 15 0 1680 98 2 8 1140850688 131073 2496 0 0 0 5 0 0 0 2496 626 234 240 672 32 234 256 98 4 410 960 98 14 0 2496 98 2 8 1140850688 131073 2624 0 1026 8 4278190080 0 5 0 0 0 2624 1074 8 ##(Smalltalk.RichTextComposite) 8 #resource_Default_view 0 706 202 208 98 1 770 800 98 2 834 775 1 834 759 391 2624 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 131 1 0 0 0 0 0 0 254 2 0 0 195 0 0 0] 672 1280 0 27 8 'lowerPorfolioDescription' 410 8 ##(Smalltalk.ListView) 98 30 0 2496 98 2 8 1409355853 1025 2928 590662 2 ##(Smalltalk.ListModel) 202 208 672 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 1026 8 4278190080 0 5 265030 4 ##(Smalltalk.Menu) 0 16 98 2 984134 2 ##(Smalltalk.CommandMenuItem) 1 1180998 4 ##(Smalltalk.CommandDescription) 8 #addLowerLevelPorfolio 8 'Add Lower Level Portfolio' 1 1 0 0 0 3170 1 3202 8 #removeLowerLevelPorfolio 8 'Remove Lower Level Portfolio' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 2928 0 8 4294903981 459270 ##(Smalltalk.Message) 8 #displayString 98 0 8 ##(Smalltalk.IconicListAbstract) 1049670 1 ##(Smalltalk.IconImageManager) 0 0 0 0 0 0 202 208 98 1 920646 5 ##(Smalltalk.ListViewColumn) 8 'Portfolio Name' 501 8 #left 3362 8 #name 98 0 787814 3 ##(Smalltalk.BlockClosure) 0 0 1180966 ##(Smalltalk.CompiledExpression) 2 1 170 8 'Dolphin' 8 'SortedCollection' 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3584 3632 7 513 0 0 0 2928 0 1 0 0 8 #report 672 0 131169 0 0 706 202 208 98 3 770 800 98 2 834 1 1 834 757 391 2928 770 8 #contextMenu: 98 1 3136 2928 770 2400 98 1 8 'Portfolio Name' 2928 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 122 1 0 0 195 0 0 0] 98 0 1280 0 27 8 'lowerPortfolios' 0 706 202 208 98 1 770 800 98 2 834 1 61 834 1533 391 2496 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 254 2 0 0 225 0 0 0] 98 3 2928 410 8 ##(Smalltalk.Splitter) 98 12 0 2496 98 2 8 1140850688 1 4224 0 1026 8 4278190080 0 517 0 0 0 4224 706 202 208 98 1 770 800 98 2 834 757 1 834 19 391 4224 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 122 1 0 0 0 0 0 0 131 1 0 0 195 0 0 0] 98 0 1280 0 27 2624 1280 0 27 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 1 834 1533 451 1680 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 2 0 0 225 0 0 0] 98 2 1776 2496 1280 0 27 410 4240 98 12 0 1408 98 2 8 1140850688 1 4672 0 1026 8 4278190080 0 517 0 0 0 4672 706 202 208 98 1 770 800 98 2 834 1 451 834 1533 19 4672 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 225 0 0 0 254 2 0 0 234 0 0 0] 98 0 1280 0 27 410 432 98 15 0 1408 98 2 8 1140850688 131073 4928 0 594 31 0 5 0 0 0 4928 498 1 1 410 432 98 15 0 4928 98 2 8 1140850688 131073 5024 0 0 0 5 0 0 0 5024 626 234 240 672 32 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 1 834 1533 61 5024 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 2 0 0 30 0 0 0] 98 1 410 2064 98 16 0 5024 98 2 8 1140850945 262145 5296 0 0 0 5 0 2130 0 16 2162 8 #[237 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 834 193 193 0 5296 0 8 4294903115 2242 0 0 0 706 202 208 98 2 770 800 98 2 834 1 1 834 1533 61 5296 770 2400 98 1 8 'Higher Level Programs' 5296 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 2 0 0 30 0 0 0] 98 0 1280 0 27 1280 0 27 0 0 0 410 432 98 15 0 4928 98 2 8 1140850688 131073 5664 0 0 0 5 0 0 0 5664 626 234 240 672 32 234 256 98 4 410 2944 98 30 0 5664 98 2 8 1409355853 1025 5792 3010 202 208 672 0 3072 1026 3104 0 5 3122 0 16 98 2 3170 1 3202 8 #addProgram 8 'Add Program' 1 1 0 0 0 3170 1 3202 8 #removeProgram 8 'Remove Program' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 5792 0 8 4294903981 3362 3392 98 0 3424 3456 0 0 0 0 0 0 202 208 98 1 3506 8 'Program Name' 501 3552 3362 3584 3600 3618 0 0 3650 2 1 3680 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3584 6208 7 513 0 0 0 5792 0 1 0 0 3776 672 0 131169 0 0 706 202 208 98 3 770 800 98 2 834 1 1 834 757 391 5792 770 3920 98 1 5904 5792 770 2400 98 1 8 'Program Name' 5792 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 122 1 0 0 195 0 0 0] 98 0 1280 0 27 8 'programs' 410 960 98 14 0 5664 98 2 8 1140850688 131073 6544 0 1026 2704 0 5 0 0 0 6544 1074 2736 2752 0 706 202 208 98 1 770 800 98 2 834 775 1 834 759 391 6544 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 131 1 0 0 0 0 0 0 254 2 0 0 195 0 0 0] 672 1280 0 27 8 'higherLevelProgramDescription' 0 706 202 208 98 1 770 800 98 2 834 1 61 834 1533 391 5664 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 254 2 0 0 225 0 0 0] 98 3 5792 410 4240 98 12 0 5664 98 2 8 1140850688 1 6960 0 1026 4320 0 517 0 0 0 6960 706 202 208 98 1 770 800 98 2 834 757 1 834 19 391 6960 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 122 1 0 0 0 0 0 0 131 1 0 0 195 0 0 0] 98 0 1280 0 27 6544 1280 0 27 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 469 834 1533 451 4928 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 234 0 0 0 254 2 0 0 203 1 0 0] 98 2 5024 5664 1280 0 27 410 4240 98 12 0 1408 98 2 8 1140850688 1 7376 0 1026 4752 0 517 0 0 0 7376 706 202 208 98 1 770 800 98 2 834 1 919 834 1533 19 7376 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 203 1 0 0 254 2 0 0 212 1 0 0] 98 0 1280 0 27 410 432 98 15 0 1408 98 2 8 1140850688 131073 7616 0 594 31 0 5 0 0 0 7616 498 1 1 410 432 98 15 0 7616 98 2 8 1140850688 131073 7712 0 0 0 5 0 0 0 7712 626 234 240 672 32 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 1 834 1533 61 7712 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 2 0 0 30 0 0 0] 98 1 410 2064 98 16 0 7712 98 2 8 1140850945 262145 7984 0 0 0 5 0 2130 0 16 2162 8 #[237 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 114 101 98 117 99 104 101 116 32 77 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 834 193 193 0 7984 0 8 4294903115 2242 0 0 0 706 202 208 98 2 770 800 98 2 834 1 1 834 1533 61 7984 770 2400 98 1 8 'Projects' 7984 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 254 2 0 0 30 0 0 0] 98 0 1280 0 27 1280 0 27 0 0 0 410 432 98 15 0 7616 98 2 8 1140850688 131073 8352 0 0 0 5 0 0 0 8352 626 234 240 672 32 234 256 98 4 410 2944 98 30 0 8352 98 2 8 1409355853 1025 8480 3010 202 208 672 0 3072 1026 3104 0 5 3122 0 16 98 2 3170 1 3202 8 #addProject 8 'Add Project' 1 1 0 0 0 3170 1 3202 8 #removeProject 8 'Remove Project' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 8480 0 8 4294903981 3362 3392 98 0 3424 3456 0 0 0 0 0 0 202 208 98 1 3506 8 'Project Name' 501 3552 3362 3584 3600 3618 0 0 3650 2 1 3680 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3584 8896 7 513 0 0 0 8480 0 1 0 0 3776 672 0 131169 0 0 706 202 208 98 3 770 800 98 2 834 1 1 834 757 395 8480 770 3920 98 1 8592 8480 770 2400 98 1 8 'Project Name' 8480 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 122 1 0 0 197 0 0 0] 98 0 1280 0 27 8 'projects' 410 960 98 14 0 8352 98 2 8 1140850688 131073 9232 0 1026 2704 0 5 0 0 0 9232 1074 2736 2752 0 706 202 208 98 1 770 800 98 2 834 775 1 834 759 395 9232 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 131 1 0 0 0 0 0 0 254 2 0 0 197 0 0 0] 672 1280 0 27 8 'projectDescription' 0 706 202 208 98 1 770 800 98 2 834 1 61 834 1533 395 8352 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 254 2 0 0 227 0 0 0] 98 3 8480 410 4240 98 12 0 8352 98 2 8 1140850688 1 9648 0 1026 4320 0 517 0 0 0 9648 706 202 208 98 1 770 800 98 2 834 757 1 834 19 395 9648 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 122 1 0 0 0 0 0 0 131 1 0 0 197 0 0 0] 98 0 1280 0 27 9232 1280 0 27 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 937 834 1533 455 7616 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 212 1 0 0 254 2 0 0 183 2 0 0] 98 2 7712 8352 1280 0 27 1280 0 27 7 32 234 256 672 0 706 202 208 98 1 770 800 98 2 834 1 61 834 2061 1391 1296 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 30 0 0 0 6 4 0 0 213 2 0 0] 98 3 410 8 ##(Smalltalk.SlideyInneyOuteyThing) 98 23 0 1296 98 2 8 1409286144 131073 10240 0 1026 8 4278190080 0 517 0 0 0 10240 655878 ##(Smalltalk.CardLayout) 202 208 98 1 721414 ##(Smalltalk.Association) 590662 1 ##(Smalltalk.CardLabel) 8 'Portfolios' 3618 0 0 3650 6 1 8 ##(Smalltalk.SmallInteger) 8 'doIt' 8 'CardLabel text: ''Portfolios'' iconBlock: [PMIPortfolio icon]' 8 #[29 30 34 112 31 161 106 194 105] 10448 10480 8 ##(Smalltalk.PMBOKPortfolio) 8 #icon 8 #text:iconBlock: 10496 11 1 0 0 410 2944 98 30 0 410 8 ##(Smalltalk.SlidingCardTray) 98 22 0 10240 98 2 8 1140850688 131073 10672 0 1026 10336 0 5 0 0 0 10672 10368 234 256 98 2 10640 8 'portfolios' 0 410 8 ##(Smalltalk.TabViewXP) 98 28 0 10240 98 2 8 1140916864 1 10816 3010 202 208 98 1 10464 0 3072 1026 10336 0 1 0 0 0 10816 0 8 4294902741 8 ##(Smalltalk.BasicListAbstract) 3424 3456 0 0 0 0 0 8 #smallIcons 0 0 0 0 0 706 202 208 98 3 770 800 98 2 834 1 1 834 511 1391 10816 770 8 #basicSelectionsByIndex: 98 1 98 1 3 10816 770 8 #tcmSetExtendedStyle:dwExStyle: 98 2 -1 1 10816 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 255 0 0 0 183 2 0 0] 98 0 1280 0 27 0 10240 834 33 33 1049862 ##(Smalltalk.ButtonInteractor) 10672 0 590342 ##(Smalltalk.Rectangle) 834 413 3 834 445 35 1 3202 8 #togglePin 8 'Pin or Unpin the tray' 1 1 0 0 0 706 202 208 98 1 770 800 98 2 834 55 9 834 449 1375 10672 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 27 0 0 0 4 0 0 0 251 0 0 0 179 2 0 0] 98 1 10640 1280 0 27 98 2 8 1409355853 1025 10640 3010 202 208 672 0 3072 1026 3104 0 5 3122 0 16 98 2 3170 1 3202 8 #addPorfolio 8 'Add Portfolio' 1 1 0 0 0 3170 1 3202 8 #removePorfolio 8 'Remove Portfolio' 1 1 0 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 10640 0 8 4294903981 3362 3392 98 0 3424 3456 0 0 0 0 0 0 202 208 98 1 3506 8 'Portfolio Name' 501 3552 3362 3584 3600 3618 0 0 3650 2 1 3680 8 'doIt' 8 '[:a :b | a name <= b name]' 8 #[30 105 226 0 226 32 130 106] 3584 11984 7 513 0 0 0 10640 0 1 0 0 3776 672 0 131169 0 0 706 202 208 98 3 770 800 98 2 834 1 37 834 449 1339 10640 770 3920 98 1 11680 10640 770 2400 98 1 8 'Portfolio Name' 10640 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 18 0 0 0 224 0 0 0 175 2 0 0] 98 0 1280 0 27 10640 234 256 672 0 10816 10672 834 201 201 401 1 31 0 0 706 202 208 98 1 770 800 98 2 834 1 1 834 511 1391 10240 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 255 0 0 0 183 2 0 0] 98 2 10672 10816 1280 0 27 410 4240 98 12 0 1296 98 2 8 1140850688 1 12496 0 1026 4752 0 517 0 0 0 12496 706 202 208 98 1 770 800 98 2 834 511 1 834 19 1391 12496 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 8 1 0 0 183 2 0 0] 98 0 1280 0 27 1408 1280 0 27 234 256 672 0 706 202 208 98 1 770 800 98 2 834 3199 21 834 2061 1451 416 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 63 6 0 0 10 0 0 0 69 10 0 0 223 2 0 0] 98 2 528 1296 1280 0 27)! !
!PMBOKPortfolioBrowserComposite class categoriesFor: #defaultModel!public! !
!PMBOKPortfolioBrowserComposite class categoriesFor: #resource_Default_view!public!resources-views! !

