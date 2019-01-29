"Filed out from Dolphin Smalltalk 7"!

PMILanguage subclass: #PMIEnglishLanguage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIEnglishLanguage guid: (GUID fromString: '{cc358d74-8f56-45c3-b75b-f64e3e11d090}')!
PMIEnglishLanguage comment: ''!
!PMIEnglishLanguage categoriesForClass!Kernel-Objects! !
!PMIEnglishLanguage methodsFor!

addDefaultDeliverables

	^(OrderedCollection new)
		add: PMIDocumentDefinition acceptedDeliverablesNew;
		add: PMIDocumentDefinition activityAttributesNew;
		add: PMIDocumentDefinition activityCostEstimatesNew;
		add: PMIDocumentDefinition activityDurationEstimatesNew;
		add: PMIDocumentDefinition activityListNew;
		add: PMIDocumentDefinition activityResourceRequirementsNew;
		add: PMIDocumentDefinition analogousEstimatingNew;
		add: PMIDocumentDefinition approvedChangeRequestsNew;
		add: PMIDocumentDefinition basisOfEstimatesNew;
		add: PMIDocumentDefinition budgetForecastsNew;
		add: PMIDocumentDefinition businessCaseNew;
		add: PMIDocumentDefinition changeLogNew;
		add: PMIDocumentDefinition changeRequestsNew;
		add: PMIDocumentDefinition changeRequestStatusUpdatesNew;
		add: PMIDocumentDefinition closedProcurementsNew;
		add: PMIDocumentDefinition communicationsManagementPlanNew;
		add: PMIDocumentDefinition costManagementPlanNew;
		add: PMIDocumentDefinition costPerformanceBaselineNew;
		add: PMIDocumentDefinition deliverablesNew;
		add: PMIDocumentDefinition directAndManageProjectExecutionNew;
		add: PMIDocumentDefinition enterpriseEnvironmentalFactorsNew;
		add: PMIDocumentDefinition expertJudgmentNew;
		add: PMIDocumentDefinition finalProductServiceResultTransitionNew;
		add: PMIDocumentDefinition humanResourcePlanNew;
		add: PMIDocumentDefinition issueLogNew;
		add: PMIDocumentDefinition makeOrBuyDecisionsNew;
		add: PMIDocumentDefinition milestoneListNew;
		add: PMIDocumentDefinition organizationalProcessAssetsNew;
		add: PMIDocumentDefinition organizationalProcessAssetsUpdatesNew;
		add: PMIDocumentDefinition outputsFromPlanningProcessesNew;
		add: PMIDocumentDefinition parametricEstimatingNew;
		add: PMIDocumentDefinition performanceReportsNew;
		add: PMIDocumentDefinition processImprovementPlanNew;
		add: PMIDocumentDefinition procurementContractAwardNew;
		add: PMIDocumentDefinition procurementDocumentationNew;
		add: PMIDocumentDefinition procurementDocumentsNew;
		add: PMIDocumentDefinition procurementManagementPlanNew;
		add: PMIDocumentDefinition procurementStatementsOfWorkNew;
		add: PMIDocumentDefinition projectCharterNew;
		add: PMIDocumentDefinition projectDocumentsNew;
		add: PMIDocumentDefinition projectDocumentUpdatesNew;
		add: PMIDocumentDefinition projectFundingRequirementsNew;
		add: PMIDocumentDefinition projectManagementPlanNew;
		add: PMIDocumentDefinition projectManagementPlanUpdatesNew;
		add: PMIDocumentDefinition projectScheduleNetworkDiagramsNew;
		add: PMIDocumentDefinition projectScheduleNew;
		add: PMIDocumentDefinition projectScopeStatementNew;
		add: PMIDocumentDefinition projectStaffAssignmentsNew;
		add: PMIDocumentDefinition projectStatementOfWorkNew;
		add: PMIDocumentDefinition qualifiedSellerListNew;
		add: PMIDocumentDefinition qualityChecklistsNew;
		add: PMIDocumentDefinition qualityControlMeasurementsNew;
		add: PMIDocumentDefinition qualityManagementPlanNew;
		add: PMIDocumentDefinition qualityMetricsNew;
		add: PMIDocumentDefinition requirementsDocumentationNew;
		add: PMIDocumentDefinition requirementsManagementPlanNew;
		add: PMIDocumentDefinition requirementsTraceabilityMatrixNew;
		add: PMIDocumentDefinition resourceBreakdownStructureNew;
		add: PMIDocumentDefinition resourceCalendarsNew;
		add: PMIDocumentDefinition resourceLevelingNew;
		add: PMIDocumentDefinition riskManagementPlanNew;
		add: PMIDocumentDefinition riskRegisterNew;
		add: PMIDocumentDefinition riskRegisterUpdatesNew;
		add: PMIDocumentDefinition riskRelatedContractDecisionsNew;
		add: PMIDocumentDefinition scheduleBaselineNew;
		add: PMIDocumentDefinition scheduleDataNew;
		add: PMIDocumentDefinition scheduleManagementPlanNew;
		add: PMIDocumentDefinition scopeBaselineNew;
		add: PMIDocumentDefinition selectedSellersNew;
		add: PMIDocumentDefinition sellerProposalsNew;
		add: PMIDocumentDefinition sourceSelectionCriteriaNew;
		add: PMIDocumentDefinition stakeholderManagementStrategyNew;
		add: PMIDocumentDefinition stakeholderRegisterNew;
		add: PMIDocumentDefinition teamingAgreementsNew;
		add: PMIDocumentDefinition teamPerformanceAssessmentsNew;
		add: PMIDocumentDefinition validatedChangesNew;
		add: PMIDocumentDefinition validatedDeliverablesNew;
		add: PMIDocumentDefinition wbsDictionaryNew;
		add: PMIDocumentDefinition wbsNew;
		add: PMIDocumentDefinition whatIfScenarioAnalysisNew;
		add: PMIDocumentDefinition workPerformanceInformationNew;
		add: PMIDocumentDefinition workPerformanceMeasurementsNew;
		yourself!

