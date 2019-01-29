"Filed out from Dolphin Smalltalk 7"!

PMBOKProcessesBuilder subclass: #PMBOKSpanishProcessesBuilderVersion4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKSpanishProcessesBuilderVersion4 guid: (GUID fromString: '{ff5f56be-6347-47f2-9c5a-8a6a0714cc04}')!
PMBOKSpanishProcessesBuilderVersion4 comment: ''!
!PMBOKSpanishProcessesBuilderVersion4 categoriesForClass!Kernel-Objects! !
!PMBOKSpanishProcessesBuilderVersion4 methodsFor!

communicationsProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Identificar a los Interesados';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Planificar las Comunicaciones';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Distribuir la Información';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Gestionar las Expectativas de los Interesados';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Informar el Desempeño';
					yourself);
		yourself!

costProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Estimar los Costos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Determinar el Presupuesto';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Controlar los Costos';
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
					name: 'Desarrollar el Plan de Recursos Humanos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Adquirir el Equipo del Proyecto';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Desarrollar el Equipo del Proyecto';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Dirigir el Equipo del Proyecto';
					yourself);
		yourself!

integrationProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Desarrollar el Acta de Constitución del Proyecto';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Desarrollar el Plan para la Dirección del Proyecto';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Dirigir y Gestionar la Ejecución del Proyecto';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Monitorear y Controlar el Trabajo del Proyecto';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Realizar el Control Integrado de Cambios';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Cerrar Proyecto o Fase';
					yourself);
		yourself!

procurementsProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Planificar las Adquisiciones';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Efectuar las Adquisiciones';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Administrar las Adquisiciones';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Cerrar las Adquisiciones';
					yourself);
		yourself!

qualityProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Planificar la Calidad';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Realizar el Aseguramiento de Calidad';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Realizar el Control de Calidad';
					yourself);
		yourself!

risksProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Planificar la Gestión de Riesgos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Identificar los Riesgos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Realizar el Análisis Cualitativo de Riesgos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Realizar el Análisis Cuantitativo de Riesgos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Planificar la Respuesta a los Riesgos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Monitorear y Controlar los Riesgos';
					yourself);
		yourself!

scopeProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Recopilar Requisitos';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Definir el Alcance';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Crear la EDT';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Verificar el Alcance';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Controlar el Alcance';
					yourself);
		yourself!

timeProcesses
	^OrderedCollection new
		add: (PMBOKProcessDefinition new
					name: 'Definir las Actividades';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Secuenciar las Actividades';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Estimar los Recursos de las Actividades';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Estimar la Duración de las Actividades';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Desarrollar el Cronograma';
					yourself);
		add: (PMBOKProcessDefinition new
					name: 'Controlar el Cronograma';
					yourself);
		yourself! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #communicationsProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #costProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #createGroups!knowledge area!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #createKnowledgeAreas!knowledge area!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #humanResourcesProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #integrationProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #procurementsProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #qualityProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #risksProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #scopeProcesses!processes!public! !
!PMBOKSpanishProcessesBuilderVersion4 categoriesFor: #timeProcesses!processes!public! !

