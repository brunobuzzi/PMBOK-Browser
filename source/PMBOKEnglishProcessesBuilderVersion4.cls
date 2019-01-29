"Filed out from Dolphin Smalltalk 7"!

PMBOKProcessesBuilder subclass: #PMBOKEnglishProcessesBuilderVersion4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKEnglishProcessesBuilderVersion4 guid: (GUID fromString: '{ea2458b2-0670-4c8f-bfe5-b4449e4369a3}')!
PMBOKEnglishProcessesBuilderVersion4 comment: ''!
!PMBOKEnglishProcessesBuilderVersion4 categoriesForClass!Kernel-Objects! !
!PMBOKEnglishProcessesBuilderVersion4 methodsFor!

communicationsProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Identify Stakeholders';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Plan Communications';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Distribute Information';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Manage Stakeholder Expectations';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Report Performance';
					yourself);
		yourself!

costProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Estimate Costs';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Determine Budget';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Control Costs';
					yourself);
		yourself!

createGroups
	^OrderedCollection new
		add: PMBOKInitiatingGroup new;
		add: PMBOKPlanningGroup new;
		add: PMBOKExecutingGroup new;
		add: PMBOKMonitoringControllingGroup new;
		add: PMBOKClosingGroup new;
		yourself!

createKnowledgeAreas
	^OrderedCollection new
		add: (PMBOKIntegrationManagement new
					addAll: self integrationProcesses;
					yourself);
		add: (PMBOKScopeManagement new
					addAll: self scopeProcesses;
					yourself);
		add: (PMBOKTimeManagement new
					addAll: self timeProcesses;
					yourself);
		add: (PMBOKCostManagement new
					addAll: self costProcesses;
					yourself);
		add: (PMBOKQualityManagement new
					addAll: self qualityProcesses;
					yourself);
		add: (PMBOKHumanResourceManagement new
					addAll: self humanResourcesProcesses;
					yourself);
		add: (PMBOKCommunicationManagement new
					addAll: self communicationsProcesses;
					yourself);
		add: (PMBOKRiskManagement new
					addAll: self risksProcesses;
					yourself);
		add: (PMBOKProcurementManagement new
					addAll: self procurementsProcesses;
					yourself);
		yourself!

humanResourcesProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Develop Human Resource Plan';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Acquire Project Team';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Develop Project Team';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Manage Project Team';
					yourself);
		yourself!

integrationProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Develop Project Charter';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Develop Project Management Plan';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Direct and Manage Project Execution';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Monitor and Control Project Work';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Perform Integrated Change Control';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Close Project or Phase';
					yourself);
		yourself!

procurementsProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Plan Procurements';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Conduct Procurements';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Administer Procurements';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Close Procurements';
					yourself);
		yourself!

qualityProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Plan Quality ';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Perform Quality Assurance';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Perform Quality Control ';
					yourself);
		yourself!

risksProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Plan Risk Management';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Identify Risks ';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Perform Qualitative Risk Analysis';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Perform Quantitative Risk Analysis';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Plan Risk Responses';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Monitor and Control Risks';
					yourself);
		yourself!

scopeProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Collect Requirements';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Define Scope';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Create WBS';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Verify Scope';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Control Scopee';
					yourself);
		yourself!

timeProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Define Activities';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Sequence Activities';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Estimate Activity Resources';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Estimate Activity Durations';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Develop Schedule';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Control Schedule';
					yourself);
		yourself! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #communicationsProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #costProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #createGroups!knowledge area!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #createKnowledgeAreas!knowledge area!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #humanResourcesProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #integrationProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #procurementsProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #qualityProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #risksProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #scopeProcesses!processes!public! !
!PMBOKEnglishProcessesBuilderVersion4 categoriesFor: #timeProcesses!processes!public! !

