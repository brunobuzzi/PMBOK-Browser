"Filed out from Dolphin Smalltalk 7"!

PMBOKObjectExecution subclass: #PMBOKProject
	instanceVariableNames: 'name description processes projectParent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKProject guid: (GUID fromString: '{f8adcdca-bea8-48a5-b6cc-922a22cd86c6}')!
PMBOKProject comment: ''!
!PMBOKProject categoriesForClass!Kernel-Objects! !
!PMBOKProject methodsFor!

addProcess: aPMIProcess

	^(processes at: aPMIProcess definitionName ifAbsent: [processes at: aPMIProcess definitionName put: OrderedCollection new])
		add: aPMIProcess!

addToCache

	^pmiDefinition cacheOfProjects add: self!

createNewProcessesFromDefinition: anOrderedCollection

	^anOrderedCollection collect: [:each | self createProcessFromDefinition: each]!

createProcessFromDefinition: aPMIProcessDefinition
	| newProcess |
	newProcess := PMBOKProcess definition: aPMIProcessDefinition.
	newProcess parentProject: self.
	newProcess
		name: aPMIProcessDefinition name;
		description: aPMIProcessDefinition description.
	newProcess createInputAndOutput.
	^self addProcess: newProcess!

deleteAllFiles

	File deleteDirectory: (self defaultPath, self getPathString)!

description
	^description!

description: anObject
	description := anObject!

getDeliverablesCurrentVersion
	| versions allProcesses |

	versions := OrderedCollection new.
	allProcesses := self getLastestProcesses.
	allProcesses do: [:each |
		each output do:[:eOut | eOut deliverables 
			do: [:eDeli | eDeli notEmpty  ifTrue: [versions add: eDeli last]]].].
	(allProcesses detect: [:each | each printNumber = '4.1'] ifNone: [^versions]) input do:[:eachIn | eachIn deliverables do: [:eDeli | versions add: eDeli last]]. "The Input of 4.1 is the only input that is NOT created by a Process"
	^versions!

getLastestProcesses

	^((processes select: [:each | each notEmpty]) collect: [:each | each last]) asOrderedCollection!

getOutputDeliverable: aPMIDocument  ifNone: aBlock
	| deliverableOutput |

	self getLastestProcesses 
		do: [:eachProc | eachProc output do: [:eachOut | 
			(eachOut hasDeliverablesFor: aPMIDocument name) 
			ifTrue: [((eachOut getDeliverablesFor: aPMIDocument name) includes: aPMIDocument) 
				ifTrue: [deliverableOutput := eachOut] ] ] ].

	^deliverableOutput ifNotNil: [:value | value] ifNil: [aBlock value]
!

getParentList
	| currentParent chain |

	projectParent isTopPortfolio ifTrue: [^OrderedCollection with: self].
	currentParent := self topParent.
	chain := OrderedCollection with: currentParent.

	[currentParent isTopPortfolio] whileFalse: [
		chain addFirst: currentParent.
		currentParent  := currentParent topParent].

	^chain 
		addLast: self; 
		copyWithoutDuplicates;
		yourself
	 !

getParentNameList

	^self getParentList collect: [:each | each name]!

