"Filed out from Dolphin Smalltalk 7"!

PMIProcessesBuilder subclass: #PMIEnglishProcessesBuilderVersion4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIEnglishProcessesBuilderVersion4 guid: (GUID fromString: '{ea2458b2-0670-4c8f-bfe5-b4449e4369a3}')!
PMIEnglishProcessesBuilderVersion4 comment: ''!
!PMIEnglishProcessesBuilderVersion4 categoriesForClass!Kernel-Objects! !
!PMIEnglishProcessesBuilderVersion4 methodsFor!

communicationsProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Identify Stakeholders';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Plan Communications';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Distribute Information';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Manage Stakeholder Expectations';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Report Performance';
					yourself);
		yourself!

costProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Estimate Costs';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Determine Budget';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Control Costs';
					yourself);
		yourself!

createGroups

	^OrderedCollection new
		add: (PMIInitiatingGroup new);
		add: (PMIPlanningGroup new);
		add: (PMIExecutingGroup new);
		add: (PMIMonitoringControllingGroup new);
		add: (PMIClosingGroup new);
		yourself.
!

createKnowledgeAreas

	^OrderedCollection new
		add: (PMIIntegrationManagement new addAll: self integrationProcesses; yourself);
		add: (PMIScopeManagement new addAll: self scopeProcesses; yourself);
		add: (PMITimeManagement new addAll: self timeProcesses; yourself);
		add: (PMICostManagement new addAll: self costProcesses; yourself);
		add: (PMIQualityManagement new addAll: self qualityProcesses; yourself);
		add: (PMIHumanResourceManagement new addAll: self humanResourcesProcesses; yourself);
		add: (PMICommunicationManagement new addAll: self communicationsProcesses; yourself);
		add: (PMIRiskManagement new addAll: self risksProcesses; yourself);
		add: (PMIProcurementManagement new addAll: self procurementsProcesses; yourself);
		yourself.
!

humanResourcesProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Develop Human Resource Plan';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Acquire Project Team';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Develop Project Team';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Manage Project Team';
					yourself);
		yourself!

integrationProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Develop Project Charter';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Develop Project Management Plan';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Direct and Manage Project Execution';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Monitor and Control Project Work';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Perform Integrated Change Control';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Close Project or Phase';
					yourself);
		yourself!

procurementsProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Plan Procurements';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Conduct Procurements';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Administer Procurements';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Close Procurements';
					yourself);
		yourself!

qualityProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Plan Quality ';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Perform Quality Assurance';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Perform Quality Control ';
					yourself);
		yourself!

risksProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Plan Risk Management';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Identify Risks ';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Perform Qualitative Risk Analysis';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Perform Quantitative Risk Analysis';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Plan Risk Responses';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Monitor and Control Risks';
					yourself);
		yourself!

scopeProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Collect Requirements';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Define Scope';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Create WBS';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Verify Scope';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Control Scopee';
					yourself);
		yourself!

timeProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Define Activities';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Sequence Activities';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Estimate Activity Resources';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Estimate Activity Durations';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Develop Schedule';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Control Schedule';
					yourself);
		yourself! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #communicationsProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #costProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #createGroups!knowledge area!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #createKnowledgeAreas!knowledge area!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #humanResourcesProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #integrationProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #procurementsProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #qualityProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #risksProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #scopeProcesses!processes!public! !
!PMIEnglishProcessesBuilderVersion4 categoriesFor: #timeProcesses!processes!public! !