addDefaultToolsAndTechniques

	^OrderedCollection new
		add: PMIToolOrTechnique acquisitionNew;
		add: PMIToolOrTechnique additionalQualityPlanningToolsNew;
		add: PMIToolOrTechnique adjustingLeadsLagsNew;
		add: PMIToolOrTechnique advertisingNew;
		add: PMIToolOrTechnique alternativesIdentificationNew;
		add: PMIToolOrTechnique alternativesAnalysisNew;
		add: PMIToolOrTechnique analogousEstimatingNew;
		add: PMIToolOrTechnique applyingLeadsAndLagsNew;
		add: PMIToolOrTechnique approvedChangeRequestsReviewNew;
		add: PMIToolOrTechnique assumptionsAnalysisNew;
		add: PMIToolOrTechnique benchmarkingNew;
		add: PMIToolOrTechnique bidderConferencesNew;
		add: PMIToolOrTechnique bottomUpEstimatingNew;
		add: PMIToolOrTechnique causeEffectDiagramsNew;
		add: PMIToolOrTechnique changeControlMeetingsNew;
		add: PMIToolOrTechnique checklistAnalysisNew;
		add: PMIToolOrTechnique claimsAdministrationNew;
		add: PMIToolOrTechnique colocationNew;
		add: PMIToolOrTechnique communicationMethodsNew;
		add: PMIToolOrTechnique communicationModelsNew;
		add: PMIToolOrTechnique communicationRequirementsAnalysisNew;
		add: PMIToolOrTechnique communicationTechnologyNew;
		add: PMIToolOrTechnique conflictManagementNew;
		add: PMIToolOrTechnique contingentResponseStrategiesNew;
		add: PMIToolOrTechnique contractChangeControlSystemNew;
		add: PMIToolOrTechnique contractTypesNew;
		add: PMIToolOrTechnique controlCharts2New;
		add: PMIToolOrTechnique controlChartsNew;
		add: PMIToolOrTechnique costAggregationNew;
		add: PMIToolOrTechnique costBenefitAnalysisNew;
		add: PMIToolOrTechnique costOfQualityNew;
		add: PMIToolOrTechnique criticalChainMethodNew;
		add: PMIToolOrTechnique criticalPathMethodNew;
		add: PMIToolOrTechnique decomposition2New;
		add: PMIToolOrTechnique decompositionNew;
		add: PMIToolOrTechnique dependencyDeterminationNew;
		add: PMIToolOrTechnique designOfExperimentsNew;
		add: PMIToolOrTechnique diagrammingTechniquesNew;
		add: PMIToolOrTechnique documentationReviewsNew;
		add: PMIToolOrTechnique earnedValueManagementNew;
		add: PMIToolOrTechnique expertJudgmentNew;
		add: PMIToolOrTechnique facilitatedWorkshopsNew;
		add: PMIToolOrTechnique flowchartingNew;
		add: PMIToolOrTechnique focusGroupsNew;
		add: PMIToolOrTechnique forecastingMethodsNew;
		add: PMIToolOrTechnique forecastingNew;
		add: PMIToolOrTechnique fundingLimitReconciliationNew;
		add: PMIToolOrTechnique gatheringRepresentationTechniquesNew;
		add: PMIToolOrTechnique groundRulesNew;
		add: PMIToolOrTechnique groupCreativityTechniquesNew;
		add: PMIToolOrTechnique groupDecisionMakingTechniquesNew;
		add: PMIToolOrTechnique histogramNew;
		add: PMIToolOrTechnique historicalRelationshipsNew;
		add: PMIToolOrTechnique independentEstimatesNew;
		add: PMIToolOrTechnique informationDistributionToolsNew;
		add: PMIToolOrTechnique informationGatheringTechniquesNew;
		add: PMIToolOrTechnique inspection2New;
		add: PMIToolOrTechnique inspectionNew;
		add: PMIToolOrTechnique inspectionsAuditsNew;
		add: PMIToolOrTechnique internetSearchNew;
		add: PMIToolOrTechnique interpersonalSkills2New;
		add: PMIToolOrTechnique interpersonalSkillsNew;
		add: PMIToolOrTechnique interviewsNew;
		add: PMIToolOrTechnique issueLogNew;
		add: PMIToolOrTechnique makeOrBuyAnalysisNew;
		add: PMIToolOrTechnique managementSkillsNew;
		add: PMIToolOrTechnique negotiatedSettlementsNew;
		add: PMIToolOrTechnique negotiationNew;
		add: PMIToolOrTechnique networkingNew;
		add: PMIToolOrTechnique observationConversationNew;
		add: PMIToolOrTechnique observationsNew;
		add: PMIToolOrTechnique organizationalProcessAssetsUpdatesNew;
		add: PMIToolOrTechnique organizationalTheoryNew;
		add: PMIToolOrTechnique organizationChartsPositionDescriptionsNew;
		add: PMIToolOrTechnique parametricEstimatingNew;
		add: PMIToolOrTechnique paretoChartNew;
		add: PMIToolOrTechnique paymentSystemsNew;
		add: PMIToolOrTechnique performanceReportingNew;
		add: PMIToolOrTechnique performanceReviews2New;
		add: PMIToolOrTechnique performanceReviewsNew;
		add: PMIToolOrTechnique planningMeetingsAnalysisNew;
		add: PMIToolOrTechnique planQualityPerformQualityControlToolsTechniquesNew;
		add: PMIToolOrTechnique preAssignmentNew;
		add: PMIToolOrTechnique precedenceDiagrammingMethodNew;
		add: PMIToolOrTechnique probabilityImpactMatrixNew;
		add: PMIToolOrTechnique processAnalysisNew;
		add: PMIToolOrTechnique procurementAuditsNew;
		add: PMIToolOrTechnique procurementNegotiationsNew;
		add: PMIToolOrTechnique procurementPerformanceReviewsNew;
		add: PMIToolOrTechnique productAnalysisNew;
		add: PMIToolOrTechnique projectManagementEstimatingSoftwareNew;
		add: PMIToolOrTechnique projectManagementInformationSystemNew;
		add: PMIToolOrTechnique projectManagementSoftwareNew;
		add: PMIToolOrTechnique projectPerformanceAppraisalsNew;
		add: PMIToolOrTechnique proposalEvaluationTechniquesNew;
		add: PMIToolOrTechnique prototypesNew;
		add: PMIToolOrTechnique publishedEstimatingDataNew;
		add: PMIToolOrTechnique qualityAuditsNew;
		add: PMIToolOrTechnique qualityManagementMethodologiesNew;
		add: PMIToolOrTechnique quantitativeRiskAnalysisModelingTechniquesNew;
		add: PMIToolOrTechnique questionnairesAndSurveysNew;
		add: PMIToolOrTechnique recognitionRewardsNew;
		add: PMIToolOrTechnique recordsManagementSystemNew;
		add: PMIToolOrTechnique reportingSystemsNew;
		add: PMIToolOrTechnique reserveAnalysisNew;
		add: PMIToolOrTechnique riskAuditsNew;
		add: PMIToolOrTechnique riskCategorizationNew;
		add: PMIToolOrTechnique riskDataQualityAssessmentNew;
		add: PMIToolOrTechnique riskProbabilityImpactAssessmentNew;
		add: PMIToolOrTechnique riskReassessmentNew;
		add: PMIToolOrTechnique riskUrgencyAssessmentNew;
		add: PMIToolOrTechnique rollingWavePlanningNew;
		add: PMIToolOrTechnique runChartNew;
		add: PMIToolOrTechnique scatterDiagramNew;
		add: PMIToolOrTechnique scheduleCompressionNew;
		add: PMIToolOrTechnique scheduleNetworkAnalysisNew;
		add: PMIToolOrTechnique scheduleNetworkTemplatesNew;
		add: PMIToolOrTechnique schedulingToolNew;
		add: PMIToolOrTechnique stakeholderAnalysisNew;
		add: PMIToolOrTechnique statisticalSamplingNew;
		add: PMIToolOrTechnique statusMeetingsNew;
		add: PMIToolOrTechnique strategiesForNegativeRisksThreatsNew;
		add: PMIToolOrTechnique strategiesForPositiveRisksOpportunitiesNew;
		add: PMIToolOrTechnique swtoAnalysisNew;
		add: PMIToolOrTechnique teamBuildingActivitiesNew;
		add: PMIToolOrTechnique technicalPerformanceMeasurementNew;
		add: PMIToolOrTechnique templatesNew;
		add: PMIToolOrTechnique threePointEstimatesNew;
		add: PMIToolOrTechnique toCompletePerformanceIndexNew;
		add: PMIToolOrTechnique trainingNew;
		add: PMIToolOrTechnique varianceAnalysis2New;
		add: PMIToolOrTechnique varianceAnalysisNew;
		add: PMIToolOrTechnique varianceTrendAnalysisNew;
		add: PMIToolOrTechnique vendorBidAnalysisNew;
		add: PMIToolOrTechnique virtualTeamsNew;
		yourself.!