getPathString
	| path |

	path := ''.

	self getParentList do: [:each | path := path, each pathName, '\', each name , '\'].

	^path!

getProcessAndInputWithDeliverable: aPMIDocument  ifNone: aBlock

	self getLastestProcesses 
		do: [:eachProc | eachProc input do: [:eachIn | 
			(eachIn hasDeliverablesFor: aPMIDocument name) 
			ifTrue: [((eachIn getDeliverablesFor: aPMIDocument name) includes: aPMIDocument) 
				ifTrue: [^Array with: eachProc with: eachIn] ] ] ].

	^aBlock value!

getProcessAndOutputWithDeliverable: aPMIDocument  ifNone: aBlock

	self getLastestProcesses 
		do: [:eachProc | eachProc output do: [:eachOut | 
			(eachOut hasDeliverablesFor: aPMIDocument name) 
			ifTrue: [((eachOut getDeliverablesFor: aPMIDocument name) includes: aPMIDocument) 
				ifTrue: [^Array with: eachProc with: eachOut] ] ] ].

	^aBlock value!

getProcessWithOutputDeliverable: aPMIDocument  ifNone: aBlock
	| deliverableOutput |

	self getLastestProcesses 
		do: [:eachProc | eachProc output do: [:eachOut | 
			(eachOut hasDeliverablesFor: aPMIDocument name) 
			ifTrue: [((eachOut getDeliverablesFor: aPMIDocument name) includes: aPMIDocument) 
				ifTrue: [deliverableOutput := eachOut] ] ] ].

	^deliverableOutput ifNotNil: [:value | value] ifNil: [aBlock value]
!

hasStarted

	^processes notEmpty!

includesProcessName: aString

	^processes includesKey: aString!

initialize

	super initialize.

	name := ''.
	description := ''.
	processes := LookupTable new.!

name
	^name!

name: anObject
	name := anObject!

pathName

	^'Project'!

processes
	^processes!

processes: anObject
	processes := anObject!

projectParent
	^projectParent!

projectParent: anObject
	projectParent := anObject!

removeProcess: aPMIProcess

	^(processes at: aPMIProcess definitionName ifAbsent: [^aPMIProcess])
		remove: aPMIProcess!

restartProject

	self deleteAllFiles.
	processes := LookupTable new.
	self startProject.!

startProject
	| developProjectCharter processDefintion |
	processDefintion := pmiDefinition getProcessNumber: 4.1.
	developProjectCharter := PMBOKProcess definition: processDefintion.
	developProjectCharter parentProject: self.
	developProjectCharter
		name: processDefintion name;
		description: processDefintion description.
	developProjectCharter createInputAndOutput.
	^self addProcess: developProjectCharter!

topParent

	^projectParent! !
!PMBOKProject categoriesFor: #addProcess:!public! !
!PMBOKProject categoriesFor: #addToCache!public! !
!PMBOKProject categoriesFor: #createNewProcessesFromDefinition:!public! !
!PMBOKProject categoriesFor: #createProcessFromDefinition:!public! !
!PMBOKProject categoriesFor: #deleteAllFiles!public! !
!PMBOKProject categoriesFor: #description!accessing!private! !
!PMBOKProject categoriesFor: #description:!accessing!private! !
!PMBOKProject categoriesFor: #getDeliverablesCurrentVersion!public! !
!PMBOKProject categoriesFor: #getLastestProcesses!public! !
!PMBOKProject categoriesFor: #getOutputDeliverable:ifNone:!public! !
!PMBOKProject categoriesFor: #getParentList!public! !
!PMBOKProject categoriesFor: #getParentNameList!public! !
!PMBOKProject categoriesFor: #getPathString!public! !
!PMBOKProject categoriesFor: #getProcessAndInputWithDeliverable:ifNone:!public! !
!PMBOKProject categoriesFor: #getProcessAndOutputWithDeliverable:ifNone:!public! !
!PMBOKProject categoriesFor: #getProcessWithOutputDeliverable:ifNone:!public! !
!PMBOKProject categoriesFor: #hasStarted!public! !
!PMBOKProject categoriesFor: #includesProcessName:!public! !
!PMBOKProject categoriesFor: #initialize!public! !
!PMBOKProject categoriesFor: #name!accessing!private! !
!PMBOKProject categoriesFor: #name:!accessing!private! !
!PMBOKProject categoriesFor: #pathName!public! !
!PMBOKProject categoriesFor: #processes!accessing!private! !
!PMBOKProject categoriesFor: #processes:!accessing!private! !
!PMBOKProject categoriesFor: #projectParent!accessing!private! !
!PMBOKProject categoriesFor: #projectParent:!accessing!private! !
!PMBOKProject categoriesFor: #removeProcess:!public! !
!PMBOKProject categoriesFor: #restartProject!public! !
!PMBOKProject categoriesFor: #startProject!public! !
!PMBOKProject categoriesFor: #topParent!public! !

!PMBOKProject class methodsFor!

icon
	^PMBOKProjectDefinition icon! !
!PMBOKProject class categoriesFor: #icon!public! !

