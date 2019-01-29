"Filed out from Dolphin Smalltalk 7"!

PMIObjectExecution subclass: #PMIProject
	instanceVariableNames: 'name description processes projectParent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIProject guid: (GUID fromString: '{f8adcdca-bea8-48a5-b6cc-922a22cd86c6}')!
PMIProject comment: ''!
!PMIProject categoriesForClass!Kernel-Objects! !
!PMIProject methodsFor!

addProcess: aPMIProcess

	^(processes at: aPMIProcess definitionName ifAbsent: [processes at: aPMIProcess definitionName put: OrderedCollection new])
		add: aPMIProcess!

addToCache

	^pmiDefinition cacheOfProjects add: self!

createNewProcessesFromDefinition: anOrderedCollection

	^anOrderedCollection collect: [:each | self createProcessFromDefinition: each]!

createProcessFromDefinition: aPMIProcessDefinition
	| newProcess |

	newProcess := PMIProcess definition: aPMIProcessDefinition.
	newProcess parentProject: self.
	newProcess name: aPMIProcessDefinition name;
		description: aPMIProcessDefinition description.
	newProcess createInputAndOutput.
	^self addProcess: newProcess.!

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
	developProjectCharter := PMIProcess definition: processDefintion.
	developProjectCharter parentProject: self.
	developProjectCharter name: processDefintion name;
		description: processDefintion description.

	developProjectCharter createInputAndOutput.

	^self addProcess: developProjectCharter.

	!

topParent

	^projectParent! !
!PMIProject categoriesFor: #addProcess:!public! !
!PMIProject categoriesFor: #addToCache!public! !
!PMIProject categoriesFor: #createNewProcessesFromDefinition:!public! !
!PMIProject categoriesFor: #createProcessFromDefinition:!public! !
!PMIProject categoriesFor: #deleteAllFiles!public! !
!PMIProject categoriesFor: #description!accessing!private! !
!PMIProject categoriesFor: #description:!accessing!private! !
!PMIProject categoriesFor: #getDeliverablesCurrentVersion!public! !
!PMIProject categoriesFor: #getLastestProcesses!public! !
!PMIProject categoriesFor: #getOutputDeliverable:ifNone:!public! !
!PMIProject categoriesFor: #getParentList!public! !
!PMIProject categoriesFor: #getParentNameList!public! !
!PMIProject categoriesFor: #getPathString!public! !
!PMIProject categoriesFor: #getProcessAndInputWithDeliverable:ifNone:!public! !
!PMIProject categoriesFor: #getProcessAndOutputWithDeliverable:ifNone:!public! !
!PMIProject categoriesFor: #getProcessWithOutputDeliverable:ifNone:!public! !
!PMIProject categoriesFor: #hasStarted!public! !
!PMIProject categoriesFor: #includesProcessName:!public! !
!PMIProject categoriesFor: #initialize!public! !
!PMIProject categoriesFor: #name!accessing!private! !
!PMIProject categoriesFor: #name:!accessing!private! !
!PMIProject categoriesFor: #pathName!public! !
!PMIProject categoriesFor: #processes!accessing!private! !
!PMIProject categoriesFor: #processes:!accessing!private! !
!PMIProject categoriesFor: #projectParent!accessing!private! !
!PMIProject categoriesFor: #projectParent:!accessing!private! !
!PMIProject categoriesFor: #removeProcess:!public! !
!PMIProject categoriesFor: #restartProject!public! !
!PMIProject categoriesFor: #startProject!public! !
!PMIProject categoriesFor: #topParent!public! !

!PMIProject class methodsFor!

icon

	^PMIProjectDefinition icon! !
!PMIProject class categoriesFor: #icon!public! !