areaNameFor: aPMIKnowledgeArea

	^aPMIKnowledgeArea englishAreaName.

!

defaultPMIModel

	^PMIProjectDefinition englishDefinition!

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
!PMIEnglishLanguage categoriesFor: #addDefaultDeliverables!public! !
!PMIEnglishLanguage categoriesFor: #addDefaultToolsAndTechniques!public! !
!PMIEnglishLanguage categoriesFor: #areaNameFor:!public! !
!PMIEnglishLanguage categoriesFor: #defaultPMIModel!public! !
!PMIEnglishLanguage categoriesFor: #groupNameFor:!public! !
!PMIEnglishLanguage categoriesFor: #isEnglish!public! !
!PMIEnglishLanguage categoriesFor: #printApprovedChangeRequestType:!public! !
!PMIEnglishLanguage categoriesFor: #printChangeRequestStatusUpdateType:!public! !
!PMIEnglishLanguage categoriesFor: #printChangeRequestType:!public! !
!PMIEnglishLanguage categoriesFor: #printDeliverableArtifactType:!public! !
!PMIEnglishLanguage categoriesFor: #printDocumentUpdateType:!public! !
!PMIEnglishLanguage categoriesFor: #printProductServiceType:!public! !
!PMIEnglishLanguage categoriesFor: #printValidatedChangeType:!public! !
!PMIEnglishLanguage categoriesFor: #setAsDefault!public! !

