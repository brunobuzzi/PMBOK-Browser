"Filed out from Dolphin Smalltalk 7"!

PMBOKLanguage subclass: #PMBOKEnglishLanguage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKEnglishLanguage guid: (GUID fromString: '{cc358d74-8f56-45c3-b75b-f64e3e11d090}')!
PMBOKEnglishLanguage comment: ''!
!PMBOKEnglishLanguage categoriesForClass!Kernel-Objects! !
!PMBOKEnglishLanguage methodsFor!

addDefaultDeliverables
	^OrderedCollection new
		add: PMBOKDocumentDefinition acceptedDeliverablesNew;
		add: PMBOKDocumentDefinition activityAttributesNew;
		add: PMBOKDocumentDefinition activityCostEstimatesNew;
		add: PMBOKDocumentDefinition activityDurationEstimatesNew;
		add: PMBOKDocumentDefinition activityListNew;
		add: PMBOKDocumentDefinition activityResourceRequirementsNew;
		add: PMBOKDocumentDefinition analogousEstimatingNew;
		add: PMBOKDocumentDefinition approvedChangeRequestsNew;
		add: PMBOKDocumentDefinition basisOfEstimatesNew;
		add: PMBOKDocumentDefinition budgetForecastsNew;
		add: PMBOKDocumentDefinition businessCaseNew;
		add: PMBOKDocumentDefinition changeLogNew;
		add: PMBOKDocumentDefinition changeRequestsNew;
		add: PMBOKDocumentDefinition changeRequestStatusUpdatesNew;
		add: PMBOKDocumentDefinition closedProcurementsNew;
		add: PMBOKDocumentDefinition communicationsManagementPlanNew;
		add: PMBOKDocumentDefinition costManagementPlanNew;
		add: PMBOKDocumentDefinition costPerformanceBaselineNew;
		add: PMBOKDocumentDefinition deliverablesNew;
		add: PMBOKDocumentDefinition directAndManageProjectExecutionNew;
		add: PMBOKDocumentDefinition enterpriseEnvironmentalFactorsNew;
		add: PMBOKDocumentDefinition expertJudgmentNew;
		add: PMBOKDocumentDefinition finalProductServiceResultTransitionNew;
		add: PMBOKDocumentDefinition humanResourcePlanNew;
		add: PMBOKDocumentDefinition issueLogNew;
		add: PMBOKDocumentDefinition makeOrBuyDecisionsNew;
		add: PMBOKDocumentDefinition milestoneListNew;
		add: PMBOKDocumentDefinition organizationalProcessAssetsNew;
		add: PMBOKDocumentDefinition organizationalProcessAssetsUpdatesNew;
		add: PMBOKDocumentDefinition outputsFromPlanningProcessesNew;
		add: PMBOKDocumentDefinition parametricEstimatingNew;
		add: PMBOKDocumentDefinition performanceReportsNew;
		add: PMBOKDocumentDefinition processImprovementPlanNew;
		add: PMBOKDocumentDefinition procurementContractAwardNew;
		add: PMBOKDocumentDefinition procurementDocumentationNew;
		add: PMBOKDocumentDefinition procurementDocumentsNew;
		add: PMBOKDocumentDefinition procurementManagementPlanNew;
		add: PMBOKDocumentDefinition procurementStatementsOfWorkNew;
		add: PMBOKDocumentDefinition projectCharterNew;
		add: PMBOKDocumentDefinition projectDocumentsNew;
		add: PMBOKDocumentDefinition projectDocumentUpdatesNew;
		add: PMBOKDocumentDefinition projectFundingRequirementsNew;
		add: PMBOKDocumentDefinition projectManagementPlanNew;
		add: PMBOKDocumentDefinition projectManagementPlanUpdatesNew;
		add: PMBOKDocumentDefinition projectScheduleNetworkDiagramsNew;
		add: PMBOKDocumentDefinition projectScheduleNew;
		add: PMBOKDocumentDefinition projectScopeStatementNew;
		add: PMBOKDocumentDefinition projectStaffAssignmentsNew;
		add: PMBOKDocumentDefinition projectStatementOfWorkNew;
		add: PMBOKDocumentDefinition qualifiedSellerListNew;
		add: PMBOKDocumentDefinition qualityChecklistsNew;
		add: PMBOKDocumentDefinition qualityControlMeasurementsNew;
		add: PMBOKDocumentDefinition qualityManagementPlanNew;
		add: PMBOKDocumentDefinition qualityMetricsNew;
		add: PMBOKDocumentDefinition requirementsDocumentationNew;
		add: PMBOKDocumentDefinition requirementsManagementPlanNew;
		add: PMBOKDocumentDefinition requirementsTraceabilityMatrixNew;
		add: PMBOKDocumentDefinition resourceBreakdownStructureNew;
		add: PMBOKDocumentDefinition resourceCalendarsNew;
		add: PMBOKDocumentDefinition resourceLevelingNew;
		add: PMBOKDocumentDefinition riskManagementPlanNew;
		add: PMBOKDocumentDefinition riskRegisterNew;
		add: PMBOKDocumentDefinition riskRegisterUpdatesNew;
		add: PMBOKDocumentDefinition riskRelatedContractDecisionsNew;
		add: PMBOKDocumentDefinition scheduleBaselineNew;
		add: PMBOKDocumentDefinition scheduleDataNew;
		add: PMBOKDocumentDefinition scheduleManagementPlanNew;
		add: PMBOKDocumentDefinition scopeBaselineNew;
		add: PMBOKDocumentDefinition selectedSellersNew;
		add: PMBOKDocumentDefinition sellerProposalsNew;
		add: PMBOKDocumentDefinition sourceSelectionCriteriaNew;
		add: PMBOKDocumentDefinition stakeholderManagementStrategyNew;
		add: PMBOKDocumentDefinition stakeholderRegisterNew;
		add: PMBOKDocumentDefinition teamingAgreementsNew;
		add: PMBOKDocumentDefinition teamPerformanceAssessmentsNew;
		add: PMBOKDocumentDefinition validatedChangesNew;
		add: PMBOKDocumentDefinition validatedDeliverablesNew;
		add: PMBOKDocumentDefinition wbsDictionaryNew;
		add: PMBOKDocumentDefinition wbsNew;
		add: PMBOKDocumentDefinition whatIfScenarioAnalysisNew;
		add: PMBOKDocumentDefinition workPerformanceInformationNew;
		add: PMBOKDocumentDefinition workPerformanceMeasurementsNew;
		yourself!

