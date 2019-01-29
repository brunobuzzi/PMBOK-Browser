"Filed out from Dolphin Smalltalk 7"!

PMIProcessesBuilder subclass: #PMISpanishProcessesBuilderVersion4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMISpanishProcessesBuilderVersion4 guid: (GUID fromString: '{ff5f56be-6347-47f2-9c5a-8a6a0714cc04}')!
PMISpanishProcessesBuilderVersion4 comment: ''!
!PMISpanishProcessesBuilderVersion4 categoriesForClass!Kernel-Objects! !
!PMISpanishProcessesBuilderVersion4 methodsFor!

communicationsProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Identificar a los Interesados';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Planificar las Comunicaciones';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Distribuir la Información';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Gestionar las Expectativas de los Interesados';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Informar el Desempeño';
					yourself);
		yourself!

costProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Estimar los Costos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Determinar el Presupuesto';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Controlar los Costos';
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
					name: 'Desarrollar el Plan de Recursos Humanos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Adquirir el Equipo del Proyecto';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Desarrollar el Equipo del Proyecto';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Dirigir el Equipo del Proyecto';
					yourself);
		yourself!

integrationProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Desarrollar el Acta de Constitución del Proyecto';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Desarrollar el Plan para la Dirección del Proyecto';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Dirigir y Gestionar la Ejecución del Proyecto';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Monitorear y Controlar el Trabajo del Proyecto';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Realizar el Control Integrado de Cambios';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Cerrar Proyecto o Fase';
					yourself);
		yourself!

procurementsProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Planificar las Adquisiciones';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Efectuar las Adquisiciones';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Administrar las Adquisiciones';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Cerrar las Adquisiciones';
					yourself);
		yourself!

qualityProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Planificar la Calidad';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Realizar el Aseguramiento de Calidad';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Realizar el Control de Calidad';
					yourself);
		yourself!

risksProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Planificar la Gestión de Riesgos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Identificar los Riesgos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Realizar el Análisis Cualitativo de Riesgos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Realizar el Análisis Cuantitativo de Riesgos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Planificar la Respuesta a los Riesgos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Monitorear y Controlar los Riesgos';
					yourself);
		yourself!

scopeProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Recopilar Requisitos';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Definir el Alcance';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Crear la EDT';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Verificar el Alcance';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Controlar el Alcance';
					yourself);
		yourself!

timeProcesses
	^(OrderedCollection new)
		add: ((PMIProcessDefinition new)
					name: 'Definir las Actividades';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Secuenciar las Actividades';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Estimar los Recursos de las Actividades';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Estimar la Duración de las Actividades';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Desarrollar el Cronograma';
					yourself);
		add: ((PMIProcessDefinition new)
					name: 'Controlar el Cronograma';
					yourself);
		yourself! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #communicationsProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #costProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #createGroups!knowledge area!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #createKnowledgeAreas!knowledge area!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #humanResourcesProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #integrationProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #procurementsProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #qualityProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #risksProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #scopeProcesses!processes!public! !
!PMISpanishProcessesBuilderVersion4 categoriesFor: #timeProcesses!processes!public! !

