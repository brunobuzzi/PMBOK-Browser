"Filed out from Dolphin Smalltalk 7"!

PMILanguage subclass: #PMISpanishLanguage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMISpanishLanguage guid: (GUID fromString: '{ad756c1e-b272-4f79-a75f-913910af48ee}')!
PMISpanishLanguage comment: ''!
!PMISpanishLanguage categoriesForClass!Kernel-Objects! !
!PMISpanishLanguage methodsFor!

addDefaultDeliverables

	^(OrderedCollection new)
		add: PMIDocumentDefinition newEnunciadoTrabajoProyecto;
		add: PMIDocumentDefinition newCasoDeNegocio;
		add: PMIDocumentDefinition newContrato;
		add: PMIDocumentDefinition newFactoresAmbientalesEmpresa;
		add: PMIDocumentDefinition newActivosProcesosOrganizacion;
		add: PMIDocumentDefinition newActaDeConstitucionProyecto;
		add: PMIDocumentDefinition newDeclaracionAlcanceProyecto;
		add: PMIDocumentDefinition newLineaBaseAlcance;
		add: PMIDocumentDefinition newDocumentacionRequisitos;
		add: PMIDocumentDefinition newPlanGestionRequisitos;
		add: PMIDocumentDefinition newMatrizRastreabilidadRequisitos;
		add: PMIDocumentDefinition newLineaBaseDesempenoCostos;
		add: PMIDocumentDefinition newRequisitosFinanciamientoProyecto;
		add: PMIDocumentDefinition newCronogramaProyecto;
		add: PMIDocumentDefinition newLineaBaseCronograma;
		add: PMIDocumentDefinition newDatosCronograma;
		add: PMIDocumentDefinition newPlanGestionCalidad;
		add: PMIDocumentDefinition newMetricasCalidad;
		add: PMIDocumentDefinition newListasControlCalidad;
		add: PMIDocumentDefinition newPlanMejorasProceso;
		add: PMIDocumentDefinition newPlanRecursosHumanos;
		add: PMIDocumentDefinition newPlanGestionComunicaciones;
		add: PMIDocumentDefinition newRegistroRiesgos;
		add: PMIDocumentDefinition newPlanGestionRiesgos;
		add: PMIDocumentDefinition newPlanGestionAdquisiciones;
		add: PMIDocumentDefinition newEnunciadoTrabajoRelativoAdquisicion;
		add: PMIDocumentDefinition newDecisionesHacerComprar;
		add: PMIDocumentDefinition newDocumentosAdquisicion;
		add: PMIDocumentDefinition newCriteriosSeleccionProveedores;
		add: PMIDocumentDefinition newPlanDireccionProyecto;
		add: PMIDocumentDefinition newInformacionSobreDesempenoTrabajo;
		add: PMIDocumentDefinition newInformesDesempeno;
		add: PMIDocumentDefinition newRegistroInteresados;
		add: PMIDocumentDefinition newEDT;
		add: PMIDocumentDefinition newDiccionarioEDT;
		add: PMIDocumentDefinition newMedicionesDesempenoTrabajo;
		add: PMIDocumentDefinition newListaActividades;
		add: PMIDocumentDefinition newAtributosActividad;
		add: PMIDocumentDefinition newDiagramasRedCronogramaProyecto;
		add: PMIDocumentDefinition newCalendariosRecursos;
		add: PMIDocumentDefinition newRequisitosRecursosActividad;
		add: PMIDocumentDefinition newEstructuraDesgloseRecursos;
		add: PMIDocumentDefinition newEstimadosDuracionActividad;
		add: PMIDocumentDefinition newPlanificacionRecursosHumanos;
		add: PMIDocumentDefinition newEstimacionesCostosActividades;
		add: PMIDocumentDefinition newBaseEstimados;
		add: PMIDocumentDefinition newBaseEstimaciones;
		add: PMIDocumentDefinition newProyeccionesPresupuesto;
		add: PMIDocumentDefinition newMedicionesControlCalidad;
		add: PMIDocumentDefinition newAsignacionesPersonalProyecto;
		add: PMIDocumentDefinition newEvaluacionesDesempenoEquipo;
		add: PMIDocumentDefinition newEstrategiaGestionInteresados;
		add: PMIDocumentDefinition newRegistroIncidentes;
		add: PMIDocumentDefinition newRegistroCambios;
		add: PMIDocumentDefinition newEnunciadoAlcanceProyecto;
		add: PMIDocumentDefinition newPlanGestionCostos;
		add: PMIDocumentDefinition newPlanGestionCronograma;
		add: PMIDocumentDefinition newAcuerdosContractualesRelacionadosRiesgos;
		add: PMIDocumentDefinition newAcuerdosTrabajarEquipo;
		add: PMIDocumentDefinition newListaVendedoresCalificados;
		add: PMIDocumentDefinition newPropuestasVendedores;
		add: PMIDocumentDefinition newAdjudicacionContratoAdquisicion;
		add: PMIDocumentDefinition newVendedoresSeleccionados;
		add: PMIDocumentDefinition newAdquisicionesCerradas;
		yourself!

addDefaultToolsAndTechniques

	^OrderedCollection new
		add: PMIToolOrTechnique newJuicioDeExpertos;
		yourself.!

areaNameFor: aPMIKnowledgeArea

	^aPMIKnowledgeArea spanishAreaName.
!

defaultPMIModel

	^PMIProjectDefinition default!

groupNameFor: aPMIManagementProcessGroup

	^aPMIManagementProcessGroup spanishGroupName!

printApprovedChangeRequestType: aPMIArtifactDefinition

	^'Solicitudes de Cambio Aprobadas'!

printChangeRequestStatusUpdateType: aPMIArtifactDefinition

	^'Actualizaciones al Estado de las Solicitudes de Cambio'!

printChangeRequestType: aPMIArtifactDefinition

	^'Solicitud de Cambio'!

printDeliverableArtifactType: aPMIArtifactDefinition

	^'Entregables/Lista de Entregables'!

printDocumentUpdateType: aPMIArtifactDefinition

	^'Actualización de Documentos'!

printProductServiceType: aPMIArtifactDefinition

	^'Producto/Servicio/Resultado'!

printValidatedChangeType: aPMIArtifactDefinition

	^'Cambios Validados'!

setAsDefault

	super setAsDefault.

	"PMIProcessesBuilder default: PMISpanishProcessesBuilderVersion4 new"! !
!PMISpanishLanguage categoriesFor: #addDefaultDeliverables!public! !
!PMISpanishLanguage categoriesFor: #addDefaultToolsAndTechniques!public! !
!PMISpanishLanguage categoriesFor: #areaNameFor:!public! !
!PMISpanishLanguage categoriesFor: #defaultPMIModel!public! !
!PMISpanishLanguage categoriesFor: #groupNameFor:!public! !
!PMISpanishLanguage categoriesFor: #printApprovedChangeRequestType:!public! !
!PMISpanishLanguage categoriesFor: #printChangeRequestStatusUpdateType:!public! !
!PMISpanishLanguage categoriesFor: #printChangeRequestType:!public! !
!PMISpanishLanguage categoriesFor: #printDeliverableArtifactType:!public! !
!PMISpanishLanguage categoriesFor: #printDocumentUpdateType:!public! !
!PMISpanishLanguage categoriesFor: #printProductServiceType:!public! !
!PMISpanishLanguage categoriesFor: #printValidatedChangeType:!public! !
!PMISpanishLanguage categoriesFor: #setAsDefault!public! !