addDefaultToolsAndTechniques
	^OrderedCollection new
		add: PMBOKToolOrTechnique acquisitionNew;
		add: PMBOKToolOrTechnique additionalQualityPlanningToolsNew;
		add: PMBOKToolOrTechnique adjustingLeadsLagsNew;
		add: PMBOKToolOrTechnique advertisingNew;
		add: PMBOKToolOrTechnique alternativesIdentificationNew;
		add: PMBOKToolOrTechnique alternativesAnalysisNew;
		add: PMBOKToolOrTechnique analogousEstimatingNew;
		add: PMBOKToolOrTechnique applyingLeadsAndLagsNew;
		add: PMBOKToolOrTechnique approvedChangeRequestsReviewNew;
		add: PMBOKToolOrTechnique assumptionsAnalysisNew;
		add: PMBOKToolOrTechnique benchmarkingNew;
		add: PMBOKToolOrTechnique bidderConferencesNew;
		add: PMBOKToolOrTechnique bottomUpEstimatingNew;
		add: PMBOKToolOrTechnique causeEffectDiagramsNew;
		add: PMBOKToolOrTechnique changeControlMeetingsNew;
		add: PMBOKToolOrTechnique checklistAnalysisNew;
		add: PMBOKToolOrTechnique claimsAdministrationNew;
		add: PMBOKToolOrTechnique colocationNew;
		add: PMBOKToolOrTechnique communicationMethodsNew;
		add: PMBOKToolOrTechnique communicationModelsNew;
		add: PMBOKToolOrTechnique communicationRequirementsAnalysisNew;
		add: PMBOKToolOrTechnique communicationTechnologyNew;
		add: PMBOKToolOrTechnique conflictManagementNew;
		add: PMBOKToolOrTechnique contingentResponseStrategiesNew;
		add: PMBOKToolOrTechnique contractChangeControlSystemNew;
		add: PMBOKToolOrTechnique contractTypesNew;
		add: PMBOKToolOrTechnique controlCharts2New;
		add: PMBOKToolOrTechnique controlChartsNew;
		add: PMBOKToolOrTechnique costAggregationNew;
		add: PMBOKToolOrTechnique costBenefitAnalysisNew;
		add: PMBOKToolOrTechnique costOfQualityNew;
		add: PMBOKToolOrTechnique criticalChainMethodNew;
		add: PMBOKToolOrTechnique criticalPathMethodNew;
		add: PMBOKToolOrTechnique decomposition2New;
		add: PMBOKToolOrTechnique decompositionNew;
		add: PMBOKToolOrTechnique dependencyDeterminationNew;
		add: PMBOKToolOrTechnique designOfExperimentsNew;
		add: PMBOKToolOrTechnique diagrammingTechniquesNew;
		add: PMBOKToolOrTechnique documentationReviewsNew;
		add: PMBOKToolOrTechnique earnedValueManagementNew;
		add: PMBOKToolOrTechnique expertJudgmentNew;
		add: PMBOKToolOrTechnique facilitatedWorkshopsNew;
		add: PMBOKToolOrTechnique flowchartingNew;
		add: PMBOKToolOrTechnique focusGroupsNew;
		add: PMBOKToolOrTechnique forecastingMethodsNew;
		add: PMBOKToolOrTechnique forecastingNew;
		add: PMBOKToolOrTechnique fundingLimitReconciliationNew;
		add: PMBOKToolOrTechnique gatheringRepresentationTechniquesNew;
		add: PMBOKToolOrTechnique groundRulesNew;
		add: PMBOKToolOrTechnique groupCreativityTechniquesNew;
		add: PMBOKToolOrTechnique groupDecisionMakingTechniquesNew;
		add: PMBOKToolOrTechnique histogramNew;
		add: PMBOKToolOrTechnique historicalRelationshipsNew;
		add: PMBOKToolOrTechnique independentEstimatesNew;
		add: PMBOKToolOrTechnique informationDistributionToolsNew;
		add: PMBOKToolOrTechnique informationGatheringTechniquesNew;
		add: PMBOKToolOrTechnique inspection2New;
		add: PMBOKToolOrTechnique inspectionNew;
		add: PMBOKToolOrTechnique inspectionsAuditsNew;
		add: PMBOKToolOrTechnique internetSearchNew;
		add: PMBOKToolOrTechnique interpersonalSkills2New;
		add: PMBOKToolOrTechnique interpersonalSkillsNew;
		add: PMBOKToolOrTechnique interviewsNew;
		add: PMBOKToolOrTechnique issueLogNew;
		add: PMBOKToolOrTechnique makeOrBuyAnalysisNew;
		add: PMBOKToolOrTechnique managementSkillsNew;
		add: PMBOKToolOrTechnique negotiatedSettlementsNew;
		add: PMBOKToolOrTechnique negotiationNew;
		add: PMBOKToolOrTechnique networkingNew;
		add: PMBOKToolOrTechnique observationConversationNew;
		add: PMBOKToolOrTechnique observationsNew;
		add: PMBOKToolOrTechnique organizationalProcessAssetsUpdatesNew;
		add: PMBOKToolOrTechnique organizationalTheoryNew;
		add: PMBOKToolOrTechnique organizationChartsPositionDescriptionsNew;
		add: PMBOKToolOrTechnique parametricEstimatingNew;
		add: PMBOKToolOrTechnique paretoChartNew;
		add: PMBOKToolOrTechnique paymentSystemsNew;
		add: PMBOKToolOrTechnique performanceReportingNew;
		add: PMBOKToolOrTechnique performanceReviews2New;
		add: PMBOKToolOrTechnique performanceReviewsNew;
		add: PMBOKToolOrTechnique planningMeetingsAnalysisNew;
		add: PMBOKToolOrTechnique planQualityPerformQualityControlToolsTechniquesNew;
		add: PMBOKToolOrTechnique preAssignmentNew;
		add: PMBOKToolOrTechnique precedenceDiagrammingMethodNew;
		add: PMBOKToolOrTechnique probabilityImpactMatrixNew;
		add: PMBOKToolOrTechnique processAnalysisNew;
		add: PMBOKToolOrTechnique procurementAuditsNew;
		add: PMBOKToolOrTechnique procurementNegotiationsNew;
		add: PMBOKToolOrTechnique procurementPerformanceReviewsNew;
		add: PMBOKToolOrTechnique productAnalysisNew;
		add: PMBOKToolOrTechnique projectManagementEstimatingSoftwareNew;
		add: PMBOKToolOrTechnique projectManagementInformationSystemNew;
		add: PMBOKToolOrTechnique projectManagementSoftwareNew;
		add: PMBOKToolOrTechnique projectPerformanceAppraisalsNew;
		add: PMBOKToolOrTechnique proposalEvaluationTechniquesNew;
		add: PMBOKToolOrTechnique prototypesNew;
		add: PMBOKToolOrTechnique publishedEstimatingDataNew;
		add: PMBOKToolOrTechnique qualityAuditsNew;
		add: PMBOKToolOrTechnique qualityManagementMethodologiesNew;
		add: PMBOKToolOrTechnique quantitativeRiskAnalysisModelingTechniquesNew;
		add: PMBOKToolOrTechnique questionnairesAndSurveysNew;
		add: PMBOKToolOrTechnique recognitionRewardsNew;
		add: PMBOKToolOrTechnique recordsManagementSystemNew;
		add: PMBOKToolOrTechnique reportingSystemsNew;
		add: PMBOKToolOrTechnique reserveAnalysisNew;
		add: PMBOKToolOrTechnique riskAuditsNew;
		add: PMBOKToolOrTechnique riskCategorizationNew;
		add: PMBOKToolOrTechnique riskDataQualityAssessmentNew;
		add: PMBOKToolOrTechnique riskProbabilityImpactAssessmentNew;
		add: PMBOKToolOrTechnique riskReassessmentNew;
		add: PMBOKToolOrTechnique riskUrgencyAssessmentNew;
		add: PMBOKToolOrTechnique rollingWavePlanningNew;
		add: PMBOKToolOrTechnique runChartNew;
		add: PMBOKToolOrTechnique scatterDiagramNew;
		add: PMBOKToolOrTechnique scheduleCompressionNew;
		add: PMBOKToolOrTechnique scheduleNetworkAnalysisNew;
		add: PMBOKToolOrTechnique scheduleNetworkTemplatesNew;
		add: PMBOKToolOrTechnique schedulingToolNew;
		add: PMBOKToolOrTechnique stakeholderAnalysisNew;
		add: PMBOKToolOrTechnique statisticalSamplingNew;
		add: PMBOKToolOrTechnique statusMeetingsNew;
		add: PMBOKToolOrTechnique strategiesForNegativeRisksThreatsNew;
		add: PMBOKToolOrTechnique strategiesForPositiveRisksOpportunitiesNew;
		add: PMBOKToolOrTechnique swtoAnalysisNew;
		add: PMBOKToolOrTechnique teamBuildingActivitiesNew;
		add: PMBOKToolOrTechnique technicalPerformanceMeasurementNew;
		add: PMBOKToolOrTechnique templatesNew;
		add: PMBOKToolOrTechnique threePointEstimatesNew;
		add: PMBOKToolOrTechnique toCompletePerformanceIndexNew;
		add: PMBOKToolOrTechnique trainingNew;
		add: PMBOKToolOrTechnique varianceAnalysis2New;
		add: PMBOKToolOrTechnique varianceAnalysisNew;
		add: PMBOKToolOrTechnique varianceTrendAnalysisNew;
		add: PMBOKToolOrTechnique vendorBidAnalysisNew;
		add: PMBOKToolOrTechnique virtualTeamsNew;
		yourself!

