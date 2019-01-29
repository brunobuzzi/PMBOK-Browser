"Filed out from Dolphin Smalltalk 7"!

PMBOKLanguage subclass: #PMBOKSpanishLanguage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKSpanishLanguage guid: (GUID fromString: '{ad756c1e-b272-4f79-a75f-913910af48ee}')!
PMBOKSpanishLanguage comment: ''!
!PMBOKSpanishLanguage categoriesForClass!Kernel-Objects! !
!PMBOKSpanishLanguage methodsFor!

addDefaultDeliverables
	^OrderedCollection new
		add: PMBOKDocumentDefinition newEnunciadoTrabajoProyecto;
		add: PMBOKDocumentDefinition newCasoDeNegocio;
		add: PMBOKDocumentDefinition newContrato;
		add: PMBOKDocumentDefinition newFactoresAmbientalesEmpresa;
		add: PMBOKDocumentDefinition newActivosProcesosOrganizacion;
		add: PMBOKDocumentDefinition newActaDeConstitucionProyecto;
		add: PMBOKDocumentDefinition newDeclaracionAlcanceProyecto;
		add: PMBOKDocumentDefinition newLineaBaseAlcance;
		add: PMBOKDocumentDefinition newDocumentacionRequisitos;
		add: PMBOKDocumentDefinition newPlanGestionRequisitos;
		add: PMBOKDocumentDefinition newMatrizRastreabilidadRequisitos;
		add: PMBOKDocumentDefinition newLineaBaseDesempenoCostos;
		add: PMBOKDocumentDefinition newRequisitosFinanciamientoProyecto;
		add: PMBOKDocumentDefinition newCronogramaProyecto;
		add: PMBOKDocumentDefinition newLineaBaseCronograma;
		add: PMBOKDocumentDefinition newDatosCronograma;
		add: PMBOKDocumentDefinition newPlanGestionCalidad;
		add: PMBOKDocumentDefinition newMetricasCalidad;
		add: PMBOKDocumentDefinition newListasControlCalidad;
		add: PMBOKDocumentDefinition newPlanMejorasProceso;
		add: PMBOKDocumentDefinition newPlanRecursosHumanos;
		add: PMBOKDocumentDefinition newPlanGestionComunicaciones;
		add: PMBOKDocumentDefinition newRegistroRiesgos;
		add: PMBOKDocumentDefinition newPlanGestionRiesgos;
		add: PMBOKDocumentDefinition newPlanGestionAdquisiciones;
		add: PMBOKDocumentDefinition newEnunciadoTrabajoRelativoAdquisicion;
		add: PMBOKDocumentDefinition newDecisionesHacerComprar;
		add: PMBOKDocumentDefinition newDocumentosAdquisicion;
		add: PMBOKDocumentDefinition newCriteriosSeleccionProveedores;
		add: PMBOKDocumentDefinition newPlanDireccionProyecto;
		add: PMBOKDocumentDefinition newInformacionSobreDesempenoTrabajo;
		add: PMBOKDocumentDefinition newInformesDesempeno;
		add: PMBOKDocumentDefinition newRegistroInteresados;
		add: PMBOKDocumentDefinition newEDT;
		add: PMBOKDocumentDefinition newDiccionarioEDT;
		add: PMBOKDocumentDefinition newMedicionesDesempenoTrabajo;
		add: PMBOKDocumentDefinition newListaActividades;
		add: PMBOKDocumentDefinition newAtributosActividad;
		add: PMBOKDocumentDefinition newDiagramasRedCronogramaProyecto;
		add: PMBOKDocumentDefinition newCalendariosRecursos;
		add: PMBOKDocumentDefinition newRequisitosRecursosActividad;
		add: PMBOKDocumentDefinition newEstructuraDesgloseRecursos;
		add: PMBOKDocumentDefinition newEstimadosDuracionActividad;
		add: PMBOKDocumentDefinition newPlanificacionRecursosHumanos;
		add: PMBOKDocumentDefinition newEstimacionesCostosActividades;
		add: PMBOKDocumentDefinition newBaseEstimados;
		add: PMBOKDocumentDefinition newBaseEstimaciones;
		add: PMBOKDocumentDefinition newProyeccionesPresupuesto;
		add: PMBOKDocumentDefinition newMedicionesControlCalidad;
		add: PMBOKDocumentDefinition newAsignacionesPersonalProyecto;
		add: PMBOKDocumentDefinition newEvaluacionesDesempenoEquipo;
		add: PMBOKDocumentDefinition newEstrategiaGestionInteresados;
		add: PMBOKDocumentDefinition newRegistroIncidentes;
		add: PMBOKDocumentDefinition newRegistroCambios;
		add: PMBOKDocumentDefinition newEnunciadoAlcanceProyecto;
		add: PMBOKDocumentDefinition newPlanGestionCostos;
		add: PMBOKDocumentDefinition newPlanGestionCronograma;
		add: PMBOKDocumentDefinition newAcuerdosContractualesRelacionadosRiesgos;
		add: PMBOKDocumentDefinition newAcuerdosTrabajarEquipo;
		add: PMBOKDocumentDefinition newListaVendedoresCalificados;
		add: PMBOKDocumentDefinition newPropuestasVendedores;
		add: PMBOKDocumentDefinition newAdjudicacionContratoAdquisicion;
		add: PMBOKDocumentDefinition newVendedoresSeleccionados;
		add: PMBOKDocumentDefinition newAdquisicionesCerradas;
		yourself!

addDefaultToolsAndTechniques
	^OrderedCollection new
		add: PMBOKToolOrTechnique newJuicioDeExpertos;
		yourself!

areaNameFor: aPMIKnowledgeArea

	^aPMIKnowledgeArea spanishAreaName.
!

defaultPMIModel
	^PMBOKProjectDefinition default!

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
!PMBOKSpanishLanguage categoriesFor: #addDefaultDeliverables!public! !
!PMBOKSpanishLanguage categoriesFor: #addDefaultToolsAndTechniques!public! !
!PMBOKSpanishLanguage categoriesFor: #areaNameFor:!public! !
!PMBOKSpanishLanguage categoriesFor: #defaultPMIModel!public! !
!PMBOKSpanishLanguage categoriesFor: #groupNameFor:!public! !
!PMBOKSpanishLanguage categoriesFor: #printApprovedChangeRequestType:!public! !
!PMBOKSpanishLanguage categoriesFor: #printChangeRequestStatusUpdateType:!public! !
!PMBOKSpanishLanguage categoriesFor: #printChangeRequestType:!public! !
!PMBOKSpanishLanguage categoriesFor: #printDeliverableArtifactType:!public! !
!PMBOKSpanishLanguage categoriesFor: #printDocumentUpdateType:!public! !
!PMBOKSpanishLanguage categoriesFor: #printProductServiceType:!public! !
!PMBOKSpanishLanguage categoriesFor: #printValidatedChangeType:!public! !
!PMBOKSpanishLanguage categoriesFor: #setAsDefault!public! !