areaNameFor: aPMIKnowledgeArea

	^aPMIKnowledgeArea englishAreaName.

!

defaultPMIModel
	^PMBOKProjectDefinition englishDefinition!

groupNameFor: aPMIManagementProcessGroup

	^aPMIManagementProcessGroup englishGroupName!

isEnglish

	^true!

printApprovedChangeRequestType: aPMIArtifactDefinition

	^'Approved Change Request'!

printChangeRequestStatusUpdateType: aPMIArtifactDefinition

	^'Change Request Status Update'!

printChangeRequestType: aPMIArtifactDefinition

	^'Change Request'!

printDeliverableArtifactType: aPMIArtifactDefinition

	^'Deliverables List'!

printDocumentUpdateType: aPMIArtifactDefinition

	^'Document Update'!

printProductServiceType: aPMIArtifactDefinition

	^'Product/Service/Result'!

printValidatedChangeType: aPMIArtifactDefinition

	^'Validated Change'!

setAsDefault

	super setAsDefault.

	"PMIProcessesBuilder default: PMIEnglishProcessesBuilderVersion4 new"! !
!PMBOKEnglishLanguage categoriesFor: #addDefaultDeliverables!public! !
!PMBOKEnglishLanguage categoriesFor: #addDefaultToolsAndTechniques!public! !
!PMBOKEnglishLanguage categoriesFor: #areaNameFor:!public! !
!PMBOKEnglishLanguage categoriesFor: #defaultPMIModel!public! !
!PMBOKEnglishLanguage categoriesFor: #groupNameFor:!public! !
!PMBOKEnglishLanguage categoriesFor: #isEnglish!public! !
!PMBOKEnglishLanguage categoriesFor: #printApprovedChangeRequestType:!public! !
!PMBOKEnglishLanguage categoriesFor: #printChangeRequestStatusUpdateType:!public! !
!PMBOKEnglishLanguage categoriesFor: #printChangeRequestType:!public! !
!PMBOKEnglishLanguage categoriesFor: #printDeliverableArtifactType:!public! !
!PMBOKEnglishLanguage categoriesFor: #printDocumentUpdateType:!public! !
!PMBOKEnglishLanguage categoriesFor: #printProductServiceType:!public! !
!PMBOKEnglishLanguage categoriesFor: #printValidatedChangeType:!public! !
!PMBOKEnglishLanguage categoriesFor: #setAsDefault!public! !

