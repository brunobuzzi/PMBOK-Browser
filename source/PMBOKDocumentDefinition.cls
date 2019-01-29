"Filed out from Dolphin Smalltalk 7"!

PMBOKDeliverableDefinition subclass: #PMBOKDocumentDefinition
	instanceVariableNames: 'isOrganizationAsset templates'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMBOKDocumentDefinition guid: (GUID fromString: '{e2bb8b89-acbe-4328-a55f-4dd94cdaf3cc}')!
PMBOKDocumentDefinition comment: ''!
!PMBOKDocumentDefinition categoriesForClass!Kernel-Objects! !
!PMBOKDocumentDefinition methodsFor!

addTemplate: templateName

	^templates add: templateName!

asPMIWrapper
	^PMBOKDocumentWrapper new document: self!

images
	| images |

	images := OrderedCollection new.
	(self projectModel getProcessesWithOutputDeliverable: self) do: [:eachProcess | | output |
		output := eachProcess output detect: [:each | each deliverable == self].
		images addAll: output images.].

	^images!

initialize
	super initialize.
	isOrganizationAsset := false.	
	templates := OrderedCollection new.!

isOrganizationAsset
	^isOrganizationAsset!

isOrganizationAsset: anObject
	isOrganizationAsset := anObject!

parentProcess
	^self getAllProcesses detect: [:each | each outputIncludesDeliverableOf: self] ifNone: [nil]!

parentProcessAreaName
	^''!

parentProcessGroupName
	^''!

parentProcessName

	^self parentProcess name!

printIOType
	^'Document'!

printName

	^'Document Definition'!

removeTemplate: templateName

	^templates remove: templateName!

searchInProcessInputSelector

	^#inputIncludesDeliverable:!

searchInProcessOutputSelector

	^#outputIncludesDeliverable:!

templates
	^templates!

templates: anObject
	templates := anObject! !
!PMBOKDocumentDefinition categoriesFor: #addTemplate:!public! !
!PMBOKDocumentDefinition categoriesFor: #asPMIWrapper!public! !
!PMBOKDocumentDefinition categoriesFor: #images!public! !
!PMBOKDocumentDefinition categoriesFor: #initialize!public! !
!PMBOKDocumentDefinition categoriesFor: #isOrganizationAsset!accessing!private! !
!PMBOKDocumentDefinition categoriesFor: #isOrganizationAsset:!accessing!private! !
!PMBOKDocumentDefinition categoriesFor: #parentProcess!public! !
!PMBOKDocumentDefinition categoriesFor: #parentProcessAreaName!public! !
!PMBOKDocumentDefinition categoriesFor: #parentProcessGroupName!public! !
!PMBOKDocumentDefinition categoriesFor: #parentProcessName!public! !
!PMBOKDocumentDefinition categoriesFor: #printIOType!public! !
!PMBOKDocumentDefinition categoriesFor: #printName!public! !
!PMBOKDocumentDefinition categoriesFor: #removeTemplate:!public! !
!PMBOKDocumentDefinition categoriesFor: #searchInProcessInputSelector!public! !
!PMBOKDocumentDefinition categoriesFor: #searchInProcessOutputSelector!public! !
!PMBOKDocumentDefinition categoriesFor: #templates!accessing!private! !
!PMBOKDocumentDefinition categoriesFor: #templates:!accessing!private! !

!PMBOKDocumentDefinition class methodsFor!

acceptedDeliverables

	^'Deliverables that meet the acceptance criteria are formally signed off and approved by the
customer or sponsor. Formal documentation received from the customer or sponsor acknowledging
formal stakeholder acceptance of the project’s deliverables is forwarded to the Close Project or
Phase process (4.6).'
!

acceptedDeliverablesNew
		^super new
			name: 'Accepted Deliverables'; 
			description: self acceptedDeliverables;
			yourself.!

actaDeConstitucionProyecto
	^'El acta de constitución del proyecto documenta las necesidades comerciales, el conocimiento
actual de las necesidades del cliente y el nuevo producto, servicio o resultado que el proyecto
debe proporcionar, como por ejemplo:
• el propósito o la justificación del proyecto
• los objetivos medibles del proyecto y los criterios de éxito relacionados
• los requisitos de alto nivel
• la descripción del proyecto de alto nivel
• los riesgos de alto nivel
• un resumen del cronograma de hitos
• un resumen del presupuesto
• los requisitos de aprobación del proyecto (qué constituye el éxito del proyecto, quién
decide si el proyecto es exitoso y quién firma la aprobación del proyecto)
• el director del proyecto asignado, su responsabilidad y su nivel de autoridad
• el nombre y el nivel de autoridad del patrocinador o de quienes autorizan el acta de
constitución del proyecto'!

activityAttributes

	^'Activity attributes extend the description of the activity by identifying the multiple components
associated with each activity. The components for each activity evolve over time. During the initial stages
of the project they include the Activity ID, WBS ID, and Activity Name, and when completed may include
activity codes, activity description, predecessor activities, successor activities, logical relationships, leads
and lags (Section 6.2.2.3), resource requirements, imposed dates, constraints, and assumptions. Activity
attributes can be used to identify the person responsible for executing the work, geographic area, or
place where the work has to be performed, and activity type such as level of effort (LOE), discrete effort,
and apportioned effort (AE). Activity attributes are used for schedule development and for selecting,
ordering, and sorting the planned schedule activities in various ways within reports. The number of
attributes varies by application area.'!

activityAttributesNew
		^super new
			name: 'Activity Attributes'; 
			description: self activityAttributes;
			yourself.!

activityCostEstimates

	^'Activity cost estimates are quantitative assessments of the probable costs required to complete
project work. Cost estimates can be presented in summary form or in detail. Costs are estimated for
all resources that are applied to the activity cost estimate. This includes, but is not limited to, direct
labor, materials, equipment, services, facilities, information technology, and special categories such
as an inflation allowance or a cost contingency reserve. Indirect costs, if they are included in the
project estimate, can be included at the activity level or at higher levels.'!

activityCostEstimatesNew
		^super new
			name: 'Activity Cost Estimates'; 
			description: self activityCostEstimates;
			yourself.!

activityDurationEstimates

	^'Activity duration estimates are quantitative assessments of the likely number of work periods that will
be required to complete an activity. Duration estimates do not include any lags as described in 6.2.2.3.
Activity duration estimates may include some indication of the range of possible results. For example:
   • 2 weeks ± 2 days to indicate that the activity will take at least eight days and no more than
        twelve (assuming a five-day workweek).
   • 15% probability of exceeding three weeks to indicate a high probability—85% percent—that
        the activity will take three weeks or less.'!

activityDurationEstimatesNew
		^super new
			name: 'Activity Duration Estimates'; 
			description: self activityDurationEstimates;
			yourself.!

activityList
	^'The activity list is a comprehensive list including all schedule activities required on the project. The
activity list includes the activity identifier and a scope of work description for each activity in sufficient
detail to ensure that project team members understand what work is required to be completed.'!

activityListNew
		^super new
			name: 'Activity List'; 
			description: self activityList;
			yourself.!

activityResourceRequirements
	^'The output of the Estimate Activity Resources process identifies the types and quantities of
resources required for each activity in a work package. These requirements can then be aggregated
to determine the estimated resources for each work package. The amount of detail and the level
of specificity of the resource requirement descriptions can vary by application area. The resource
requirements documentation for each activity can include the basis of estimate for each resource,
as well as the assumptions that were made in determining which types of resources are applied,
their availability, and what quantities are used.'!

activityResourceRequirementsNew
		^super new
			name: 'Activity Resource Requirements'; 
			description: self activityResourceRequirements;
			yourself.!

activosProcesosOrganizacion
	^'Los activos de los procesos de la organización que pueden influir en el proceso Desarrollar el
Acta de Constitución del Proyecto incluyen, entre otros:
• los procesos organizacionales estándar, las políticas y las definiciones de procesos
normalizadas que se utilizan en la organización
• las plantillas (por ejemplo, plantilla del acta de constitución del proyecto)
• la información histórica y la base de conocimientos de lecciones aprendidas'!

acuerdosContractualesRelacionadosRiesgos

	^'Los acuerdos para transferencia de riesgos, tales como acuerdos para seguros, servicios y otros
temas según corresponda, se establecen en el marco de este proceso. Esto puede suceder como
resultado de mitigar o transferir parte o toda la amenaza, o de mejorar o compartir parte o toda
la oportunidad. El tipo de contrato elegido proporciona también un mecanismo para compartir
los riesgos. Estas decisiones constituyen entradas para el proceso Planificar las Adquisiciones
(Sección 12.1).'!

acuerdosTrabajarEquipo
	^'Los acuerdos para trabajar en equipo son acuerdos legales contractuales entre dos o más
entidades con el propósito de formar una sociedad o unión temporal de empresas (también
conocidos como consorcios), o algún otro tipo de acuerdo definido por las partes. El acuerdo
define los roles de comprador y vendedor para cada una de las partes. Cuando la oportunidad
comercial llega a su fin, también lo hace el acuerdo para trabajar en equipo. Si este tipo de
acuerdo se encuentra vigente, el proceso de planificación para el proyecto es impactado
significativamente. Por lo tanto, cuando para un determinado proyecto existe un acuerdo de
equipo, los roles del comprador y del vendedor están predeterminados y, por lo general, los
asuntos tales como el alcance del trabajo, los requisitos de competencia y otros temas cruciales
se definen con anticipación.'!

adjudicacionContratoAdquisicion

	^'A cada vendedor seleccionado se le adjudica un contrato de adquisición. El contrato puede
tener la forma de una simple orden de compra o de un documento complejo.
Independientemente de la complejidad del documento, un contrato es un acuerdo legal
vinculante para las partes, que obliga al vendedor a proporcionar los productos, servicios o
resultados especificados, y al comprador a retribuir al vendedor. Un contrato establece una
relación legal sujeta a resolución en los tribunales. Los principales componentes de un
documento contractual varían, pero en general incluyen, entre otros:
• el enunciado del trabajo o los entregables
• la línea base del cronograma
• los informes de desempeño
• el período de ejecución
• los roles y las responsabilidades
• el lugar de desempeño del vendedor
• los precios
• las condiciones de pago
• el lugar de entrega
• los criterios de inspección y aceptación
• las garantías
• el soporte del producto
• los límites de responsabilidad
• los honorarios y las retenciones
• las sanciones
• los incentivos
• el seguro y las fianzas de ejecución
• la aprobación de los subcontratistas subordinados
• el tratamiento de solicitudes de cambio
• mecanismos de finalización y alternativas de resolución de controversias. El método de
alternativas de resolución de controversias puede decidirse por anticipado como parte
de la adjudicación de la adquisición.'!

adquisicionesCerradas
	^'El comprador, por lo general mediante su administrador de adquisiciones autorizado,
proporciona al vendedor una notificación formal por escrito de que el contrato ha sido
completado. Habitualmente, los requisitos para el cierre formal de la adquisición se definen en
los términos y condiciones del contrato, y se incluyen en el plan de gestión de las adquisiciones.'!

analogousEstimating

	^'Analogous estimating uses parameters such as duration, budget, size, weight, and complexity,
from a previous, similar project, as the basis for estimating the same parameter or measure for a
future project. When estimating durations, this technique relies on the actual duration of previous,
similar projects as the basis for estimating the duration of the current project. It is a gross value
estimating approach, sometimes adjusted for known differences in project complexity.
    Analogous duration estimating is frequently used to estimate project duration when there is a
limited amount of detailed information about the project for example, in the early phases of a project.
Analogous estimating uses historical information and expert judgment.
    Analogous estimating is generally less costly and time consuming than other techniques, but it
is also generally less accurate. Analogous duration estimates can be applied to a total project or to
segments of a project and may be used in conjunction with other estimating methods. Analogous
estimating is most reliable when the previous activities are similar in fact and not just in appearance,
and the project team members preparing the estimates have the needed expertise.'!

analogousEstimatingNew
		^super new
			name: 'Analogous Estimating'; 
			description: self analogousEstimating;
			yourself.!

approvedChangeRequests

	^'As part of the Perform Integrated Change Control process, a change control status update will
indicate that some changes are approved and some are not. Approved change requests are scheduled
for implementation by the project team. Approved change requests are the documented, authorized
changes to expand or reduce project scope. The approved change requests can also modify policies,
the project management plan, procedures, costs, or budgets; or revise schedules. Approved change
requests may require implementation of preventive or corrective actions.'
!

approvedChangeRequestsNew
		^super new
			name: 'Approved Change Requests'; 
			description: self approvedChangeRequests;
			yourself.!

asignacionesPersonalProyecto
	^'Se considera que el proyecto está dotado de personal cuando las personas apropiadas han sido
asignadas de acuerdo con los métodos descritos anteriormente. La documentación de estas
asignaciones puede incluir un directorio del equipo del proyecto, memorandos a los miembros
del equipo y nombres incluidos en otras partes del plan para la dirección del proyecto, tales
como los organigramas y los cronogramas del proyecto.'!

atributosActividad
	^'Los atributos de la actividad amplían la descripción de la actividad, identificando los múltiples
componentes relacionados con cada una de ellas. Los componentes de cada actividad
evolucionan con el tiempo. Durante las etapas iniciales del proyecto, estos atributos incluyen el
identificador de la actividad, el identificador de la EDT y el nombre de la actividad, y una vez
terminado, pueden incluir los códigos de la actividad, la descripción de la actividad, las
actividades predecesoras, las actividades sucesoras, las relaciones lógicas, los adelantos y los
retrasos (Sección 6.2.2.3), los requisitos de recursos, las fechas impuestas, las restricciones y
los supuestos. Los atributos de la actividad pueden usarse para identificar a la persona
responsable de ejecutar el trabajo, la zona geográfica o el lugar donde debe realizarse el trabajo
y el tipo de actividad, tal como nivel de esfuerzo, esfuerzo discreto y esfuerzo prorrateado. Los
atributos de la actividad se utilizan para el desarrollo del cronograma y para seleccionar,
ordenar y clasificar las actividades del cronograma planificadas de diferentes maneras dentro de
los informes. La cantidad de atributos varía según el área de aplicación.'!

baseEstimaciones

	^'Los detalles que sustentan las estimaciones de costos deben especificarse como se describe en
la Sección 7.1.3.2. Cualquier supuesto básico que se relacione con la inclusión o exclusión de
costos indirectos en el presupuesto del proyecto debe especificarse en la base de las
estimaciones.'!

baseEstimados

	^'La cantidad y el tipo de detalles adicionales que respaldan la estimación de costos varían según
el área de aplicación. Independientemente del nivel de detalle, la documentación de respaldo
debe proporcionar una comprensión clara y completa de la forma en que se obtuvo la
estimación de costos.
Los detalles de respaldo para las estimaciones de costos de las actividades pueden incluir:
• documentación de los fundamentos de las estimaciones (es decir, cómo fueron
desarrolladas)
• documentación de todos los supuestos utilizados
• documentación de todas las restricciones conocidas
• indicación del rango de estimados posibles (p.ej., $10.000 (±10%) para indicar que se
espera que el costo del elemento se encuentre dentro de este rango de valores)
• indicación del nivel de confiabilidad del estimado final.'!

basisOfEstimates

	^'The amount and type of additional details supporting the cost estimate vary by application area.
Regardless of the level of detail, the supporting documentation should provide a clear and complete
understanding of how the cost estimate was derived.
   Supporting detail for activity cost estimates may include:
   • Documentation of the basis of the estimate (i.e., how it was developed),
   • Documentation of all assumptions made,
   • Documentation of any known constraints,
   • Indication of the range of possible estimates (e.g., $10,000 (±10%) to indicate that the item is
      expected to cost between a range of values), and
   • Indication of the confidence level of the final estimate.'!

basisOfEstimatesNew
		^super new
			name: 'Basis Of Estimates'; 
			description: self basisOfEstimates;
			yourself.!

budgetForecasts

	^'Either a calculated EAC value or a bottom-up EAC value is documented and communicated to
stakeholders.'
!

budgetForecastsNew
		^super new
			name: 'Budget Forecasts'; 
			description: self budgetForecasts;
			yourself.!

businessCase

^'The business case or similar document provides the necessary information from a business
standpoint to determine whether or not the project is worth the required investment. Typically the
business need and the cost-benefit analysis are contained in the business case to justify the project.
The requesting organization or customer, in the case of external projects, may write the business case.
The business case is created as a result of one or more of the following:
   • Market demand (e.g., a car company authorizing a project to build more fuel-efficient cars in
      response to gasoline shortages),
   • Organizational need (e.g., a training company authorizing a project to create a new course to
      increase its revenues),
   • Customer request (e.g., an electric utility authorizing a project to build a new substation to serve
      a new industrial park),
   • Technological advance (e.g., an electronics firm authorizing a new project to develop a faster,
      cheaper, and smaller laptop after advances in computer memory and electronics technology),
   • Legal requirement (e.g., a paint manufacturer authorizing a project to establish guidelines for
      handling toxic materials),
   • Ecological impacts (e.g., a company undertakes a project to lessen its environmental impact), or
   • Social need (e.g., a non-governmental organization in a developing country authorizing a project
       to provide potable water systems, latrines, and sanitation education to communities suffering
       from high rates of cholera).
   In the case of multi-phase projects, the business case may be periodically reviewed to ensure
that the project is on track to deliver the business benefits. In the early stages of the project life cycle,
periodic review of the business case by the sponsoring organization also helps to confirm that the
project is still required.'
!

businessCaseNew
		^super new
			name: 'Business Case'; 
			description: self businessCase;
			yourself.!

calendariosRecursos

	^'La información sobre los recursos (como personas, equipos y material) potencialmente
disponibles durante la ejecución de las actividades planificadas, que se describe en las
secciones 9.2.3.2 y 12.2.3.3, permite estimar la utilización de recursos. Los calendarios de
recursos especifican cuándo y por cuánto tiempo estarán disponibles los recursos identificados
del proyecto durante la ejecución del mismo. Esta información puede proporcionarse a nivel de
la actividad o del proyecto. Este conocimiento abarca la consideración de atributos, tales como
la experiencia y/o el nivel de habilidad de los recursos, así como las diferentes ubicaciones
geográficas de las que provienen los recursos y cuándo pueden estar disponibles.
El calendario de recursos compuesto abarca la disponibilidad, las capacidades y las
habilidades de los recursos humanos (Sección 9.2). Por ejemplo, durante las fases iniciales de
un proyecto de diseño de ingeniería, el grupo de recursos podría incluir una gran cantidad de
ingenieros jóvenes e ingenieros experimentados. Sin embargo, durante las fases posteriores
del mismo proyecto, el grupo puede limitarse a aquellas personas con mayor conocimiento en
el proyecto, por haber trabajado en las fases iniciales del mismo.'!

casoDeNegocio
	^'
El caso de negocio o un documento similar proporciona la información necesaria desde una
perspectiva comercial para determinar si el proyecto vale o no la inversión requerida.
Normalmente, la necesidad comercial y el análisis de costo-beneficio se incluyen en el caso de
negocio para justificar el proyecto. En el caso de proyectos externos, la organización solicitante
o el cliente pueden elaborar el caso de negocio. El caso de negocio se crea como resultado de
una o más de las siguientes razones:
• demanda del mercado (por ejemplo, una compañía automotriz que autoriza un proyecto
para construir más automóviles de bajo consumo en respuesta a la escasez de
combustible)
• necesidad comercial (por ejemplo, un centro de capacitación que autoriza un proyecto de
creación de un curso nuevo, para aumentar sus ingresos)
• solicitud de un cliente (por ejemplo, una empresa eléctrica que autoriza un proyecto para
construir una nueva subestación a fin de abastecer un nuevo parque industrial)
• adelantos tecnológicos (por ejemplo, una compañía de productos electrónicos que
autoriza un proyecto nuevo para desarrollar una computadora portátil más pequeña, más
económica y más veloz, a partir de adelantos en materia de memorias de computadoras y
tecnología electrónica)
• requisito legal (por ejemplo, un fabricante de pinturas que autoriza un proyecto para
establecer pautas sobre la manipulación de materiales tóxicos)
• impacto ecológico (por ejemplo, una compañía que emprende un proyecto para disminuir
su impacto ambiental)
• necesidades sociales (por ejemplo, una organización no gubernamental en un país en vías
de desarrollo que autoriza un proyecto para dotar de sistemas de agua potable, baños y
educación sanitaria a comunidades que padecen altos índices de cólera)
En el caso de proyectos de fases múltiples, el caso de negocio puede ser revisado
periódicamente para asegurarse de que el proyecto sigue orientado hacia el logro de los
beneficios comerciales. En las primeras etapas del ciclo de vida del proyecto, la revisión
periódica del caso de negocio por parte de la organización patrocinadora también ayuda a
confirmar que el proyecto aún es necesario.'!

changeLog

	^'A change log is used to document changes that occur during a project. These changes and their impact
to the project in terms of time, cost, and risk, must be communicated to the appropriate stakeholders.'!

changeLogNew
		^super new
			name: 'Change Log'; 
			description: self changeLog;
			yourself.!

changeRequests

	^'When issues are found while project work is being performed, change requests are issued which
may modify project policies or procedures, project scope, project cost or budget, project schedule,
or project quality. Other change requests cover needed preventive or corrective actions to forestall
negative impact later in the project. Requests for a change can be direct or indirect, externally or
internally initiated, and can be optional or legally/contractually mandated and can include:
    • Corrective action. Documented direction for executing the project work to bring expected future
       performance of the project work in line with the project management plan.
    • Preventive action. A documented direction to perform an activity that can reduce the probability
       of negative consequences associated with project risks.
    • Defect repair. The formally documented identification of a defect in a project component with a
  recommendation to either repair the defect or completely replace the component.
    • Updates. Changes to formally controlled documentation, plans, etc., to reflect modified or
  additional ideas or content.'!

changeRequestsNew

		^super new
			name: 'Change Requests'; 
			description: self changeRequests;
			yourself.!

changeRequestStatusUpdates

	^'Change requests are processed according to the change control system by the project manager
or by an assigned team member. Approved change requests will be implemented by the Direct and
Manage Project Execution process. The status of all changes, approved or not, will be updated in the
change request log as part of the project document updates.'!

changeRequestStatusUpdatesNew
		^super new
			name: 'Change Request Status Updates'; 
			description: self changeRequestStatusUpdates;
			yourself.!

closedProcurements

	^'The buyer, usually through its authorized procurement administrator, provides the seller with formal
written notice that the contract has been completed. Requirements for formal procurement closure
are usually defined in the terms and conditions of the contract and are included in the procurement
management plan.'!

closedProcurementsNew
		^super new
			name: 'Closed Procurements'; 
			description: self closedProcurements;
			yourself.!

communicationsManagementPlan

	^'The communications management plan is contained in or is a subsidiary of the project management
plan (Section 4.2.3.1). The communications management plan can be formal or informal, highly
detailed or broadly framed, and based on the needs of the project.
   The communications management plan usually provides:
   • Stakeholder communication requirements;
   • Information to be communicated, including language, format, content, and level of detail;
   • Reason for the distribution of that information;
   • Time frame and frequency for the distribution of required information;
   • Person responsible for communicating the information;
   • Person responsible for authorizing release of confidential information;
   • Person or groups who will receive the information;
   • Methods or technologies used to convey the information, such as memos, e-mail, and/or
       press releases;
   • Resources allocated for communication activities, including time and budget;
   • Escalation process identifying time frames and the management chain (names) for escalation
       of issues that cannot be resolved at a lower staff level;
   • Method for updating and refining the communications management plan as the project
       progresses and develops;
   • Glossary of common terminology;
   • Flow charts of the information flow in the project, workflows with possible sequence of
       authorization, list of reports, and meeting plans, etc.; and
   • Communication constraints, usually derived from specific legislation or regulation, technology,
       and organizational policies, etc.
   The communications management plan can also include guidelines and templates for project
status meetings, project team meetings, e-meetings, and e-mail. The use of a project website and
project management software can also be included if they are used in the project.'!

communicationsManagementPlanNew
		^super new
			name: 'Communications Management Plan'; 
			description: self communicationsManagementPlan;
			yourself.!

contract

	^'A contract is an input if the project is being done for an external customer.'
!

contractNew
		^super new
			name: 'Contract'; 
			description: self contract;
			yourself.!

contrato

	^'Si el proyecto se está ejecutando para un cliente externo, el contrato constituye una entrada.'!

costManagementPlan

	^'The project cost management plan defines how risk budgets, contingencies, and management
reserves will be reported and accessed. Described in Section 7.0.'!

costManagementPlanNew
		^super new
			name: 'Cost Management Plan'; 
			description: self costManagementPlan;
			yourself.!

costPerformanceBaseline

	^'The cost performance baseline is an authorized time-phased budget at completion (BAC) used to
measure, monitor, and control overall cost performance on the project. It is developed as a summation
of the approved budgets by time period and is typically displayed in the form of an S-curve, as is
illustrated in Figure 7-6. In the earned value management technique the cost performance baseline is
referred to as the performance measurement baseline (PMB).'!

costPerformanceBaselineNew
		^super new
			name: 'Cost Performance Baseline'; 
			description: self costPerformanceBaseline;
			yourself.!

criteriosSeleccionProveedores
	^'Los criterios de selección se incluyen a menudo como parte de los documentos de solicitud de
adquisiciones. Dichos criterios se desarrollan y utilizan para calificar o evaluar las propuestas
de los vendedores, y pueden ser objetivos o subjetivos.
Los criterios de selección pueden limitarse al precio de compra si el artículo que se va a
adquirir está fácilmente disponible a través de un cierto número aceptable de vendedores. En
este contexto, el precio de compra incluye tanto el costo del artículo como cualquier gasto
accesorio, como por ejemplo los gastos de entrega.
Otros criterios de selección pueden identificarse y documentarse para respaldar la
evaluación en el caso de productos, servicios o resultados más complejos. A continuación, se
muestran algunos ejemplos.
• Comprensión de la necesidad. ¿En qué medida la propuesta del vendedor responde al
enunciado del trabajo relativo a la adquisición?
• Costo total o del ciclo de vida. ¿El vendedor seleccionado producirá el costo total más
bajo (costo de compra más costo de operación)?
• Capacidad técnica. ¿El vendedor cuenta con las habilidades y conocimientos técnicos
necesarios o se puede esperar razonablemente a que los adquiera?
• Riesgo. ¿Qué nivel de riesgo conlleva el enunciado del trabajo, qué proporción de ese
riesgo será asignado al vendedor seleccionado y de qué modo el vendedor mitigará el
riesgo?
• Enfoque de gestión. ¿El vendedor cuenta con los procesos y procedimientos de gestión
necesarios para asegurar el éxito del proyecto, o puede esperarse razonablemente que
los desarrolle?
• Enfoque técnico. ¿Las metodologías, técnicas, soluciones y servicios técnicos
propuestos por el vendedor cumplen con los requisitos de la documentación de
adquisición, o es probable que proporcionen más o menos que los resultados
esperados?
• Garantía. ¿Qué propone el vendedor para garantizar el producto final y durante qué
período de tiempo?
• Capacidad financiera. ¿El vendedor cuenta con los recursos financieros necesarios, o
puede esperarse razonablemente que los obtenga?
• Capacidad de producción e interés. ¿El vendedor tiene la capacidad y el interés para
cumplir con los posibles requisitos futuros?
• Tamaño y tipo de negocio. ¿La empresa del vendedor se encuadra dentro de una
categoría específica de negocio, por ejemplo, una pequeña empresa, una empresa
dirigida por mujeres o una pequeña empresa desfavorecida, según la definición del
comprador o de acuerdo con lo establecido por una agencia gubernamental y
determinado como una condición para la adjudicación del contrato?
• Desempeño pasado de los vendedores. ¿Cuál ha sido en el pasado la experiencia con
los vendedores seleccionados?
• Referencias. ¿El vendedor puede proporcionar referencias de clientes anteriores que
verifiquen la experiencia laboral y el cumplimiento de los requisitos contractuales por
parte del vendedor?
• Derechos de propiedad intelectual. ¿El vendedor reivindica los derechos de propiedad
intelectual en los procesos de trabajo o servicios que utilizará o en los productos que
generará para el proyecto?
• Derechos de propiedad exclusiva. ¿El vendedor reivindica los derechos de propiedad
exclusiva en los procesos de trabajo o servicios que utilizará o en los productos que
generará para el proyecto?'!

cronogramaProyecto
	^'El cronograma del proyecto debe contener, como mínimo, una fecha de inicio y una fecha de
finalización programadas para cada actividad. Si la planificación de recursos se realiza en una
etapa temprana, entonces el cronograma mantendrá su carácter preliminar hasta que se hayan
confirmado las asignaciones de recursos y se hayan establecido las fechas de inicio y
finalización planificadas. Por lo general, este proceso se lleva a cabo antes de la conclusión del
plan para la dirección del proyecto (Sección 4.2.3.1). También puede desarrollarse un
cronograma planificado del proyecto con fechas de inicio y finalización objetivo definidas para
cada actividad. El cronograma del proyecto puede presentarse en forma de resumen,
denominado a veces cronograma maestro o cronograma de hitos, o presentarse en forma
detallada. Aunque el cronograma del proyecto puede tener forma de tabla, se presenta más a
menudo en forma gráfica, utilizando uno o más de los siguientes formatos:
• Diagramas de hitos. Estos diagramas son similares a los diagramas de barras, pero sólo
identifican el inicio o la finalización programada de los principales entregables y las
interfaces externas clave. Un ejemplo es la parte del cronograma de hitos del Gráfico 6-
14.
• Diagramas de barras. Estos diagramas, con barras que representan las actividades,
muestran las fechas de inicio y finalización de las actividades, así como las duraciones
esperadas. Los diagramas de barras son relativamente fáciles de leer y se utilizan
frecuentemente en presentaciones de dirección. Para la comunicación de control y de
dirección, se utiliza una actividad resumen más amplia y completa, denominada a veces 
actividad resumen, entre hitos o a través de múltiples paquetes de trabajo
interdependientes, y se representa en informes de diagrama de barras. Un ejemplo de esto
es la parte del cronograma resumen del Gráfico 6-14 que se presenta en un formato
estructurado EDT.
• Diagramas de red del cronograma del proyecto. Estos diagramas, con la información
de la fecha de las actividades, normalmente muestran la lógica de la red del proyecto y las
actividades del cronograma que se encuentran dentro de la ruta crítica del proyecto. Estos
diagramas pueden presentarse con el formato de diagrama de actividad en el nodo, como
se muestra en el Gráfico 6-7, o con el formato de diagrama de red del cronograma en
escala de tiempo, que a veces se denomina diagrama lógico de barras, como se muestra en
el cronograma detallado en el Gráfico 6-14. Este ejemplo también muestra cómo cada
paquete de trabajo puede planificarse como una serie de actividades relacionadas entre sí.
El Gráfico 6-14 presenta el cronograma de un ejemplo de proyecto en ejecución, con el
trabajo en curso informado hasta la fecha de los datos, que a veces también se denomina “a la
fecha” o “fecha de estado”. Para un cronograma de proyecto simple, el Gráfico 6-14 muestra
una representación gráfica de un cronograma de hitos, un cronograma resumen y un
cronograma detallado. El Gráfico 6-14 también muestra visualmente las relaciones entre los
tres diferentes niveles de presentación de un cronograma.'!

datosCronograma

	^'Los datos para el cronograma del proyecto abarcan, por lo menos, los hitos del cronograma, las
actividades del cronograma, los atributos de las actividades y la documentación de todas los
supuestos y restricciones identificados. La cantidad de datos adicionales varía según el área de
aplicación. La información suministrada frecuentemente como detalles de soporte incluye,
entre otras:
• los requisitos de recursos por periodo de tiempo, a menudo presentados en el formato de
un histograma de recursos
• los cronogramas alternativos, tales como el mejor o el peor escenario, sin nivelación de
recursos, con nivelación de recursos, con o sin fechas impuestas
• la planificación de las reservas para contingencias
Los datos del cronograma también podrían abarcar elementos tales como histogramas de
recursos, proyecciones del flujo de caja y cronogramas de pedidos y entregas.'!

decisionesHacerComprar
	^'Las decisiones de hacer o comprar documentan las conclusiones relativas a los productos,
servicios o resultados que se adquirirán fuera de la organización del proyecto y aquéllos que
serán desarrollados internamente por el equipo del proyecto. Esto también puede incluir
decisiones de obtener pólizas de seguros o contratos de garantías de cumplimiento a fin de
tratar algunos riesgos identificados. El documento de decisiones de hacer o comprar puede
consistir simplemente en una lista que incluya una justificación breve de las mismas. Estas
decisiones pueden ser modificadas a medida que las actividades de adquisición subsiguientes
indiquen la necesidad de un enfoque diferente.'!

declaracionAlcanceProyecto
	^'La declaración del alcance del proyecto describe de manera detallada los entregables del
proyecto y el trabajo necesario para crear esos entregables. La declaración del alcance del
proyecto también proporciona un entendimiento común del alcance del proyecto entre los interesados en el proyecto. Esta declaración puede contener exclusiones explícitas del alcance,
que pueden ayudar a gestionar las expectativas de los interesados. Esto permite al equipo del
proyecto realizar una planificación más detallada, sirve como guía del equipo de trabajo
durante la ejecución y proporciona la línea base para evaluar si las solicitudes de cambio o de
trabajo adicional se encuentran dentro o fuera de los límites del proyecto.
El grado y nivel de detalle con que la declaración del alcance del proyecto define el
trabajo que se realizará y el que se excluirá, pueden determinar el grado de control que el
equipo del proyecto podrá ejercer sobre el alcance global del proyecto. La declaración
detallada del alcance del proyecto incluye, ya sea directamente o por referencia a otros
documentos, lo siguiente:
• Una descripción del alcance del producto. Elabora gradualmente las características del
producto, servicio o resultado descrito en el acta de constitución del proyecto y en la
documentación de requisitos.
• Los criterios de aceptación del producto. Definen el proceso y los criterios para la
aceptación de los productos, servicios o resultados completados.
• Los entregables del proyecto. Incluyen tanto las salidas, que abarcan el producto o
servicio del proyecto, como los resultados auxiliares, tales como los informes y
documentación generados por el proceso de dirección del proyecto. Los entregables
pueden describirse de manera resumida o muy detallada.
• Las exclusiones del proyecto. Por lo general, identifican lo que está excluido del
proyecto. Establecer explícitamente lo que está fuera del alcance del proyecto ayuda a
gestionar las expectativas de los interesados.
• Las restricciones del proyecto. Enumera y describe las restricciones específicas
asociadas con el alcance del proyecto que limitan las opciones del equipo, como por
ejemplo, un presupuesto predeterminado, o fechas o hitos del cronograma impuestos por
el cliente o la organización ejecutante. Cuando un proyecto se realiza en función de un
contrato, las disposiciones contractuales constituyen generalmente restricciones. La
información relativa a las restricciones puede incluirse en la declaración del alcance del
proyecto o en un registro independiente.
• Los supuestos del proyecto. Enumeran y describen supuestos que se realizan
específicamente para el proyecto, asociados con el alcance del proyecto y el impacto
potencial de tales supuestos en el caso que fueran falsos. Como parte del proceso de
planificación, los equipos del proyecto identifican, documentan y validan frecuentemente
los supuestos. La información relativa a éstos puede incluirse en la declaración del
alcance del proyecto o en un registro independiente.'!

deliverables

	^'An approved deliverable is any unique and verifiable product, result, or capability to perform a service that must be produced to complete a process, phase, or project.'
!

deliverablesNew
		^super new
			name: 'Deliverables'; 
			description: self deliverables;
			yourself.!

diagramasRedCronogramaProyecto

	^'Los diagramas de red del cronograma del proyecto son una representación esquemática de las
actividades del cronograma del proyecto y de sus relaciones lógicas, también denominadas
dependencias. El Gráfico 6-7 muestra un diagrama de red del cronograma del proyecto. La
elaboración de un diagrama de red del cronograma del proyecto puede hacerse en forma
manual o mediante la utilización de un software de gestión de proyectos. Puede incluir todos
los detalles del proyecto o contener una o más actividades resumen. Una narración resumida
puede adjuntarse al diagrama y describir la metodología básica utilizada para secuenciar las
actividades. Todas las secuencias inusuales de las actividades dentro de la red deberán
describirse íntegramente en la narración.'!

diccionarioEDT

	^'El diccionario de la EDT es un documento generado por el proceso Crear la EDT, cuya función
es respaldar la EDT. El diccionario de la EDT proporciona una descripción más detallada de los
componentes de la EDT, incluyendo los paquetes de trabajo y las cuentas de control. La
información del diccionario de la EDT incluye, entre otros:
• el identificador del código de cuentas
• la descripción del trabajo
• la organización responsable
• una lista de hitos del cronograma
• las actividades asociadas del cronograma
• los recursos necesarios
• los estimados de costo
• los requisitos de calidad
• los criterios de aceptación
• las referencias técnicas
• la información del contrato'!

directAndManageProjectExecution

	^'Direct and Manage Project Execution is the process of performing the work defined in the project
management plan to achieve the project’s objectives. These activities include, but are not limited to:
       • Perform activities to accomplish project requirements;
       • Create project deliverables;
       • Staff, train, and manage the team members assigned to the project;
       • Obtain, manage, and use resources including materials, tools, equipment, and facilities;
       • Implement the planned methods and standards;
       • Establish and manage project communication channels, both external and internal to the project team;
       • Generate project data, such as cost, schedule, technical and quality progress, and status to facilitate
          forecasting;
       • Issue change requests and adapt approved changes into the project’s scope, plans, and environment;
       • Manage risks and implement risk response activities;
       • Manage sellers and suppliers; and
       • Collect and document lessons learned, and implement approved process improvement activities.
   The project manager, along with the project management team, directs the performance of the planned
project activities, and manages the various technical and organizational interfaces that exist within the project.
The Direct and Manage Project Execution process is directly affected by the project application area. Deliverables
are produced as outputs from processes performed to accomplish the project work planned and scheduled in
the project management plan. Work performance information, about the completion status of the deliverables
and what has been accomplished, is collected as part of project execution and is fed into the performance
reporting process. The work performance information will also be used as an input to the Monitoring and
Controlling Process Group.
   Direct and Manage Project Execution also requires implementation of approved changes covering:
       • Corrective action. Documented direction for executing the project work to bring expected future
          performance of the project work in line with the project management plan.
       • Preventive action. A documented direction to perform an activity that can reduce the probability of
          negative consequences associated with project risks.
       • Defect repair. The formally documented identification of a defect in a project component with a
          recommendation to either repair the defect or completely replace the component.
    Figure 4-6 shows the inputs, tools and techniques, and outputs for this process and the data flow diagram
is displayed in Figure 4-7.'!

directAndManageProjectExecutionNew
		^super new
			name: 'Direct And Manage Project Execution'; 
			description: self directAndManageProjectExecution;
			yourself.!

documentacionRequisitos
	^'La documentación de requisitos describe el modo en que los requisitos individuales cumplen
con las necesidades comerciales del proyecto. Los requisitos pueden comenzar a un alto nivel e
ir convirtiéndose gradualmente en requisitos más detallados, conforme se va conociendo más.
Antes de ser incorporados a la línea base, los requisitos deben ser claros (medibles y
comprobables), rastreables, completos, coherentes y aceptables para los interesados clave. El
formato de un documento de requisitos puede variar desde un documento sencillo en el que se
enumeran todos los requisitos, clasificados por interesado y por prioridad, hasta formatos más
elaborados que contienen un resumen de la junta directiva, descripciones detalladas y anexos.
Entre los componentes de la documentación de requisitos pueden incluirse, entre otros:
• La necesidad comercial u oportunidad, que describa las limitaciones de la situación actual
y las razones que llevaron a emprender el proyecto.
• Objetivos de la empresa y del proyecto a ser rastreados.
• Requisitos funcionales que describan los procesos de la empresa, la información y la
interacción con el producto, según sea el caso, que puedan ser documentados por escrito
en una lista de requisitos, en modelos o en ambos.
• Requisitos no funcionales, tales como nivel de servicio, desempeño, seguridad,
cumplimiento, capacidad de soporte, retención/depuración, etc.
• Requisitos de calidad.
• Criterios de aceptación.
• Reglas de la empresa que establecen los principios directivos de la organización.
• Impactos sobre otras áreas de la organización, tales como el centro de llamadas, la fuerza
de ventas, los grupos tecnológicos.
• Impactos sobre otras entidades dentro o fuera de la organización ejecutante.
• Requisitos de apoyo y capacitación.
• Supuestos y restricciones alrededor de los requisitos.'!

documentosAdquisicion
	^'Los documentos de la adquisición se utilizan para solicitar propuestas a posibles vendedores.
Los términos licitación, oferta o presupuesto generalmente se utilizan cuando la decisión de
selección del vendedor se basa en el precio (como cuando se compran artículos comerciales o
de tipo estándar), mientras que el término propuesta generalmente se emplea cuando otras
consideraciones, como la capacidad técnica o el enfoque técnico, son primordiales. Entre los
términos de uso común para los diferentes tipos de documentos de la adquisición, se incluyen:
solicitud de información (RFI), invitación a licitación (IFB), solicitud de propuesta (RFP),
solicitud de presupuesto (RFQ), aviso de oferta, invitación a la negociación y respuesta inicial
del vendedor. La terminología específica a las adquisiciones puede variar según la industria y la
ubicación de la adquisición.
El comprador estructura los documentos de la adquisición para facilitar la elaboración de
una respuesta precisa y completa de parte de cada posible vendedor, así como la fácil
evaluación de las respuestas. Estos documentos incluyen una descripción de la forma deseada
de respuesta, del enunciado pertinente del trabajo de la adquisición y de cualquier disposición
contractual requerida. Cuando se efectúan contrataciones con el gobierno, parte o la totalidad
del contenido y estructura de los documentos de la adquisición pueden estar definidos por
regulaciones.
La complejidad y el nivel de detalle de los documentos de la adquisición deben ser
coherentes con el valor de la adquisición planificada y con los riesgos asociados a la misma.
Estos documentos deben ser suficientes para asegurar respuestas coherentes y apropiadas,
pero con flexibilidad adecuada para permitir la consideración de las sugerencias de los
vendedores acerca de mejores formas de satisfacer los requisitos.
La emisión de una solicitud de adquisición a posibles vendedores para presentar una
propuesta u oferta se realiza normalmente conforme a las políticas de la organización del
comprador; la solicitud puede ser publicada en periódicos, boletines comerciales, registros
públicos o Internet.'!

edt

	^'La EDT es una descomposición jerárquica, basada en los entregables del trabajo que debe
ejecutar el equipo del proyecto para lograr los objetivos del proyecto y crear los entregables
requeridos, con cada nivel descendente de la EDT representando una definición cada vez más
detallada del trabajo del proyecto. La EDT se finaliza una vez que se establecen las cuentas de
control para los paquetes de trabajo y un identificador único de un código de cuentas. Estos
identificadores proporcionan una estructura para la consolidación jerárquica de los costos, del
cronograma y de la información sobre los recursos. Una cuenta de control es un punto de
control de gestión donde el alcance, el costo y el cronograma se integran y comparan con el
valor ganado para la medición del desempeño. Las cuentas de control se ubican en puntos de
gestión seleccionados dentro de la EDT. Cada cuenta de control puede incluir uno o más
paquetes de trabajo, pero cada paquete de trabajo debe estar asociado a una sola cuenta de
control.'!

enterpriseEnvironmentalFactors

^'Enterprise environmental factors refer to both internal and external environmental factors that surround or
influence a project’s success. These factors may come from any or all of the enterprises involved in the project.
Enterprise environmental factors may enhance or constrain project management options and may have a
positive or negative influence on the outcome. They are considered as inputs to most planning processes.
   Enterprise environmental factors include, but are not limited to:
       • Organizational culture, structure, and processes;
       • Government or industry standards (e.g., regulatory agency regulations, codes of conduct, product
          standards, quality standards, and workmanship standards);
       • Infrastructure (e.g., existing facilities and capital equipment);
       • Existing human resources (e.g., skills, disciplines, and knowledge, such as design, development, law,
          contracting, and purchasing);
       • Personnel administration (e.g., staffing and retention guidelines, employee performance reviews and
          training records, overtime policy, and time tracking);
       • Company work authorization systems;
       • Marketplace conditions;
       • Stakeholder risk tolerances;
       • Political climate;
       • Organization’s established communications channels;
       • Commercial databases (e.g., standardized cost estimating data, industry risk study information, and
          risk databases); and
       • Project management information systems (e.g., an automated tool, such as a scheduling software
          tool, a configuration management system, an information collection and distribution system, or web
          interfaces to other online automated systems).'!

enterpriseEnvironmentalFactorsNew
		^super new
			name: 'Enterprise Environmental Factors'; 
			description: self enterpriseEnvironmentalFactors;
			yourself.!

enunciadoAlcanceProyecto
	^'La descripción narrativa del alcance del
proyecto, incluidos los principales entregables,
hipótesis del proyecto, restricciones del
proyecto y una descripción del trabajo, que
brinda una base documentada que permite
tomar decisiones futuras sobre el proyecto, y
confirmar o desarrollar un entendimiento
común del alcance del proyecto entre los
interesados. También conocido como:
Definición del Alcance del Proyecto;
Descripción del Alcance del Proyecto; o
Declaración de Alcance del Proyecto.'!

enunciadoTrabajoProyecto
	^'
El Enunciado del Trabajo del Proyecto (SOW) es una descripción narrativa de los productos o
servicios que debe entregar el proyecto. Para proyectos internos, el iniciador del proyecto o el
patrocinador proporciona el enunciado del trabajo basado en las necesidades de la empresa o en
los requisitos del producto o del servicio. Para proyectos externos el enunciado del trabajo
puede ser proporcionado por el cliente como parte del documento de licitación; por ejemplo,
una petición de propuesta, una solicitud de información, una solicitud de oferta, o como parte
de un contrato. El enunciado del trabajo del proyecto hace referencia a:
• Una necesidad comercial. Las necesidades comerciales de una organización pueden
basarse en una demanda del mercado, un avance tecnológico, un requisito legal o una
regulación del gobierno.
Una descripción del alcance del producto. Documenta las características del producto
que el proyecto se encargará de crear. La descripción también debe documentar la
relación entre los productos o servicios que se están creando y la necesidad comercial que
el proyecto atenderá.
• Un plan estratégico. Todos los proyectos deben sustentar las metas estratégicas de la
organización. El plan estratégico de la organización ejecutante debe'!

enunciadoTrabajoRelativoAdquisicion
	^'El enunciado del trabajo para cada adquisición se elabora a partir de la línea base del alcance y
sólo define la parte del alcance del proyecto que se incluirá dentro del contrato en cuestión.
Este tipo de enunciado describe el artículo que se planea adquirir con suficiente detalle como
para permitir que los posibles vendedores determinen si están en condiciones de proporcionar
los productos, servicios o resultados requeridos. El nivel de detalle necesario puede variar en
función de la naturaleza del artículo, las necesidades del comprador o la forma del contrato
previsto. Un enunciado del trabajo puede incluir la siguiente información: las especificaciones,
la cantidad deseada, los niveles de calidad, los datos de desempeño, el período de desempeño,
el lugar de trabajo y otros requisitos.
El enunciado del trabajo relativo a adquisiciones se redacta de forma clara, completa y
concisa. Incluye una descripción de los servicios adicionales requeridos, tales como informes
de desempeño o soporte operativo para el artículo adquirido después de finalizado el
proyecto. En algunas áreas de aplicación, existen requisitos específicos de contenido y
formato para un enunciado del trabajo relativo a adquisiciones. Cada artículo individual que
se vaya a adquirir requiere un enunciado del trabajo. Sin embargo, varios productos o
servicios pueden agruparse como un único artículo por adquirir dentro de un solo enunciado
del trabajo.
Este tipo de enunciado puede ser revisado y refinado según sea necesario, a medida que el
proceso de adquisición avanza, hasta que se incorpora a un contrato firmado.'!

estimacionesCostosActividades

	^'Las estimaciones de costos de las actividades son evaluaciones cuantitativas de los costos
probables que se requieren para completar el trabajo del proyecto. Pueden presentarse de
manera resumida o detallada. Los costos se estiman para todos los recursos que se aplican a la
estimación de costos de las actividades. Esto incluye, entre otros, el trabajo directo, los
materiales, el equipo, los servicios, las instalaciones, la tecnología de la información y
categorías especiales, tales como una asignación por inflación o una reserva para contingencias
de costo. Los costos indirectos, si se incluyen en el estimado del proyecto, pueden incluirse en
el nivel de la actividad o en niveles superiores.'!

estimadosDuracionActividad
	^'Los estimados de la duración de las actividades son valoraciones cuantitativas de la cantidad
probable de periodos de trabajo que se necesitarán para completar una actividad. Los estimados
de duración no incluyen ningún retraso, como se describe en la Sección 6.2.2.3. Los estimados
de la duración de las actividades pueden incluir alguna indicación del rango de resultados
posibles. Por ejemplo:
• 2 semanas ± 2 días, para indicar que la actividad durará al menos ocho días y no más de
doce (considerando una semana laboral de cinco días).
• 15 % de probabilidad de exceder las tres semanas, para indicar una alta probabilidad (85
%) de que la actividad dure tres semanas o menos.'!

estrategiaGestionInteresados

	^'La estrategia de gestión de los interesados define un enfoque para aumentar el apoyo y
minimizar los impactos negativos de los mismos a lo largo de todo el ciclo de vida del
proyecto. Incluye elementos como:
• los interesados clave que pueden impactar significativamente en el proyecto
• el nivel de participación deseado en el proyecto, para cada interesado identificado
• los grupos de interesados y su gestión (como grupos)
Una forma común de representar la estrategia de gestión de los interesados es mediante
una matriz de análisis de los interesados. En el Gráfico 10-5, se presenta un ejemplo de una
matriz en blanco, con los encabezados de las columnas.
Parte de la información relacionada con ciertas estrategias de gestión de los interesados
podría ser demasiado sensible para incluirla en un documento compartido. El director del
proyecto debe aplicar su buen juicio con respecto al tipo de información y al nivel de detalle
que se incluirá en la estrategia de gestión de los interesados.'!

estructuraDesgloseRecursos

	^'Una estructura jerárquica de recursos por
categoría y tipo de recurso utilizada en la
nivelación de recursos de los cronogramas y
para desarrollar cronogramas limitados por los
recursos, y que puede usarse para identificar y
analizar las asignaciones de recursos humanos
a los proyectos. También conocido como:
Desglose de la Estructura de Recursos;
Estructura de Desagregación de Recursos;
Estructura de Descomposición de Recursos;
Estructura de la División de Recursos; o
Estructura Detallada de Recursos.'!

evaluacionesDesempenoEquipo

	^'A medida que se implementan esfuerzos de desarrollo del equipo del proyecto, tales como la
capacitación, el desarrollo del espíritu de equipo y la reubicación, el equipo de dirección del
proyecto realiza evaluaciones formales o informales de la eficacia del equipo. Se espera que las
estrategias y actividades eficaces de desarrollo del equipo aumenten su desempeño, lo cual
incrementa la probabilidad de cumplir con los objetivos del proyecto. Los criterios de
evaluación del desempeño del equipo deben ser establecidos por todas las partes pertinentes e
incorporados en las entradas del proceso Desarrollar el Equipo del Proyecto. Esto resulta de
especial importancia en proyectos relacionados con contratos o proyectos de negociaciones
colectivas.
El desempeño de un equipo exitoso se mide en términos de éxito técnico conforme a
objetivos acordados del proyecto, de desempeño según el cronograma del proyecto
(finalizado en el plazo requerido) y de desempeño según el presupuesto (finalizado dentro de
las restricciones financieras). Los equipos de alto desempeño se caracterizan por este
funcionamiento orientado a las tareas y a los resultados. También exhiben cualidades
específicas relacionadas con el trabajo y las personas, que representan medidas indirectas del
desempeño del proyecto.
La evaluación de la eficacia de un equipo puede incluir indicadores tales como:
• Mejoras en las habilidades que permiten a las personas realizar las asignaciones de
manera más eficaz.
• Mejoras a nivel de las competencias que ayudan al equipo a funcionar mejor como
equipo.
• Reducción del índice de rotación del personal.
• Mayor cohesión del equipo cuando los miembros comparten abiertamente
información y experiencias, y se ayudan mutuamente para mejorar el desempeño
general del proyecto.
Como resultado de realizar una evaluación del desempeño general del equipo, el equipo
de dirección del proyecto puede identificar la capacitación, el entrenamiento, la tutoría, la
asistencia o los cambios específicos requeridos para mejorar el desempeño del equipo. Esto
también debería incluir la identificación de los recursos apropiados o requeridos para alcanzar
e implementar las mejoras identificadas en la evaluación. Estos recursos y recomendaciones
para mejorar el equipo deben documentarse adecuadamente y remitirse a las partes
pertinentes. Esto resulta de especial importancia cuando los miembros del equipo forman
parte de un sindicato, participan de convenios colectivos de trabajo, se encuentran obligados
por cláusulas de cumplimiento de contrato u otras situaciones relacionadas.'!

expertJudgment

	^'Expert judgment is often used to assess the inputs used to develop the project charter. Such
judgment and expertise is applied to any technical and management details during this process. Such
expertise is provided by any group or individual with specialized knowledge or training, and is available
from many sources, including:
   • Other units within the organization,
   • Consultants,
   • Stakeholders, including customers or sponsors,
   • Professional and technical associations,
   • Industry groups,
   • Subject matter experts, and
   • Project management office (PMO).'
!

expertJudgmentNew
		^super new
			name: 'Expert Judgment'; 
			description: self expertJudgment;
			yourself.!

factoresAmbientalesEmpresa
	^'
Los factores ambientales de la empresa que pueden influir en el proceso Desarrollar el Acta de
Constitución del Proyecto incluyen, entre otros:
• las normas gubernamentales o industriales
• la infraestructura de la organización
• las condiciones del mercado'!

finalProductServiceResultTransition

	^'This output refers to the transition of the final product, service, or result that the project was authorized
to produce (or in the case of phase closure, the intermediate product, service, or result of that phase).'!

finalProductServiceResultTransitionNew
		^super new
			name: 'Final Product Service Result Transition'; 
			description: self finalProductServiceResultTransition;
			yourself.!

humanResourcePlan

	^'The human resource plan, a part of the project management plan, provides guidance on how
project human resources should be defined, staffed, managed, controlled, and eventually released.
The human resource plan should include, but not be limited to, the following:
   • Roles and responsibilities. The following should be addressed when listing the roles and
       responsibilities needed to complete a project:
       ? Role. The label describing the portion of a project for which a person is accountable. Examples
          of project roles are civil engineer, court liaison, business analyst, and testing coordinator.
          Role clarity concerning authority, responsibilities, and boundaries should be documented.
  ? Authority. The right to apply project resources, make decisions, and sign approvals. Examples
      of decisions that need clear authority include the selection of a method for completing
      an activity, quality acceptance, and how to respond to project variances. Team members
      operate best when their individual levels of authority match their individual responsibilities.
  ? Responsibility. The work that a project team member is expected to perform in order to
      complete the project’s activities.
  ? Competency. The skill and capacity required to complete project activities. If project team
      members do not possess required competencies, performance can be jeopardized. When
      such mismatches are identified, proactive responses such as training, hiring, schedule
      changes, or scope changes are initiated.
• Project organization charts. A project organization chart is a graphic display of project team
  members and their reporting relationships. It can be formal or informal, highly detailed or
  broadly framed, based on the needs of the project. For example, the project organization chart
  for a 3,000-person disaster response team will have greater detail than a project organization
  chart for an internal, twenty-person project.
• Staffing management plan. The staffing management plan, a part of the human resources plan
  within the project management plan, describes when and how human resource requirements
  will be met. The staffing management plan can be formal or informal, highly detailed or broadly
  framed, depending upon the needs of the project. The plan is updated continually during the
  project to direct ongoing team member acquisition and development actions. Information
  in the staffing management plan varies by application area and project size, but items to
  consider include:
  ? Staff acquisition. A number of questions arise when planning the acquisition of project team
      members. For example, will the human resources come from within the organization or
      from external, contracted sources? Will team members need to work in a central location
      or can they work from distant locations? What are the costs associated with each level
      of expertise needed for the project? How much assistance can the organization’s human
      resource department and functional managers provide to the project management team?
  ? Resource calendars. The staffing management plan describes necessary time frames
      for project team members, either individually or collectively, as well as when acquisition
      activities such as recruiting should start. One tool for charting human resources is a
      resource histogram. This bar chart illustrates the number of hours a person, department, or
      entire project team will be needed each week or month over the course of the project. The
      chart can include a horizontal line that represents the maximum number of hours available
      from a particular resource. Bars that extend beyond the maximum available hours identify
      the need for a resource leveling strategy, such as adding more resources or modifying the
      schedule. An example of a resource histogram is illustrated in Figure 9-6.
  ? Staff release plan. Determining the method and timing of releasing team members benefits
      both the project and team members. When team members are released from a project, the
      costs associated with those resources are no longer charged to the project, thus reducing
      project costs. Morale is improved when smooth transitions to upcoming projects are already
      planned. A staff release plan also helps mitigate human resource risks that may occur
      during or at the end of a project.
  ? Training needs. If the team members to be assigned are not expected to have the required
  competencies, a training plan can be developed as part of the project. The plan can also
  include ways to help team members obtain certifications that would support their ability to
  benefit the project.
  ? Recognition and rewards. Clear criteria for rewards and a planned system for their use helps
      promote and reinforce desired behaviors. To be effective, recognition and rewards should be
      based on activities and performance under a person’s control. For example, a team member
      who is to be rewarded for meeting cost objectives should have an appropriate level of control
      over decisions that affect expenses. Creating a plan with established times for distribution of
      rewards ensures that recognition takes place and is not forgotten. Recognition and rewards
      are part of the Develop Project Team process (Section 9.3).
  ? Compliance. The staffing management plan can include strategies for complying with
     applicable government regulations, union contracts, and other established human
     resource policies.
  ? Safety. Policies and procedures that protect team members from safety hazards can be
      included in the staffing management plan as well as the risk register.'!

humanResourcePlanNew
		^super new
			name: 'Human Resource Plan'; 
			description: self humanResourcePlan;
			yourself.!

icon

	^WordPad icon!

informacionSobreDesempenoTrabajo
	^'Información y datos, sobre la situación de las
actividades del cronograma del proyecto, que
se estén llevando a cabo para lograr el trabajo
del proyecto, recopiladas como parte de los
procesos de dirigir y gestionar la ejecución
del proyecto. La información incluye:
situación de los entregables; situación de
implantación para solicitudes de cambio,
acciones correctivas, acciones preventivas y
reparación de defectos; estimados hasta la
conclusión pronosticados; porcentaje
informado del trabajo físicamente terminado;
valor de medidas del desempeño técnico
alcanzado; fechas de inicio y finalización de
las actividades del cronograma. También
conocido como: Información sobre el
Rendimiento del Trabajo.'!

informesDesempeno
	^'Los informes de desempeño organizan y resumen la información recopilada, y presentan los
resultados de cualquier análisis realizado comparando la línea base para la medición del
desempeño. Los informes deben suministrar información sobre el avance y el estado, con el
nivel de detalle que requieran los diferentes interesados, tal como está documentado en el plan
de gestión de las comunicaciones. Entre los formatos comunes de informes de desempeño, se
encuentran los diagramas de barras, las Curvas S, los histogramas y los cuadros. El análisis de
variación, el análisis del valor ganado y los datos de proyecciones a menudo se incluyen en el
informe de desempeño. El Gráfico 10-15 presenta datos sobre el valor ganado en formato de
cuadro (Sección 7.3.2.1).
Los informes de desempeño se emiten de manera periódica y su formato puede variar
desde un simple informe de estado hasta informes más elaborados. Un informe de estado
simple puede mostrar información sobre el desempeño, como el porcentaje completado o los
indicadores de estado para cada área (p.ej., el alcance, el cronograma, los costos y la calidad).
Entre los informes más elaborados, se incluyen:
• el análisis del desempeño pasado
• el estado actual de los riesgos e incidentes
• el trabajo completado durante el período reportado
• el trabajo que deberá completarse durante el siguiente período de reporte
• el resumen de los cambios aprobados en el período
• los resultados del análisis de variación
• la conclusión proyectada del proyecto (incluido el tiempo y el costo)
• otra información relevante que debe ser revisada y analizada
'!

issueLog

	^'An issue log or action item log can be used to document and monitor the resolution of issues.
It can be used to facilitate communication and ensure a common understanding of issues. Issues
do not usually rise to the importance of becoming a project or activity but are usually addressed in
order to maintain good, constructive working relationships among various stakeholders, including
team members.
    The issues are clearly stated and categorized based on urgency and potential impact. An owner is
assigned an action item for resolution, and a target date is usually established for closure. Unresolved
issues can be a major source of conflict and project delays.'!

issueLogNew
		^super new
			name: 'Issue Log'; 
			description: self issueLog;
			yourself.!

lineaBaseAlcance
	^'La línea base del alcance es un componente del plan para la dirección del proyecto. Los
componentes de la línea base del alcance incluyen:
• La declaración del alcance del proyecto. La declaración del alcance del proyecto
incluye la descripción del alcance del producto y los entregables del proyecto, y define
los criterios de aceptación establecidos por el usuario del producto.
• La EDT. La EDT define cada entregable y su descomposición en paquetes de trabajo.
• El diccionario de la EDT. El diccionario de la EDT contiene una descripción detallada
del trabajo y documentación técnica acerca de cada elemento de la EDT.
'!

lineaBaseCronograma

	^'Una tabla documentada de las actividades del
cronograma que muestra la descripción de la
actividad, el identificador de la actividad y una
descripción suficientemente detallada del alcance
del trabajo para que los miembros del equipo del
proyecto comprendan cuál es el trabajo que
deben realizar.'!

lineaBaseDesempenoCostos
	^'La línea base del desempeño de costos es un presupuesto hasta la conclusión (BAC) aprobado y
distribuido en el tiempo, que se utiliza para medir, monitorear y controlar el desempeño global
del costo del proyecto. Se establece sumando los presupuestos aprobados por periodo de tiempo
y normalmente se representa como una Curva S, tal como se ilustra en el Gráfico 7-6. En la
técnica de gestión del valor ganado, la línea base del desempeño de costos se conoce como
línea base para la medición del desempeño (PMB).
'!

listaActividades

	^'Una tabla documentada de las actividades del
cronograma que muestra la descripción de la
actividad, el identificador de la actividad y una
descripción suficientemente detallada del alcance
del trabajo para que los miembros del equipo del
proyecto comprendan cuál es el trabajo que
deben realizar.'!

listaHitos
	^'Un hito es un punto o evento significativo dentro del proyecto. Una lista de hitos identifica
todos los hitos e indica si éstos son obligatorios, como los exigidos por contrato, u opcionales,
como los basados en la información histórica.'!

listasControlCalidad

	^'Una lista de control es una herramienta estructurada, por lo general específica de cada
componente, que se utiliza para verificar que se haya realizado una serie de pasos
necesarios. En función de los requisitos y prácticas del proyecto, las listas de control
pueden ser simples o complejas. Muchas organizaciones tienen disponibles listas de
control normalizadas para asegurar la uniformidad en tareas que se realizan
frecuentemente. En algunas áreas de aplicación, también existen listas de control
disponibles provenientes de asociaciones profesionales o de proveedores de servicios
comerciales. Las listas de control de calidad se emplean en el proceso de control de
calidad.'!

listaVendedoresCalificados
	^'Es una lista de los vendedores que han sido preseleccionados en base a sus calificaciones y
experiencia pasada, de modo que las adquisiciones sean dirigidas sólo a aquellos vendedores
que están en condiciones de ejecutar cualquier tipo de contrato resultante.'!

makeOrBuyDecisions

	^'Make-or-buy decisions document the conclusions reached regarding what project products,
services, or results will be acquired from outside the project organization, or will be performed internally
by the project team. This may also include decisions to require insurance policies or performance
bond contracts to address some of the identified risks. The make-or-buy decisions document can
be as simple as a listing that includes a short justification for the decisions. These decisions can be
altered as subsequent procurement activities indicate a requirement for a different approach.'!

makeOrBuyDecisionsNew
		^super new
			name: 'Make Or Buy Decisions'; 
			description: self makeOrBuyDecisions;
			yourself.!

matrizRastreabilidadRequisitos

	^'La matriz de rastreabilidad de requisitos es una tabla que vincula los requisitos con su origen y
los monitorea a lo largo del ciclo de vida del proyecto. La implementación de una matriz de
rastreabilidad de requisitos ayuda a asegurar que cada requisito agrega valor a la empresa,
vinculándolo con los objetivos de la empresa y del proyecto. Proporciona un medio para
monitorear los requisitos a lo largo del ciclo de vida del proyecto, lo cual ayuda a asegurar que
al final del proyecto se entreguen los requisitos aprobados en la documentación de requisitos.
Por último, proporciona una estructura para gestionar los cambios al alcance del producto.
Este proceso incluye rastrear, entre otros elementos:
• los requisitos con respecto a las necesidades, oportunidades, metas y objetivos de la
empresa
• los requisitos con respecto a los objetivos del proyecto
• los requisitos con respecto al alcance del proyecto/a los entregables de la EDT
• los requisitos con respecto al diseño del producto
• los requisitos con respecto al desarrollo del producto
• los requisitos con respecto a la estrategia y los escenarios de prueba
• los requisitos de alto nivel con respecto a los requisitos más detallados
En la matriz de rastreabilidad de requisitos pueden registrarse los atributos asociados con
cada requisito. Estos atributos ayudan a definir la información clave acerca de cada requisito.
Los atributos que se utilizan habitualmente en la matriz de rastreabilidad de requisitos,
pueden incluir: un identificador único, una descripción textual del requisito, el fundamento de
su incorporación, el responsable, la fuente, la prioridad, la versión, el estado actual (tales
como vigente, cancelado, diferido, agregado, aprobado) y la fecha de término. Además, para
cerciorarse de que el requisito ha satisfecho a los interesados, pueden incluirse otros
atributos, tales como: estabilidad, complejidad y criterios de aceptación.'!

medicionesControlCalidad

	^'Las mediciones de control de calidad son los resultados documentados de las
actividades de control de calidad, presentados en el formato especificado durante la
planificación de la calidad.'!

medicionesDesempenoTrabajo

	^'Las mediciones pueden incluir el desempeño técnico planificado con respecto al real u otras
mediciones del desempeño del alcance. Esta información se documenta y se comunica a los
interesados.'!

metricasCalidad

	^'Una métrica de calidad es una definición operativa que describe, en términos muy
específicos, un atributo del producto o del proyecto, y la manera en que el proceso de
control de calidad lo medirá. Una medición es un valor real. La tolerancia define la
variación permisible de las métricas. Por ejemplo, una métrica relacionada con el
objetivo de calidad de mantenerse dentro del límite de ± 10 por ciento del presupuesto
aprobado puede consistir en medir el costo de cada entregable y determinar el
porcentaje de desviación con respecto al presupuesto aprobado para ese entregable. Las
métricas de calidad se emplean en los procesos de aseguramiento de la calidad y de
control de calidad. Algunos ejemplos de métricas de calidad incluyen el índice de 
puntualidad, el control del presupuesto, la frecuencia de defectos, el índice de fallos, la
disponibilidad, la fiabilidad y la cobertura de las pruebas.'!

milestoneList
	^'A milestone is a significant point or event in the project. A milestone list identifies all milestones
and indicates whether the milestone is mandatory, such as those required by contract, or optional,
such as those based upon historical information.'!

milestoneListNew
		^super new
			name: 'Milestone List'; 
			description: self milestoneList;
			yourself.!

newActaDeConstitucionProyecto

	^super new
		name: 'Acta de Constitución del Proyecto';
		description: self actaDeConstitucionProyecto;
		yourself.!

newActivosProcesosOrganizacion

	^super new
		name: 'Activos de Procesos de la Organización';
		isOrganizationAsset: true;
		description: self activosProcesosOrganizacion;
		yourself.!

newAcuerdosContractualesRelacionadosRiesgos

	^super new
		name: 'Acuerdos Contractuales Relacionados con los Riesgos';
		description: self acuerdosContractualesRelacionadosRiesgos;
		yourself.!

newAcuerdosTrabajarEquipo

	^super new
		name: 'Acuerdos para Trabajar en Equipo';
		description: self acuerdosTrabajarEquipo;
		yourself.!

newAdjudicacionContratoAdquisicion

	^super new
		name: 'Adjudicación del Contrato de Adquisición';
		description: self adjudicacionContratoAdquisicion;
		yourself.!

newAdquisicionesCerradas

	^super new
		name: 'Adquisiciones Cerradas';
		description: self adquisicionesCerradas;
		yourself.!

newAsignacionesPersonalProyecto

	^super new
		name: 'Asignaciones del Personal del Proyecto';
		description: self asignacionesPersonalProyecto;
		yourself.!

newAtributosActividad

	^super new
		name: 'Atributos de la Actividad';
		description: self atributosActividad;
		yourself.!

newBaseEstimaciones

	^super new
		name: 'Base de las Estimaciones';
		description: self baseEstimaciones;
		yourself.!

newBaseEstimados

	^super new
		name: 'Base de los Estimados';
		description: self baseEstimados;
		yourself.!

newCalendariosRecursos

	^super new
		name: 'Calendarios de Recursos';
		description: self calendariosRecursos;
		yourself.!

newCasoDeNegocio

	^super new
		name: 'Caso de Negocio';
		isOrganizationAsset: true;
		description: self casoDeNegocio;
		yourself.!

newContrato

	^super new
		name: 'Contrato';
		isOrganizationAsset: true;
		description: self contrato;
		yourself.!

newCriteriosSeleccionProveedores

	^super new
		name: 'Criterios de Selección de Proveedores';
		description: self criteriosSeleccionProveedores;
		yourself.!

newCronogramaProyecto

	^super new
		name: 'Cronograma del Proyecto';
		description: self cronogramaProyecto;
		yourself.!

newDatosCronograma

	^super new
		name: 'Datos del Cronograma';
		description: self datosCronograma;
		yourself.!

newDecisionesHacerComprar

	^super new
		name: 'Documentos de la Adquisición';
		description: self decisionesHacerComprar;
		yourself.!

newDeclaracionAlcanceProyecto

	^super new
		name: 'Declaración del Alcance del Proyecto';
		description: self declaracionAlcanceProyecto;
		yourself.!

newDiagramasRedCronogramaProyecto

	^super new
		name: 'Diagramas de Red del Cronograma del Proyecto';
		description: self diagramasRedCronogramaProyecto;
		yourself.!

newDiccionarioEDT

	^super new
		name: 'Diccionario de la EDT';
		description: self diccionarioEDT;
		yourself.!

newDocumentacionRequisitos

	^super new
		name: 'Documentación de Requisitos';
		description: self documentacionRequisitos;
		yourself.!

newDocumentosAdquisicion

	^super new
		name: 'Documentos de la Adquisición';
		description: self documentosAdquisicion;
		yourself.!

newEDT

	^super new
		name: 'EDT';
		description: self edt;
		yourself.!

newEnunciadoAlcanceProyecto

	^super new
		name: 'Enunciado del Alcance del Proyecto';
		description: self enunciadoAlcanceProyecto;
		yourself.!

newEnunciadoTrabajoProyecto

	^super new
		name: 'Enunciado de Trabajo del Proyecto';
		description: self enunciadoTrabajoProyecto;
		yourself.!

newEnunciadoTrabajoRelativoAdquisicion

	^super new
		name: 'Enunciado del Trabajo Relativo a la Adquisición';
		description: self enunciadoTrabajoRelativoAdquisicion;
		yourself.!

newEstimacionesCostosActividades

	^super new
		name: 'Estimaciones de Costos de las Actividades';
		description: self estimacionesCostosActividades;
		yourself.!

newEstimadosDuracionActividad

	^super new
		name: 'Estimados de la Duración de la Actividad';
		description: self estimadosDuracionActividad;
		yourself.!

newEstrategiaGestionInteresados

	^super new
		name: 'Estrategia de Gestión de los Interesados';
		description: self estrategiaGestionInteresados;
		yourself.!

newEstructuraDesgloseRecursos

	^super new
		name: 'Estructura de Desglose de Recursos';
		description: self estructuraDesgloseRecursos;
		yourself.!

newEvaluacionesDesempenoEquipo

	^super new
		name: 'Evaluaciones del Desempeño del Equipo';
		description: self evaluacionesDesempenoEquipo;
		yourself.!

newFactoresAmbientalesEmpresa

	^super new
		name: 'Factores Ambientales de la Empresa';
		isOrganizationAsset: true;
		description: self factoresAmbientalesEmpresa;
		yourself.!

newInformacionSobreDesempenoTrabajo

	^super new
		name: 'Información sobre el Desempeño del Trabajo';
		description: self informacionSobreDesempenoTrabajo;
		yourself.!

newInformesDesempeno

	^super new
		name: 'Informes de Desempeño';
		description: self informesDesempeno;
		yourself.!

newLineaBaseAlcance

	^super new
		name: 'Línea Base del Alcance';
		description: self lineaBaseAlcance;
		yourself.!

newLineaBaseCronograma

	^super new
		name: 'Línea base del Cronograma';
		description: self lineaBaseCronograma;
		yourself.!

newLineaBaseDesempenoCostos

	^super new
		name: 'Línea Base del Desempeño de Costos';
		description: self lineaBaseDesempenoCostos;
		yourself.!

newListaActividades

	^super new
		name: 'Lista de Actividades';
		description: self listaActividades;
		yourself.!

newListaHitos

	^super new
		name: 'Lista de Hitos';
		description: self listaHitos;
		yourself.!

newListasControlCalidad

	^super new
		name: 'Listas de Control de Calidad';
		description: self listasControlCalidad;
		yourself.!

newListaVendedoresCalificados

	^super new
		name: 'Lista de Vendedores Calificados';
		description: self listaVendedoresCalificados;
		yourself.!

newMatrizRastreabilidadRequisitos

	^super new
		name: 'Matriz de Rastreabilidad de Requisitos';
		description: self matrizRastreabilidadRequisitos;
		yourself.!

newMedicionesControlCalidad

	^super new
		name: 'Mediciones de Control de Calidad';
		description: self medicionesControlCalidad;
		yourself.!

newMedicionesDesempenoTrabajo

	^super new
		name: 'Mediciones del Desempeño del Trabajo';
		description: self medicionesDesempenoTrabajo;
		yourself.!

newMetricasCalidad

	^super new
		name: 'Métricas de Calidad';
		description: self metricasCalidad;
		yourself.!

newPlanDireccionProyecto

	^super new
		name: 'Plan para la Dirección del Proyecto';
		description: self planDireccionProyecto;
		yourself.!

newPlanGestionAdquisiciones

	^super new
		name: 'Plan de Gestión de las Adquisiciones';
		description: self planGestionAdquisiciones;
		yourself.!

newPlanGestionCalidad

	^super new
		name: 'Plan de Gestión de Calidad';
		description: self planGestionCalidad;
		yourself.!

newPlanGestionComunicaciones

	^super new
		name: 'Plan de Gestión de las Comunicaciones';
		description: self planGestionComunicaciones;
		yourself.!

newPlanGestionCostos

	^super new
		name: 'Plan de Gestión de Costos';
		description: self planGestionCostos;
		yourself.!

newPlanGestionCronograma

	^super new
		name: 'Plan de Gestión del Cronograma';
		description: self planGestionCronograma;
		yourself.!

newPlanGestionRequisitos

	^super new
		name: 'Plan de Gestión de Requisitos';
		description: self planGestionRequisitos;
		yourself.!

newPlanGestionRiesgos

	^super new
		name: 'Plan de Gestión de Riesgos';
		description: self planGestionRiesgos;
		yourself.!

newPlanificacionRecursosHumanos

	^super new
		name: 'Planificación de los Recursos Humanos';
		description: self planificacionRecursosHumanos;
		yourself.!

newPlanMejorasProceso

	^super new
		name: 'Plan de Mejoras del Proceso';
		description: self planMejorasProceso;
		yourself.!

newPlanRecursosHumanos

	^super new
		name: 'Plan de Recursos Humanos';
		description: self planRecursosHumanos;
		yourself.!

newPropuestasVendedores

	^super new
		name: 'Propuestas de los Vendedores';
		description: self propuestasVendedores;
		yourself.!

newProyeccionesPresupuesto

	^super new
		name: 'Proyecciones del Presupuesto';
		description: self proyeccionesPresupuesto;
		yourself.!

newRegistroCambios

	^super new
		name: 'Registro de Cambios';
		description: self registroCambios;
		yourself.!

newRegistroIncidentes

	^super new
		name: 'Registro de Incidentes';
		description: self registroIncidentes;
		yourself.!

newRegistroInteresados

	^super new
		name: 'Registro de Interesados';
		description: self registroInteresados;
		yourself.!

newRegistroRiesgos

	^super new
		name: 'Registro de Riesgos';
		description: self registroRiesgos;
		yourself.!

newRequisitosFinanciamientoProyecto

	^super new
		name: 'Requisitos de Financiamiento del Proyecto';
		description: self requisitosFinanciamientoProyecto;
		yourself.!

newRequisitosRecursosActividad

	^super new
		name: 'Requisitos de Recursos de la Actividad';
		description: self requisitosRecursosActividad;
		yourself.!

newVendedoresSeleccionados

	^super new
		name: 'Vendedores Seleccionados';
		description: self vendedoresSeleccionados;
		yourself.!

organizationalProcessAssets

	^'Organizational process assets include any or all process related assets, from any or all of the organizations
involved in the project that can be used to influence the project’s success. These process assets include formal
and informal plans, policies, procedures, and guidelines. The process assets also include the organization’s
knowledge bases such as lessons learned and historical information. Organizational process assets may include
completed schedules, risk data, and earned value data. Updating and adding to the organizational process
assets as necessary throughout the project are generally the responsibility of the project team members.
Organizational process assets may be grouped into two categories:
        .1 Processes and Procedures
             The organization’s processes and procedures for conducting work include but are not limited to:
             • Organizational standard processes such as standards, policies (e.g., safety and health policy,
                ethics policy, and project management policy), standard product and project life cycles, and
                quality policies and procedures (e.g., process audits, improvement targets, checklists, and
                standardized process definitions for use in the organization);
             • Standardized guidelines, work instructions, proposal evaluation criteria, and performance
                measurement criteria;
             • Templates (e.g., risk, work breakdown structure, project schedule network diagram, and
                contract templates);
             • Guidelines and criteria for tailoring the organization’s set of standard processes to satisfy the
                specific needs of the project;
             • Organization communication requirements (e.g., specific communication technology available,
                allowed communication media, record retention policies, and security requirements);
             • Project closure guidelines or requirements (e.g., final project audits, project evaluations, product
                validations, and acceptance criteria);
	   • Financial controls procedures (e.g., time reporting, required expenditure and disbursement
	       reviews, accounting codes, and standard contract provisions);
	   • Issue and defect management procedures defining issue and defect controls, issue and defect
	       identification and resolution, and action item tracking;
	   • Change control procedures, including the steps by which official company standards, policies,
	       plans, and procedures—or any project documents—will be modified, and how any changes
	       will be approved and validated;
	   • Risk control procedures, including risk categories, probability definition and impact, and
	       probability and impact matrix; and
	   • Procedures for prioritizing, approving, and issuing work authorizations.
	.2 Corporate Knowledge Base
	   The organizational corporate knowledge base for storing and retrieving information includes but is
	not limited to:
	   • Process measurement databases used to collect and make available measurement data on
	       processes and products,
	   • Project files (e.g., scope, cost, schedule, and performance measurement baselines, project
	       calendars, project schedule network diagrams, risk registers, planned response actions, and
	       defined risk impact),
	   • Historical information and lessons learned knowledge bases (e.g., project records and
	       documents, all project closure information and documentation, information about both the
	       results of previous project selection decisions and previous project performance information,
	       and information from the risk management effort),
	   • Issue and defect management databases containing issue and defect status, control information,
	       issue and defect resolution, and action item results,
	   • Configuration management knowledge bases containing the versions and baselines of all official
	       company standards, policies, procedures, and any project documents, and
	   • Financial databases containing information such as labor hours, incurred costs, budgets and
	       any project cost overruns.'!

organizationalProcessAssetsNew
		^super new
			name: 'Organizational Process Assets'; 
			description: self organizationalProcessAssets;
			yourself.!

organizationalProcessAssetsUpdates!

organizationalProcessAssetsUpdatesNew
		^super new
			name: 'Organizational Process Assets Updates'; 
			description: self organizationalProcessAssetsUpdates;
			yourself.!

outputsFromPlanningProcesses
   

	^'Outputs from many of the planning processes described in Chapters 5 through 12 are integrated
to create the project management plan. Any baselines and subsidiary management plans that are
an output from other planning processes are inputs to this process. In addition, updates to these
documents can necessitate updates to the project management plan.'!

outputsFromPlanningProcessesNew
		^super new
			name: 'Outputs From Planning Processes'; 
			description: self outputsFromPlanningProcesses;
			yourself.!

parametricEstimating

	^'Parametric estimating uses a statistical relationship between historical data and other variables
(e.g., square footage in construction) to calculate an estimate for activity parameters, such as cost,
budget, and duration.
    Activity durations can be quantitatively determined by multiplying the quantity of work to be
performed by labor hours per unit of work. For example, activity duration can be estimated on a design
project by the number of drawings multiplied by the number of labor hours per drawing, or a cable
installation in meters of cable multiplied by the number of labor hours per meter. For example, if the
assigned resource is capable of installing 25 meters of cable per hour, the duration required to install
1,000 meters would be 40 hours. (1,000 meters divided by 25 meters per hour).
    This technique can produce higher levels of accuracy depending upon the sophistication and
underlying data built into the model. Parametric time estimates can be applied to a total project or to
segments of a project, in conjunction with other estimating methods.'!

parametricEstimatingNew
		^super new
			name: 'Parametric Estimating'; 
			description: self parametricEstimating;
			yourself.!

performanceReports

	^'Reports should be prepared by the project team detailing activities, accomplishments, milestones,
identified issues, and problems. Performance reports can be used to report the key information
including, but not limited to:
    • Current status,
    • Significant accomplishments for the period,
    • Scheduled activities,
    • Forecasts, and
    • Issues.'!

performanceReports2

	^'Performance reports organize and summarize the information gathered, and present the results
of any analysis as compared to the performance measurement baseline. Reports should provide the
status and progress information, at the level of detail required by various stakeholders, as documented
in the communications management plan. Common formats for performance reports include bar
charts, S-curves, histograms, and tables. Variance analysis, earned value analysis, and forecast data
is often included as part of performance reporting. Figure 10-15 gives a tabular view of earned value
data (Section 7.3.2.1).
    Performance reports are issued periodically and their format may range from a simple status report
to more elaborate reports. A simple status report might show only performance information such as
percent complete, or status dashboards for each area (e.g., scope, schedule, cost, and quality). More
elaborate reports may include:
    • Analysis of past performance,
    • Current status of risks and issues,
    • Work completed during the reporting period,
    • Work to be completed during the next reporting period,
    • Summary of changes approved in the period,
    • Results of variance analysis,
    • Forecasted project completion (including time and cost), and
    • Other relevant information to be reviewed and discussed.
'!

performanceReports2New
		^super new
			name: 'Performance Reports2'; 
			description: self performanceReports2;
			yourself.!

performanceReportsNew
		^super new
			name: 'Performance Reports'; 
			description: self performanceReports;
			yourself.!

planDireccionProyecto
	^'El plan para la dirección del proyecto integra y consolida todos los planes de gestión
subsidiarios y las líneas base de los procesos de planificación, e incluye en particular:
• el ciclo de vida seleccionado para el proyecto y los procesos que se aplicarán en cada
fase,
• los resultados de la adaptación realizada por el equipo de dirección del proyecto, a saber:
o los procesos de dirección de proyectos seleccionados por el equipo de
dirección del proyecto,
o el nivel de implementación de cada proceso seleccionado,
o las descripciones de las herramientas y técnicas que se utilizarán para llevar a
cabo esos procesos, y
o el modo en que se utilizarán los procesos seleccionados para gestionar el
proyecto específico, incluyendo las dependencias e interacciones entre dichos
procesos y las entradas y salidas esenciales.
• el modo en que se ejecutará el trabajo para alcanzar los objetivos del proyecto,
• un plan de gestión de cambios que describa el modo en que se monitorearán y controlarán
los mismos,
• un plan de gestión de la configuración que documente cómo se llevará a cabo dicha
gestión,
• el modo en que se mantendrá la integridad de las líneas base para la medición del
desempeño,
• las necesidades y las técnicas de comunicación entre los interesados, y
• las revisiones clave de gestión del contenido, alcance y tiempo, para agilizar la atención
de asuntos sin resolver y decisiones pendientes.
El plan para la dirección del proyecto puede presentarse en forma resumida o detallada y
puede estar compuesto por uno o más planes subsidiarios. El nivel de detalle de cada uno de
los planes subsidiarios depende de las necesidades del proyecto específico. Una vez que las
líneas base del plan para la dirección del proyecto han sido definidas, sólo pueden cambiarse
tras la generación y aprobación de una solicitud de cambio por medio de la ejecución del
proceso Realizar el Control Integrado de Cambios.
Las líneas base del proyecto abarcan, entre otras:
• la línea base del cronograma
• la línea base del desempeño de costos
• la línea base del alcance
Los planes subsidiarios abarcan, entre otros:
• el plan de gestión del alcance del proyecto (introducción del Capítulo 5)
• el plan de gestión de requisitos (Sección 5.1.3.2)
• el plan de gestión del cronograma (introducción al Capítulo 6)
• el plan de gestión de costos (introducción al Capítulo 7)
• el plan de gestión de calidad (Sección 8.1.3.1)
• el plan de mejoras del proceso (Sección 8.1.3.4)
• el plan de recursos humanos (Sección 9.1.3.1)
• el plan de gestión de las comunicaciones (Sección 10.2.3.1)
• el plan de gestión de riesgos (Sección 11.1.3.1)
• el plan de gestión de las adquisiciones (Sección 12.1.3.1)
Con frecuencia, las líneas base de alcance, cronograma y costo se combinan en una línea
base para la medición del desempeño, que se utiliza como línea base global del proyecto, con
respecto a la cual se puede medir el desempeño global del proyecto. La línea base para la
medición del desempeño se utiliza para la medición del valor ganado.'!

planGestionAdquisiciones
	^'El plan de gestión de las adquisiciones describe cómo se gestionarán los procesos de
adquisición, desde la elaboración de los documentos de la adquisición hasta el cierre del
contrato. Este plan de gestión de las adquisiciones puede incluir directivas para:
• los tipos de contratos que serán utilizados,
• los asuntos relacionados con la gestión de riesgos,
• determinar si se utilizarán estimaciones independientes y si son necesarias como
criterios de evaluación,
• las acciones que el equipo de dirección del proyecto puede implementar de forma
unilateral si la organización ejecutante dispone de un departamento de compras,
contrataciones o adquisiciones,
• los documentos de la adquisición estandarizados, si fueran necesarios,
• la gestión de múltiples proveedores,
• la coordinación de las adquisiciones con otros aspectos del proyecto, tales como
establecer el cronograma e informar el desempeño,
• las restricciones y asunciones que podrían afectar las adquisiciones planificadas,
• el manejo de los plazos requeridos para comprar elementos a los vendedores y la
coordinación de los mismos con el desarrollo del cronograma del proyecto,
• el manejo de las decisiones de hacer o comprar, y la vinculación de las mismas con los
procesos Estimar los Recursos de las Actividades y Desarrollar el Cronograma,
• la determinación de las fechas planificadas en cada contrato para los entregables del
mismo y la coordinación con los procesos Desarrollar el Cronograma y Controlar el
Cronograma,
• la identificación de requisitos para obtener garantías de cumplimiento o contratos de
seguros a fin de mitigar algunas formas de riesgo del proyecto,
• el establecimiento de instrucciones que se proporcionarán a los vendedores para
desarrollar y mantener una estructura de desglose del trabajo (EDT),
• la determinación de la forma y el formato que se usarán para los enunciados del trabajo
del contrato/relativo a la adquisición,
• la identificación de vendedores precalificados, si los hubiera, que se utilizarán,
• las métricas de adquisiciones que se emplearán para gestionar contratos y evaluar
vendedores.
Dependiendo de las necesidades del proyecto, un plan de gestión de las adquisiciones
puede ser formal o informal, muy detallado o formulado de manera general. El plan de
gestión de las adquisiciones es un componente subsidiario del plan para la dirección del
proyecto (Sección 4.2.3.1).'!

planGestionCalidad

	^'El plan de gestión de calidad describe cómo el equipo de dirección del proyecto
implementará la política de calidad de la organización ejecutante. Es un componente o
un plan subsidiario del plan para la dirección del proyecto (Sección 4.2.3.1).
El plan de gestión de calidad proporciona entradas al plan general para la
dirección del proyecto y aborda el control de calidad, el aseguramiento de la calidad y
métodos de mejora continua de los procesos del proyecto.
El plan de gestión de calidad puede ser formal o informal, muy detallado o
formulado de manera general. El formato y el grado de detalle se determinan en
función de los requisitos del proyecto. El plan de gestión de calidad debe revisarse en
una etapa temprana del proyecto, para asegurarse de que las decisiones estén basadas
en informaciones precisas. Los beneficios de esta revisión pueden incluir la reducción
del costo y sobrecostos en el cronograma ocasionados por el reproceso.'!

planGestionComunicaciones

	^'El plan de gestión de las comunicaciones es un plan subsidiario del plan para la dirección del
proyecto o una parte de él (Sección 4.2.3.1). Dependiendo de las necesidades del proyecto, el
plan de gestión de las comunicaciones puede ser formal o informal, muy detallado o formulado
de manera general.
Por lo general, el plan de gestión de las comunicaciones proporciona:
• los requisitos de comunicación de los interesados;
• la información que debe ser comunicada, incluidos el idioma, formato, contenido y
nivel de detalle;
• el motivo de la distribución de dicha información;
• el plazo y la frecuencia para la distribución de la información requerida;
• la persona responsable de comunicar la información;
• la persona responsable de autorizar la divulgación de información confidencial;
• la persona o los grupos que recibirán la información;
• los métodos o tecnologías utilizados para transmitir la información, tales como los
memorandos, el correo electrónico y/o los comunicados de prensa;
• los recursos asignados para las actividades de comunicación, incluidos el tiempo y el
presupuesto;
• el proceso de escalación, con identificación de los plazos y la cadena de mando
(nombres) para la escalación de aquellos incidentes que no puedan resolverse a un
nivel inferior;
• el método para actualizar y refinar el plan de gestión de las comunicaciones a medida
que el proyecto avanza y se desarrolla;
• un glosario de la terminología común;
• los diagramas de flujo de la información que circula dentro del proyecto, los flujos de
trabajo con la posible secuencia de autorizaciones, la lista de informes y los planes de
reuniones, etc.;
• las restricciones en materia de comunicación, generalmente derivadas de una
legislación o normativa específica, de la tecnología y de políticas de la organización,
etc.
El plan de gestión de las comunicaciones también puede incluir pautas y plantillas para las
reuniones sobre estado del proyecto, reuniones del equipo del proyecto, reuniones electrónicas
y correo electrónico. El uso de un sitio Web del proyecto y de un software de gestión del
proyecto también puede incluirse si se los emplea en el marco del proyecto.'!

planGestionCostos
	^'El documento que fija el formato y establece las
actividades y los criterios necesarios para
planificar, estructurar y controlar los costos del
proyecto. El plan de gestión de costos es un plan
subsidiario del plan para la dirección del
proyecto o una parte de él. También conocido
como: Plan de Administración de Costos; Plan
de Gerencia de Costos; Plan de Gerenciamiento
de Costos o Gestión de Costes.'!

planGestionCronograma
	^'El documento que establece los criterios y las
actividades para desarrollar y controlar el
cronograma del proyecto. Es un plan
subsidiario del plan para la dirección del
proyecto o una parte de él. También conocido
como: Plan de Administración del
Cronograma; Plan de Gerencia del
Cronograma; o Plan de Gerenciamiento del
Cronograma.'!

planGestionRequisitos

	^'El plan de gestión de requisitos documenta la manera en que se analizarán, documentarán y
gestionarán los requisitos a lo largo del proyecto. La relación entre fases, descrita en la Sección
2.1.3.2, ejerce una fuerte influencia sobre la manera en que se gestionan los requisitos. El
director del proyecto debe seleccionar la relación más efectiva para el proyecto y debe
documentar este enfoque dentro del plan de gestión de requisitos. Muchos de los componentes
del plan de gestión de requisitos se basan en esta relación.
Entre los componentes del plan de gestión de requisitos, pueden incluirse, entre otros:
• El modo en que las actividades de los requisitos serán planificadas, rastradas e
informadas.
• Las actividades de gestión de la configuración, tales como el modo en que se iniciarán los
cambios a los requisitos del producto, servicio o resultado; el método de análisis,
seguimiento, registro y comunicación de los impactos, y el nivel de autorización
requerido para aprobar dichos cambios.
• El proceso para otorgar prioridad a los requisitos.
• Las métricas del producto que se utilizarán y el fundamento de su uso.
• La estructura de rastreabilidad, es decir, qué atributos de los requisitos se plasmarán en la
matriz de rastreabilidad y qué otros documentos del proyecto serán rastreados.'!

planGestionRiesgos

	^'El plan de gestión de riesgos describe la manera en que se estructurará y realizará la gestión de
riesgos en el proyecto. Pasa a ser un subconjunto del plan para la dirección del proyecto
(Sección 4.2.3.1). El plan de gestión de riesgos incluye lo siguiente:
• Metodología. Define los métodos, las herramientas y las fuentes de datos que pueden
utilizarse para llevar a cabo la gestión de riesgos en el proyecto.
• Roles y responsabilidades. Define al líder, el apoyo y a los miembros del equipo de
gestión de riesgos para cada tipo de actividad del plan de gestión de riesgos, y explica
sus responsabilidades.
• Presupuesto. Asigna recursos, estima los fondos necesarios para la gestión de
riesgos, a fin de incluirlos en la línea base del desempeño de costos y establece los
protocolos para la aplicación de la reserva para contingencias (Sección 7.2.3.1).
• Calendario. Define cuándo y con qué frecuencia se realizará el proceso de gestión de
riesgos a lo largo del ciclo de vida del proyecto, establece los protocolos para la
utilización de las reservas para contingencias del cronograma y prevé las actividades
de gestión de riesgos que deben incluirse en el cronograma del proyecto (Sección
6.5.3.1).
• Categorías de riesgo. Proporciona una estructura que asegura un proceso completo
de identificación sistemática de los riesgos con un nivel de detalle coherente, y
contribuye a la efectividad y calidad del proceso Identificar los Riesgos. Una
organización puede utilizar una matriz de categorización elaborada previamente, la
cual puede consistir en una simple lista de categorías o en una Estructura de Desglose
del Riesgo (RBS). La RBS es una descripción jerárquica de los riesgos del proyecto,
identificados y organizados por categoría y subcategoría de riesgo, que identifica las
distintas áreas y causas de posibles riesgos. El Gráfico 11-4 muestra un ejemplo.
• Definiciones de la probabilidad e impacto de los riesgos. La calidad y credibilidad
del proceso Realizar el Análisis Cualitativo de Riesgos requieren que se definan
distintos niveles de probabilidad e impacto de los riesgos. Las definiciones generales
de los niveles de probabilidad e impacto se adaptan a cada proyecto individual
durante el proceso Planificar la Gestión de Riesgos para usarse en el proceso Realizar
el Análisis Cualitativo de Riesgos (Sección 11.3). El Gráfico 11-5 es un ejemplo de
definiciones de impactos negativos que podrían usarse en la evaluación de los
impactos de riesgos relacionados con cuatro objetivos del proyecto. (También pueden
elaborarse cuadros similares desde una perspectiva de impactos positivos). El Gráfico
ilustra el enfoque tanto relativo como numérico (en este caso, no lineal).
• Matriz de probabilidad e impacto. Los riesgos se clasifican por orden de prioridad
de acuerdo con sus implicaciones potenciales de tener un efecto sobre los objetivos
del proyecto. El método típico para priorizar los riesgos consiste en utilizar una tabla
de búsqueda o una Matriz de Probabilidad e Impacto (Sección 11.3.2.2). La
organización establece normalmente las combinaciones específicas de probabilidad e
impacto que llevan a calificar un riesgo de importancia “alta”, “moderada” o “baja”,
junto con la correspondiente importancia para la planificación de la respuesta a los
riesgos (Sección 11.5).
• Tolerancias revisadas de los interesados. Las tolerancias de los interesados, según
se aplican al proyecto específico, pueden revisarse en el marco del proceso Planificar
la Gestión de Riesgos.
• Formatos de los informes. Definen cómo se documentarán, analizarán y
comunicarán los resultados de los procesos de gestión de riesgos. Describe el
contenido y el formato del registro de riesgos, así como de cualquier otro informe de
riesgos requerido.
• Seguimiento. Documenta cómo se registrarán las actividades de gestión de riesgos
para beneficio del proyecto en curso, de necesidades futuras y de las lecciones
aprendidas. También documenta si los procesos de gestión de riesgos se auditarán y
de qué manera.'!

planificacionRecursosHumanos

	^'Documento que describe cómo los roles y
responsabilidades, las relaciones de
comunicación y la gestión de personal serán
tratados y estructurados para el proyecto. Es un
plan subsidiario del proyecto o una parte de él.'!

planMejorasProceso

	^'El plan de mejoras del proceso es un plan subsidiario del plan para la dirección del
proyecto (Sección 4.2.3.1). El plan de mejoras del proceso detalla los pasos para
analizar los procesos que facilitarán la identificación de actividades que incrementan su
valor. Las áreas por considerar incluyen:
• Límites del proceso. Describen la finalidad de los procesos, su inicio y
finalización, sus entradas y salidas, los datos requeridos, el propietario y los
interesados.
• Configuración del proceso. Una descripción gráfica de los procesos, con las
interfaces identificadas, que se utiliza para facilitar el análisis.
• Métricas del proceso. Junto con los límites de control, permiten analizar la
eficacia del proceso.
• Objetivos de desempeño mejorado. Guían las actividades de mejora del
proceso.'!

planRecursosHumanos

	^'El plan de recursos humanos, que forma parte del plan para la dirección del proyecto,
proporciona una guía sobre el modo en que los recursos humanos deben ser definidos,
adquiridos, dirigidos, supervisados y finalmente liberados. El plan de recursos humanos debe
incluir, entre otros, los siguientes aspectos:
• Roles y Responsabilidades. Los siguientes temas deberían abordarse al enumerar los
roles y responsabilidades necesarios para completar el proyecto:
o Rol. Denominación que describe la parte de un proyecto de la cual una persona está
encargada. Ejemplos de roles en un proyecto son el ingeniero civil, el agente de
enlace con tribunales, el analista de negocios y el coordinador de pruebas. La
claridad de los roles en cuanto a autoridad, responsabilidades y límites debe
documentarse.
o Autoridad. El derecho a aplicar los recursos del proyecto, tomar decisiones y firmar
aprobaciones. Entre los ejemplos de decisiones que requieren una autoridad clara, se
encuentran la selección de un método para completar una actividad, la aceptación de
la calidad y cómo responder a las variaciones del proyecto. Los miembros del
equipo funcionan mejor cuando sus niveles individuales de autoridad concuerdan
con sus responsabilidades individuales.
o Responsabilidad. El trabajo que se espera que realice un miembro del equipo del
proyecto a fin de completar las actividades del mismo.
o Competencia. La habilidad y la capacidad requeridas para completar las actividades
del proyecto. Si los miembros del equipo del proyecto no poseen las competencias
necesarias, el desempeño puede verse amenazado. Cuando se identifican tales
desequilibrios, se inician respuestas proactivas, tales como capacitación,
contratación, cambios en el cronograma o en el alcance.
• Organigramas del Proyecto. Un organigrama del proyecto es una representación
gráfica de los miembros del equipo del proyecto y de sus relaciones de comunicación.
Dependiendo de las necesidades del proyecto, puede ser formal o informal, muy
detallado o formulado de manera general. Por ejemplo, el organigrama de proyecto
para un equipo de respuesta a catástrofes conformado por 3.000 personas presentará
un mayor nivel de detalle que el organigrama de un proyecto interno, conformado por
20 personas.
• Plan para la Dirección de Personal. El plan para la dirección de personal, que forma
parte del plan de recursos humanos dentro del plan para la dirección del proyecto,
describe cuándo y cómo se cumplirán los requisitos de recursos humanos.
Dependiendo de las necesidades del proyecto, el plan para la dirección de personal
puede ser formal o informal, muy detallado o formulado de manera general. El plan se
actualiza constantemente durante el proyecto, a fin de dirigir la adquisición continua
de miembros del equipo y las acciones de desarrollo. Si bien la información contenida
en el plan para la dirección de personal varía según el área de aplicación y el tamaño
del proyecto, se deben considerar, entre otros, los siguientes conceptos:
o Adquisición de personal. Al planificar la adquisición de miembros del equipo del
proyecto, surgen varias preguntas. Por ejemplo, ¿los recursos humanos provendrán
de la organización misma o de fuentes externas contratadas? ¿Los miembros del
equipo deberán trabajar en un lugar centralizado o podrán trabajar desde
ubicaciones distantes? ¿Cuáles son los costos asociados con cada nivel de
experiencia necesario para el proyecto? ¿Cuánta asistencia pueden suministrar el
departamento de recursos humanos de la organización y los gerentes funcionales al
equipo de dirección del proyecto?
o Calendarios de recursos. El plan para la dirección de personal describe plazos
necesarios para los miembros del equipo del proyecto, ya sea de manera individual
o colectiva, así como cuándo deberían iniciarse las actividades de adquisición, como
la contratación de personal. Una herramienta para representar en forma de diagrama
los recursos humanos es el histograma de recursos. Este diagrama de barras ilustra
la cantidad de horas que una persona, un departamento o todo el equipo del proyecto
será requerido por semana o por mes durante el desarrollo del proyecto. El diagrama
puede incluir una línea horizontal que representa la cantidad máxima de horas
disponibles por parte de un recurso particular. Las barras que se extienden más allá
de la cantidad máxima de horas disponibles identifican la necesidad de contar con
una estrategia de nivelación de recursos, como por ejemplo agregar más recursos o
modificar el cronograma. El Gráfico 9-6 ilustra un ejemplo de histograma de
recursos.
o Plan de liberación del personal. Determinar el método y el calendario de liberación
de los miembros del equipo beneficia tanto al proyecto como a los miembros del
equipo. Cuando los miembros del equipo son liberados de un proyecto, los costos
asociados con dichos recursos ya no se aplican al proyecto, con lo que se reducen
los costos. La motivación mejora cuando se planifican con anticipación transiciones
graduales hacia próximos proyectos. Un plan de desafectación de personal también
ayuda a mitigar los riesgos relativos a los recursos humanos, que pueden ocurrir
durante un proyecto o al finalizar el mismo.
o Necesidades de capacitación. Si se espera que los miembros del equipo que se
asignarán no posean las competencias requeridas, puede desarrollarse un plan de
capacitación como parte del proyecto. El plan también puede incluir formas de
ayudar a los miembros del equipo a obtener certificaciones que respalden su
capacidad de beneficiar al proyecto.
o Reconocimiento y recompensas. Los criterios claros respecto de las recompensas y
un sistema planificado para su uso ayudan a fomentar y reforzar los
comportamientos deseados. Para ser eficaces, el reconocimiento y las recompensas
con respecto a una persona deben basarse en las actividades que están a su cargo y
en su desempeño. Por ejemplo, un miembro de un equipo que debe ser
recompensado por alcanzar los objetivos de costos debería tener un nivel de control
apropiado sobre las decisiones que atañen a los gastos. Crear un plan con periodos
establecidos de distribución de recompensas asegura que se efectúe el
reconocimiento y que no se olvide. El reconocimiento y las recompensas forman
parte del proceso Desarrollar el Equipo del Proyecto (Sección 9.3).
o Cumplimiento. El plan para la dirección de personal puede incluir estrategias para
cumplir con las normas gubernamentales aplicables, los contratos colectivos de
trabajo y otras políticas establecidas en materia de recursos humanos.
o Seguridad. Las políticas y los procedimientos que protegen a los miembros del
equipo frente a los peligros relacionados con la seguridad pueden incluirse en el
plan para la dirección de personal, así como en el registro de riesgos.'!

processImprovementPlan

	^'The process improvement plan is a subsidiary of the project management plan (Section 4.2.3.1). The
process improvement plan details the steps for analyzing processes to identify activities which enhance
their value. Areas to consider include:
   • Process boundaries. Describes the purpose of processes, their start and end, their inputs/
       outputs, the data required, the owner, and the stakeholders.
   • Process configuration. A graphic depiction of processes, with interfaces identified, used to
       facilitate analysis.
   • Process metrics. Along with control limits, allows analysis of process efficiency.
   • Targets for improved performance. Guides the process improvement activities.
.5 Project Document Updates
   Project documents that may be updated include, but are not limited to:
   • Stakeholder register, and
   • Responsibility Assignment Matrix (Section 9.1.2.1).'!

processImprovementPlanNew
		^super new
			name: 'Process Improvement Plan'; 
			description: self processImprovementPlan;
			yourself.!

procurementContractAward

	^'A procurement contract is awarded to each selected seller. The contract can be in the form of
simple purchase order or a complex document. Regardless of the document’s complexity, a contract is
a mutually binding legal agreement that obligates the seller to provide the specified products, services,
or results, and obligates the buyer to compensate the seller. A contract is a legal relationship subject
to remedy in the courts. The major components in a contract document will vary, but will sometimes
include the following:
• Statement of work or deliverables,
• Schedule baseline,
• Performance reporting,
• Period of performance,
• Roles and responsibilities,
• Seller’s place of performance,
• Pricing,
• Payment terms,
• Place of delivery,
• Inspection and acceptance criteria,
• Warranty,
• Product support,
• Limitation of liability,
• Fees and retainage,
• Penalties,
• Incentives,
• Insurance and performance bonds,
• Subordinate subcontractor approvals,
• Change request handling, and
• Termination and alternative dispute resolution (ADR) mechanisms. The ADR method can be
  decided in advance as a part of the procurement award.'
!

procurementContractAwardNew
		^super new
			name: 'Procurement Contract Award'; 
			description: self procurementContractAward;
			yourself.!

procurementDocumentation

	^'Procurement documentation includes, but is not limited to, the procurement contract with all
supporting schedules, requested unapproved contract changes, and approved change requests.
Procurement documentation also includes any seller-developed technical documentation and other
work performance information such as deliverables, seller performance reports, warranties, financial
documents including invoices and payment records, and the results of contract-related inspections.'!

procurementDocumentationNew
		^super new
			name: 'Procurement Documentation'; 
			description: self procurementDocumentation;
			yourself.!

procurementDocuments

	^'Procurement documents are used to solicit proposals from prospective sellers. Terms such as bid,
tender, or quotation are generally used when the seller selection decision will be based on price (as
when buying commercial or standard items), while a term such as proposal is generally used when
other considerations, such as technical capability or technical approach are paramount. Common
terms are in use for different types of procurement documents and may include request for information
(RFI), invitation for bid (IFB), request for proposal (RFP), request for quotation (RFQ), tender notice,
invitation for negotiation, and invitation for seller’s initial response. Specific procurement terminology
used may vary by industry and location of the procurement.
    The buyer structures procurement documents to facilitate an accurate and complete response
from each prospective seller and to facilitate easy evaluation of the responses. These documents
include a description of the desired form of the response, the relevant procurement statement of
work (SOW) and any required contractual provisions. With government contracting, some or all of the
content and structure of procurement documents can be defined by regulation.
    The complexity and level of detail of the procurement documents should be consistent with the
value of, and risks associated with, the planned procurement. Procurement documents must be
sufficient to ensure consistent, appropriate responses, but flexible enough to allow consideration of
any seller suggestions for better ways to satisfy the same requirements.
    Issuing a procurement request to potential sellers to submit a proposal or bid is normally done in
accordance with the policies of the buyer’s organization, which can include publication of the request
in public newspapers, in trade journals, in public registries, or on the internet.'!

procurementDocumentsNew
		^super new
			name: 'Procurement Documents'; 
			description: self procurementDocuments;
			yourself.!

procurementManagementPlan

	^'The procurement management plan describes how the procurement processes will be managed
from developing procurement documents through contract closure. The procurement management
plan can include guidance for:
   • Types of contracts to be used;
   • Risk management issues;
   • Whether independent estimates will be used and if they are needed as evaluation criteria;
   • Those actions the project management team can take unilaterally, if the performing organization
      has a prescribed procurement, contracting, or purchasing department;
   • Standardized procurement documents, if they are needed;
   • Managing multiple suppliers;
   • Coordinating procurement with other project aspects, such as scheduling and performance
      reporting;
   • Any constraints and assumptions that could affect planned procurements;
   • Handling the required lead times to purchase items from sellers and coordinating them with the
      project schedule development;
   • Handling the make-or-buy decisions and linking them into the Estimate Activity Resource and
      Develop Schedule processes;
   • Setting the scheduled dates in each contract for the contract deliverables and coordinating with
      the schedule development and control processes;
   • Identifying requirements for performance bonds or insurance contracts to mitigate some forms
      of project risk;
   • Establishing the direction to be provided to the sellers on developing and maintaining a work
      breakdown structure (WBS);
   • Establishing the form and format to be used for the procurement/contract statements of work;
   • Identifying prequalified sellers, if any, to be used; and
   • Procurement metrics to be used to manage contracts and evaluate sellers.
   A procurement management plan can be formal or informal, can be highly detailed or broadly
framed, and is based upon the needs of each project. The procurement management plan is a
subsidiary component of the project management plan (Section 4.2.3.1).'!

procurementManagementPlanNew
		^super new
			name: 'Procurement Management Plan'; 
			description: self procurementManagementPlan;
			yourself.!

procurementStatementsOfWork

	^'The statement of work (SOW) for each procurement is developed from the project scope baseline
and defines only that portion of the project scope that is to be included within the related contract. The
procurement SOW describes the procurement item in sufficient detail to allow prospective sellers to
determine if they are capable of providing the products, services, or results. Sufficient detail can vary
based on the nature of the item, the needs of the buyer, or the expected contract form. Information
included in a SOW can include specifications, quantity desired, quality levels, performance data, period
of performance, work location, and other requirements.
    The procurement SOW is written to be clear, complete, and concise. It includes a description of any
collateral services required, such as performance reporting or post-project operational support for the
procured item. In some application areas, there are specific content and format requirements for a
procurement SOW. Each individual procurement item requires a SOW. However, multiple products or
services can be grouped as one procurement item within a single SOW.
    The procurement SOW can be revised and refined as required as it moves through the procurement
process until incorporated into a signed contract award.'!

procurementStatementsOfWorkNew
		^super new
			name: 'Procurement Statements Of Work'; 
			description: self procurementStatementsOfWork;
			yourself.!

projectCharter

	^'The project charter documents the business needs, current understanding of the customer’s needs,
and the new product, service, or result that it is intended to satisfy, such as:
   • Project purpose or justification,
   • Measurable project objectives and related success criteria,
   • High-level requirements,
   • High-level project description,
   • High-level risks,
   • Summary milestone schedule,
   • Summary budget,
   • Project approval requirements (what constitutes project success, who decides the project is
  successful, and who signs off on the project),
   • Assigned project manager, responsibility, and authority level, and
   • Name and authority of the sponsor or other person(s) authorizing the project charter.'
!

projectCharterNew
		^super new
			name: 'Project Charter'; 
			description: self projectCharter;
			yourself.!

projectDocuments

	^'Project documents that are often considered include:
• Risk register (Section 11.5.1.1), and
• Risk-related contract decisions (Section 11.5.3.2).'!

projectDocumentsNew
		^super new
			name: 'Project Documents'; 
			description: self projectDocuments;
			yourself.!

projectDocumentUpdates

	^'Project documents that may be updated include, but are not limited to:
• Requirements documents,
• Project logs (issue, assumptions, etc.),
• Risk register, and
• Stakeholder register.'!

projectDocumentUpdatesNew
		^super new
			name: 'Project Document Updates'; 
			description: self projectDocumentUpdates;
			yourself.!

projectFundingRequirements

	^'Total funding requirements and periodic funding requirements (e.g., quarterly, annually) are
derived from the cost baseline. The cost baseline will include projected expenditures plus anticipated
liabilities. Funding often occurs in incremental amounts that are not continuous, which appear as
steps as shown in Figure 7-6. The total funds required are those included in the cost baseline, plus
management reserves, if any.'!

projectFundingRequirementsNew
		^super new
			name: 'Project Funding Requirements'; 
			description: self projectFundingRequirements;
			yourself.!

projectManagementPlan

	^'The project management plan integrates and consolidates all of the subsidiary management plans
and baselines from the planning processes and includes but is not limited to:
   • The life cycle selected for the project and the processes that will be applied to each phase,
   • Results of the tailoring by the project management team as follows:
      ? Project management processes selected by the project management team,
      ? Level of implementation of each selected process,
      ? Descriptions of the tools and techniques to be used for accomplishing those processes, and
      ? How the selected processes will be used to manage the specific project, including the
          dependencies and interactions among those processes, and the essential inputs and outputs.
   • How work will be executed to accomplish the project objectives,
   • A change management plan that documents how changes will be monitored and controlled,'!

projectManagementPlanNew
		^super new
			name: 'Project Management Plan'; 
			description: self projectManagementPlan;
			yourself.!

projectManagementPlanUpdates

	^'Elements of the project management plan that may be updated include, but are not limited to:
• Requirements management plan,
• Schedule management plan,
• Cost management plan,
• Quality management plan,
• Human resource plan,
• Communications management plan,
• Risk management plan,
• Procurement management plan, and
• Project baselines.'!

projectManagementPlanUpdatesNew
		^super new
			name: 'Project Management Plan Updates'; 
			description: self projectManagementPlanUpdates;
			yourself.!

projectSchedule

	^'As a minimum, the project schedule includes a planned start date and planned finish date for each
activity. If resource planning is done at an early stage, then the project schedule would remain preliminary
until resource assignments have been confirmed and scheduled start and finish dates are established.
This process usually happens no later than completion of the project management plan (Section 4.2.3.1).
A project target schedule may also be developed with a defined target start and target finish for each
activity. The project schedule may be presented in summary form, sometimes referred to as the master
schedule or milestone schedule, or presented in detail. Although a project schedule can be presented in
tabular form, it is more often presented graphically, using one or more of the following formats:
    • Milestone charts. These charts are similar to bar charts, but only identify the scheduled start
        or completion of major deliverables and key external interfaces. An example is the milestone
        schedule portion of Figure 6-14.
    • Bar charts. These charts, with bars representing activities, show activity start and end dates,
        as well as expected durations. Bar charts are relatively easy to read, and are frequently used
        in management presentations. For control and management communication, the broader,
        more comprehensive summary activity, sometimes referred to as a hammock activity, is used
        between milestones or across multiple interdependent work packages, and is displayed in bar
        chart reports. An example is the summary schedule portion of Figure 6-14 that is presented in
        a WBS structured format.
    • Project schedule network diagrams. These diagrams, with activity date information, usually
        show both the project network logic and the project’s critical path schedule activities. These
        diagrams can be presented in the activity-on-node diagram format, as shown in Figure 6-7, or
        presented in a time-scaled schedule network diagram format that is sometimes called a logic
        bar chart, as shown for the detailed schedule in Figure 6-14. This example also shows how
        each work package is planned as a series of related activities.

    Figure 6-14 shows the schedule for a sample project being executed, with the work in progress
reported through the data date, which is sometimes also called the as-of date or status date. For a
simple project schedule, Figure 6-14 gives a graphic display of a milestone schedule, a summary
schedule, and a detailed schedule. Figure 6-14 also visually shows the relationships among the three
different levels of schedule presentation.
'!

projectScheduleNetworkDiagrams

	^'Project schedule network diagrams are schematic displays of the project’s schedule activities and
the logical relationships among them, also referred to as dependencies. Figure 6-7 illustrates a project
schedule network diagram. A project schedule network diagram can be produced manually or by
using project management software. It can include full project details, or have one or more summary
activities. A summary narrative can accompany the diagram and describe the basic approach used to
sequence the activities. Any unusual activity sequences within the network should be fully described
within the narrative.'!

projectScheduleNetworkDiagramsNew
		^super new
			name: 'Project Schedule Network Diagrams'; 
			description: self projectScheduleNetworkDiagrams;
			yourself.!

projectScheduleNew
		^super new
			name: 'Project Schedule'; 
			description: self projectSchedule;
			yourself.!

projectScopeStatement

	^'The project scope statement describes, in detail, the project’s deliverables and the work required
to create those deliverables. The project scope statement also provides a common understanding of
the project scope among project stakeholders. It may contain explicit scope exclusions that can assist
in managing stakeholder expectations. It enables the project team to perform more detailed planning,
guides the project team’s work during execution, and provides the baseline for evaluating whether
requests for changes or additional work are contained within or outside the project’s boundaries.
    The degree and level of detail to which the project scope statement defines the work that will be
performed and the work that is excluded can determine how well the project management team can
control the overall project scope. The detailed project scope statement includes, either directly, or by
reference to other documents, the following:
    • Product scope description. Progressively elaborates the characteristics of the product, service,
       or result described in the project charter and requirements documentation.
    • Product acceptance criteria. Defines the process and criteria for accepting completed
       products, services, or results.
    • Project deliverables. Deliverables include both the outputs that comprise the product or
       service of the project, as well as ancillary results, such as project management reports and
       documentation. The deliverables may be described at a summary level or in great detail.
    • Project exclusions. Generally identifies what is excluded as from the project. Explicitly stating
       what is out of scope for the project helps to manage stakeholders’ expectations.
    • Project constraints. Lists and describes the specific project constraints associated with the
       project scope that limits the team’s options, for example, a predefined budget or any imposed dates
       or schedule milestones that are issued by the customer or performing organization. When a project
       is performed under contract, contractual provisions will generally be constraints. Information on
       constraints may be listed in the project scope statement or in a separate log.
    • Project assumptions. Lists and describes the specific project assumptions associated with the
       project scope and the potential impact of those assumptions if they prove to be false. Project
       teams frequently identify, document, and validate assumptions as part of their planning process.
       Information on assumptions may be listed in the project scope statement or in a separate log.'
!

projectScopeStatementNew
		^super new
			name: 'Project Scope Statement'; 
			description: self projectScopeStatement;
			yourself.!

projectStaffAssignments

	^'The project is staffed when appropriate people have been assigned through the previously described
methods. The documentation of these assignments can include a project team directory, memos to
team members, and names inserted into other parts of the project management plan, such as project
organization charts and schedules.'!

projectStaffAssignmentsNew
		^super new
			name: 'Project Staff Assignments'; 
			description: self projectStaffAssignments;
			yourself.!

projectStatementOfWork

^'The statement of work (SOW) is a narrative description of products or services to be delivered by
the project. For internal projects, the project initiator or sponsor provides the statement of work based
on business needs, product, or service requirements. For external projects, the statement of work can
be received from the customer as part of a bid document, for example, request for proposal, request
for information, request for bid, or as part of a contract. The SOW references:
    • Business need. An organization’s business need may be based on a market demand, technological
        advance, legal requirement, or government regulation.
    • Product scope description. This documents the characteristics of the product that the project
        will be undertaken to create. The description should also document the relationship between the
        products or services being created and the business need that the project will address.
    • Strategic plan. The strategic plan documents the organization’s strategic goals. Therefore, all
        projects should be aligned with the strategic plan.
'!

projectStatementOfWorkNew
		^super new
			name: 'Project Statement Of Work'; 
			description: self projectStatementOfWork;
			yourself.!

propuestasVendedores
	^'Las propuestas de los vendedores, preparadas en respuesta a un paquete de formularios de la
adquisición, conforman el conjunto de informaciones básicas que será utilizado por un
organismo de evaluación a fin de seleccionar uno o más oferentes (vendedores).'!

proyeccionesPresupuesto

	^'El valor de una EAC calculada o de una EAC ascendente debe documentarse y comunicarse a
los interesados.'!

qualifiedSellerList

	^'A listing of sellers who have been pre-screened for their qualifications and past experience, so that
procurements are directed to only those sellers who can perform on any resulting contracts.'!

qualifiedSellerListNew
		^super new
			name: 'Qualified Seller List'; 
			description: self qualifiedSellerList;
			yourself.!

qualityChecklists

	^'A checklist is a structured tool, usually component-specific, used to verify that a set of required
steps has been performed. Checklists range from simple to complex based on project requirements and
practices. Many organizations have standardized checklists available to ensure consistency in frequently
performed tasks. In some application areas, checklists are also available from professional associations
or commercial service providers. Quality checklists are used in the quality control process.'!

qualityChecklistsNew
		^super new
			name: 'Quality Checklists'; 
			description: self qualityChecklists;
			yourself.!

qualityControlMeasurements!

qualityControlMeasurementsNew
		^super new
			name: 'Quality Control Measurements'; 
			description: self qualityControlMeasurements;
			yourself.!

qualityManagementPlan

	^'The quality management plan describes how the project management team will implement
the performing organization’s quality policy. It is a component or a subsidiary plan of the project
management plan (Section 4.2.3.1).
    The quality management plan provides input to the overall project management plan and includes
quality control, quality assurance, and continuous process improvement approaches for the project.
    The quality management plan may be formal or informal, highly detailed, or broadly framed. The
style and detail is determined by the requirements of the project. The quality management plan should
be reviewed early in the project to ensure that decisions are based on accurate information. The
benefits of this review can include reduction of cost and schedule overruns caused by rework.'
!

qualityManagementPlanNew
		^super new
			name: 'Quality Management Plan'; 
			description: self qualityManagementPlan;
			yourself.!

qualityMetrics

	^'A quality metric is an operational definition that describes, in very specific terms, a project or
product attribute and how the quality control process will measure it. A measurement is an actual
value. The tolerance defines the allowable variations on the metrics. For example, a metric related to
the quality objective of staying within the approved budget by ± 10% could be to measure the cost of
every deliverable and determine the percent variance from the approved budget for that deliverable.
Quality metrics are used in the quality assurance and quality control processes. Some examples of
quality metrics include on-time performance, budget control, defect frequency, failure rate, availability,
reliability, and test coverage.'!

qualityMetricsNew
		^super new
			name: 'Quality Metrics'; 
			description: self qualityMetrics;
			yourself.!

registroCambios

	^'Un registro de cambios se utiliza para documentar los cambios que se realizan durante el
proyecto. Dichos cambios y su impacto en el proyecto en términos de tiempo, costos y riesgos
deben ser comunicados a los interesados apropiados.'!

registroIncidentes

	^'Un registro de incidentes o registro de elementos de acción puede utilizarse para documentar y
monitorear la resolución de incidentes. Se lo puede utilizar para facilitar la comunicación y
asegurar una comprensión común de los incidentes. Por lo general, los incidentes no adquieren
tanta importancia como para convertirse en un proyecto o una actividad, pero normalmente se
los aborda a fin de mantener relaciones laborales óptimas y constructivas entre los diferentes
interesados, incluyendo los miembros del equipo.
Los mismos se enuncian con claridad y se clasifican según su urgencia e impacto
potencial. Se asigna un responsable a cada elemento de acción para su resolución, y
generalmente se establece una fecha objetivo para el cierre. Los incidentes no resueltos
pueden constituir una fuente importante de conflictos y retrasos en el proyecto.'!

registroInteresados
	^'El principal resultado del proceso Identificar a los Interesados es el registro de interesados. Este
documento contiene todos los detalles relacionados con los interesados identificados, entre
ellos:
• La información de identificación: nombre, puesto en la organización, ubicación, rol
en el proyecto, información de contacto.
• La información de evaluación: principales requisitos, principales expectativas,
influencia potencial en el proyecto, fase en el ciclo de vida donde el interés es mayor.
• La clasificación de los interesados: interno/externo, partidario/neutral/opositor, etc.'!

registroRiesgos

	^'Las salidas principales del proceso Identificar los Riesgos son las entradas iniciales al registro
de riesgos. El registro de riesgos contiene al final los resultados de los demás procesos de
gestión de riesgos a medida que se llevan a cabo, dando como resultado un incremento en el
nivel y tipo de información contenida en el registro de riesgos conforme transcurre el tiempo.
La preparación del registro de riesgos comienza en el proceso Identificar los Riesgos con la
siguiente información, y luego queda a disposición para otros procesos de dirección de
proyectos y de Gestión de los Riesgos del Proyecto.
• Lista de riesgos identificados. Los riesgos identificados se describen con un nivel de
detalle razonable. Puede aplicarse una estructura sencilla para los riesgos de la lista,
tal como: un EVENTO puede ocurrir, causando un IMPACTO, o Si tal CAUSA, un
EVENTO puede ocurrir, provocando un EFECTO. Además de la lista de riesgos
identificados, las causas de esos riesgos pueden volverse más evidentes. Se trata de
condiciones o eventos fundamentales que pueden dar lugar a uno o más riesgos
identificados. Deben registrarse y utilizarse para apoyar la identificación futura de
riesgos tanto para el proyecto en cuestión como para otros proyectos.
• Lista de respuestas potenciales. A veces pueden identificarse respuestas potenciales
a un riesgo durante el proceso Identificar los Riesgos. Estas respuestas, si se
identifican durante este proceso, pueden ser útiles como entradas para el proceso
Planificar la Respuesta a los Riesgos (Sección 11.5).'!

requirementsDocumentation

	^'Requirements documentation describes how individual requirements meet the business need for the
project. Requirements may start out at a high level and become progressively more detailed as more is
known. Before being baselined, requirements must be unambiguous (measurable and testable), traceable,
complete, consistent, and acceptable to key stakeholders. The format of a requirements document may
range from a simple document listing all the requirements categorized by stakeholder and priority, to
more elaborate forms containing executive summary, detailed descriptions, and attachments.
Components of requirements documentation can include, but, are not limited to:
• Business need or opportunity to be seized, describing the limitations of the current situation
  and why the project has been undertaken;
• Business and project objectives for traceability;
• Functional requirements, describing business processes, information, and interaction with the
  product, as appropriate which can be documented textually in a requirements list, in models,
  or both;
• Non-functional requirements, such as level of service, performance, safety, security, compliance,
  supportability, retention/purge, etc.;
• Quality requirements;
• Acceptance criteria;
• Business rules stating the guiding principles of the organization;
• Impacts to other organizational areas, such as the call center, sales force, technology groups;
• Impacts to other entities inside or outside the performing organization;
• Support and training requirements; and
• Requirements assumptions and constraints.
'!

requirementsDocumentationNew
		^super new
			name: 'Requirements Documentation'; 
			description: self requirementsDocumentation;
			yourself.!

requirementsManagementPlan

	^'The requirements management plan documents how requirements will be analyzed, documented,
and managed throughout the project. The phase-to-phase relationship, described in Section 2.1.3.2,
strongly influences how requirements are managed. The project manager must choose the most
effective relationship for the project and document this approach in the requirements management
plan. Many of the requirements management plan components are based on that relationship.
    Components of the requirements management plan can include, but are not limited to:
    • How requirements activities will be planned, tracked, and reported;
    • Configuration management activities such as how changes to the product, service, or result
       requirements will be initiated, how impacts will be analyzed, how they will be traced, tracked,
       and reported, as well as the authorization levels required to approve these changes;
    • Requirements prioritization process;
    • Product metrics that will be used and the rationale for using them; and
    • Traceability structure, that is, which requirements attributes will be captured on the traceability
  matrix and to which other project documents requirements will be traced.
'!

requirementsManagementPlanNew
		^super new
			name: 'Requirements Management Plan'; 
			description: self requirementsManagementPlan;
			yourself.!

requirementsTraceabilityMatrix

	^'The requirements traceability matrix is a table that links requirements to their origin and traces
them throughout the project life cycle. The implementation of a requirements traceability matrix helps
ensure that each requirement adds business value by linking it to the business and project objectives.
It provides a means to track requirements throughout the project life cycle, helping to ensure that
requirements approved in the requirements documentation are delivered at the end of the project.
Finally, it provides a structure for managing changes to the product scope.
    This process includes, but is not limited to tracing:
    • Requirements to business needs, opportunities, goals, and objectives;
    • Requirements to project objectives;
    • Requirements to project scope/WBS deliverables;
    • Requirements to product design;
    • Requirements to product development;
    • Requirements to test strategy and test scenarios; and
    • High-level requirements to more detailed requirements.
    Attributes associated with each requirement can be recorded in the requirements traceability matrix.
These attributes help to define key information about the requirement. Typical attributes used in the
requirements traceability matrix may include: a unique identifier, a textual description of the requirement,
the rationale for inclusion, owner, source, priority, version, current status (such as active, cancelled,
deferred, added, approved) and date completed. Additional attributes to ensure that the requirement has
met stakeholders’ satisfaction may include stability, complexity, and acceptance criteria.'!

requirementsTraceabilityMatrixNew
		^super new
			name: 'Requirements Traceability Matrix'; 
			description: self requirementsTraceabilityMatrix;
			yourself.!

requisitosFinanciamientoProyecto
	^'Los requisitos de financiamiento, totales y periódicos (p.ej., trimestrales, anuales) se derivan de
la línea base de costo. La línea base de costo incluirá los gastos proyectados más las deudas
anticipadas. A menudo, el financiamiento tiene lugar en cantidades incrementales que no son
continuas y que aparecen como peldaños según se ilustra en el Gráfico 7-6. Los fondos totales
necesarios son aquéllos incluidos en la línea base de costo, más las reservas de gestión, si
corresponde.
'!

requisitosRecursosActividad

	^'La salida del proceso Estimar los Recursos de las Actividades identifica los tipos y la cantidad
de recursos necesarios para cada actividad de un paquete de trabajo. Estos requisitos pueden
sumarse para determinar los recursos estimados para cada paquete de trabajo. El nivel de
detalle y especificidad de las descripciones de los requisitos de recursos puede variar según el
área de aplicación. La documentación de los requisitos de recursos para cada actividad puede
incluir la base de la estimación de cada recurso, así como los supuestos considerados al
determinar los tipos de recursos que se aplican, su disponibilidad y en qué cantidad se utilizan.'!

resourceBreakdownStructure

	^'The resource breakdown structure is a hierarchical structure of the identified resources by resource
category and resource type. Examples of resource categories include labor, material, equipment, and
supplies. Resource types can include the skill level, grade level or other information as appropriate to
the project. The resource breakdown structure is useful for organizing and reporting project schedule
data with resource utilization information.'!

resourceBreakdownStructureNew
		^super new
			name: 'Resource Breakdown Structure'; 
			description: self resourceBreakdownStructure;
			yourself.!

resourceCalendars

	^'Information on which resources (such as people, equipment, and material) are potentially available
during planned activity period, described in Sections 9.2.3.2 and 12.2.3.3, is used for estimating
resource utilization. Resource calendars specify when and how long identified project resources will
be available during the project. This information may be at the activity or project level. This knowledge
includes consideration of attributes such as resource experience and/or skill level, as well as various
geographical locations from which the resources originate and when they may be available.
    The composite resource calendar includes the availability, capabilities, and skills of human resources
(Section 9.2). For example, during the early phases of an engineering design project, the pool of resources
might include junior and senior engineers in large numbers. During later phases of the same project,
however, the pool can be limited to those individuals who are knowledgeable about the project as a
result of having worked on the earlier phases of the project.
    Today project managers operate in a global environment and work on projects characterized by cultural
diversity. Team members often have diverse industry experience, multiple languages, and sometimes operate
in the ‘’team language’’ that is a different language or norm than their native one. The project management
team should capitalize on cultural differences, focus on developing and sustaining the project team throughout
the project life cycle, and promote working together interdependently in a climate of mutual trust. Developing
the project team improves the people skills, technical competencies, and overall team environment and
project performance. It requires clear, timely, effective, and efficient communication between team members
throughout the life of the project. Objectives of developing a project team include, but are not limited to:
        • Improve knowledge and skills of team members in order to increase their ability to complete project
            deliverables, while lowering costs, reducing schedules, and improving quality;
        • Improve feelings of trust and agreement among team members in order to raise morale, lower
            conflict, and increase team work; and
        • Create a dynamic and cohesive team culture to improve both individual and team productivity, team
            spirit, and cooperation, and to allow cross-training and mentoring between team members to share
            knowledge and expertise.'!

resourceCalendarsNew
		^super new
			name: 'Resource Calendars'; 
			description: self resourceCalendars;
			yourself.!

riskManagementPlan

	^'The risk management plan describes how risk management will be structured and performed
on the project. It becomes a subset of the project management plan (Section 4.2.3.1). The risk
management plan includes the following:
• Methodology. Defines the approaches, tools, and data sources that may be used to perform
   risk management on the project.
• Roles and responsibilities. Defines the lead, support, and risk management team members
   for each type of activity in the risk management plan, and clarifies their responsibilities.
• Budgeting. Assigns resources, estimates funds needed for risk management for inclusion in
  the cost performance baseline, and establishes protocols for application of contingency reserve
  (Section 7.2.3.1).
• Timing. Defines when and how often the risk management process will be performed throughout
  the project life cycle, establishes protocols for application of schedule contingency reserves,
  and establishes risk management activities to be included in the project schedule (Section
  6.5.3.1).
• Risk categories. Provides a structure that ensures a comprehensive process of systematically
  identifying risks to a consistent level of detail and contributes to the effectiveness and quality
  of the Identify Risks process. An organization can use a previously prepared categorization
  framework which might take the form of a simple list of categories or might be structured
  into a Risk Breakdown Structure (RBS). The RBS is a hierarchically organized depiction of the
  identified project risks arranged by risk category and subcategory that identifies the various
  areas and causes of potential risks. An example is shown in Figure 11-4.
• Definitions of risk probability and impact. The quality and credibility of the Perform Qualitative
  Risk Analysis process requires that different levels of the risks’ probabilities and impacts be
  defined. General definitions of probability levels and impact levels are tailored to the individual
  project during the Plan Risk Management process for use in the Perform Qualitative Risk
  Analysis process (Section 11.3). Figure 11-5 is an example of definitions of negative impacts
  that could be used in evaluating risk impacts related to four project objectives. (Similar tables
  could be established with a positive impact perspective). The figure illustrates both relative and
  numeric (in this case, nonlinear) approaches.
• Probability and impact matrix. Risks are prioritized according to their potential implications
  for having an effect on the project’s objectives. A typical approach to prioritizing risks is to use
  a look-up table or a Probability and Impact Matrix (Section 11.3.2.2). The specific combinations
  of probability and impact that lead to a risk being rated as “high,” “moderate,” or “low”
  importance, with the corresponding importance for planning responses to the risk (Section
  11.5), are usually set by the organization.
• Revised stakeholders’ tolerances. Stakeholders’ tolerances, as they apply to the specific
  project, may be revised in the Plan Risk Management process.
• Reporting formats. Defines how the outcomes of the risk management processes will be
  documented, analyzed, and communicated. It describes the content and format of the risk
  register as well as any other risk reports required.
• Tracking. Documents how risk activities will be recorded for the benefit of the current project,
  as well as for future needs and lessons learned, as well as whether and how risk management
  processes will be audited.'
!

riskManagementPlanNew
		^super new
			name: 'Risk Management Plan'; 
			description: self riskManagementPlan;
			yourself.!

riskRegister

	^'The primary outputs from Identify Risks are the initial entries into the risk register. The risk register
ultimately contains the outcomes of the other risk management processes as they are conducted,
resulting in an increase in the level and type of information contained in the risk register over time. The
preparation of the risk register begins in the Identify Risks process with the following information, and
then becomes available to other project management and Project Risk Management processes.
    • List of identified risks. The identified risks are described in as much detail as is reasonable. A
       simple structure for risks in the list may be applied, such as EVENT may occur, causing IMPACT,
       or If CAUSE, EVENT may occur, leading to EFFECT. In addition to the list of identified risks, the
       root causes of those risks may become more evident. These are the fundamental conditions or
       events that may give rise to one or more identified risks. They should be recorded and used to
       support future risk identification for this and other projects.
    • List of potential responses. Potential responses to a risk may sometimes be identified during
       the Identify Risks process. These responses, if identified in this process, may be useful as inputs
       to the Plan Risk Responses process (Section 11.5).'!

riskRegisterNew
		^super new
			name: 'Risk Register'; 
			description: self riskRegister;
			yourself.!

riskRegisterUpdates

	^'The risk register is started during the Identify Risks process. The risk register is updated with
information from Perform Qualitative Risk Analysis and the updated risk register is included in the
project documents. The risk register updates from Perform Qualitative Risk Analysis include:
• Relative ranking or priority list of project risks. The probability and impact matrix can be
  used to classify risks according to their individual significance. Using combinations of each
  risk’s probability of occurring and the impact on objectives if it were to occur, risks will be
  prioritized relative to each other by sorting them into groups of “high risk,” “moderate risk,”
  and “low risk.” Risks may be listed by priority separately for schedule, cost, and performance
  since organizations may value one objective over another. The project manager can then use
  the prioritized list of risks to focus attention on those items of high significance (high risk) to the
  most important objectives, where responses can lead to better project outcomes. A description
  of the basis for the assessed probability and impact should be included for risks assessed as
  important to the project.
• Risks grouped by categories. Risk categorization can reveal common root causes of risk or
  project areas requiring particular attention. Discovering concentrations of risk may improve the
  effectiveness of risk responses.
• Causes of risk or project areas requiring particular attention. Discovering concentrations
  of risk may improve the effectiveness of risk responses.
• List of risks requiring response in the near-term. Those risks that require an urgent response
  and those that can be handled at a later date may be put into different groups.
• List of risks for additional analysis and response. Some risks might warrant more analysis,
  including Quantitative Risk Analysis, as well as response action.
• Watchlists of low-priority risks. Risks that are not assessed as important in the Perform
  Qualitative Risk Analysis process can be placed on a watchlist for continued monitoring.
• Trends in qualitative risk analysis results. As the analysis is repeated, a trend for particular
  risks may become apparent, and can make risk response or further analysis more or less
  urgent/important.'!

riskRegisterUpdatesNew
		^super new
			name: 'Risk Register Updates'; 
			description: self riskRegisterUpdates;
			yourself.!

riskRelatedContractDecisions

	^'Decisions to transfer risk, such as agreements for insurance, services, and other items as appropriate
are selected in this process. This may happen as a result of mitigating or transferring part or all of the threat
or enhancing or sharing part or all of the opportunity. The contract type selected also provides a mechanism
for sharing the risks. These decisions are inputs to the Plan Procurements (Section 12.1) process.'
!

riskRelatedContractDecisionsNew
		^super new
			name: 'Risk Related Contract Decisions'; 
			description: self riskRelatedContractDecisions;
			yourself.!

scheduleBaseline

	^'A schedule baseline is a specific version of the project schedule developed from the schedule
network analysis. It is accepted and approved by the project management team as the schedule
baseline with baseline start dates and baseline finish dates. The schedule baseline is a component of
the project management plan.'!

scheduleBaselineNew
		^super new
			name: 'Schedule Baseline'; 
			description: self scheduleBaseline;
			yourself.!

scheduleData

	^'The schedule data for the project schedule includes at least the schedule milestones, schedule
activities, activity attributes, and documentation of all identified assumptions and constraints. The
amount of additional data varies by application area. Information frequently supplied as supporting
detail includes, but is not limited to:
   • Resource requirements by time period, often in the form of a resource histogram,
   • Alternative schedules, such as best-case or worst-case, not resource-leveled, or resource-
        leveled, with or without imposed dates, and
   • Scheduling of contingency reserves.
    Schedule data could include such items as resource histograms, cash-flow projections, and order
and delivery schedules.'!

scheduleDataNew
		^super new
			name: 'Schedule Data'; 
			description: self scheduleData;
			yourself.!

scheduleManagementPlan

	^'The schedule management plan defines how schedule contingencies will be reported and assessed.
Described in Section 6.0.'!

scheduleManagementPlanNew
		^super new
			name: 'Schedule Management Plan'; 
			description: self scheduleManagementPlan;
			yourself.!

scopeBaseline

	^'• Scope statement. The scope statement (Section 5.2.3.1) provides the product description,
  acceptance criteria, key deliverables, project boundaries, assumptions, and constraints about
  the project. One basic assumption that needs to be made when estimating project costs is
  whether the estimates will be limited to direct project costs only or whether the estimates
  will also include indirect costs. Indirect costs are those costs that cannot be directly traced
  to a specific project and therefore will be accumulated and allocated equitably over multiple
  projects by some approved and documented accounting procedure. One of the most common
  constraints for many projects is a limited project budget. Examples of other constraints are
  required delivery dates, available skilled resources, and organizational policies.
• Work breakdown structure. The project WBS (Section 5.3.3.1) provides the relationships
   among all the components of the project and the project deliverables (Section 4.3.3.1).
• WBS dictionary. The WBS dictionary (Section 5.3.3.2) and related detailed statements of
    work provide an identification of the deliverables and a description of the work in each WBS
    component required to produce each deliverable.
    Additional information that may be found in the scope baseline that includes requirements with
contractual and legal implications are health, safety, security, performance, environmental, insurance,
intellectual property rights, licenses, and permits. All of this information should be considered when
developing the cost estimates.'!

scopeBaselineNew
		^super new
			name: 'Scope Baseline'; 
			description: self scopeBaseline;
			yourself.!

selectedSellers

	^'The sellers selected are those sellers who have been judged to be in a competitive range based
upon the outcome of the proposal or bid evaluation, and who have negotiated a draft contract that will
become the actual contract when an award is made. Final approval of all complex, high-value, high-
risk procurements will generally require organizational senior management approval prior to award.'!

selectedSellersNew
		^super new
			name: 'Selected Sellers'; 
			description: self selectedSellers;
			yourself.!

sellerProposals

	^'Seller proposals prepared in response to a procurement document package form the basic set of
information that will be used by an evaluation body to select one or more successful bidders (sellers).'
!

sellerProposalsNew
		^super new
			name: 'Seller Proposals'; 
			description: self sellerProposals;
			yourself.!

sourceSelectionCriteria

	^'Selection criteria are often included as a part of the procurement documents. Such criteria are
developed and used to rate or score seller proposals, and can be objective or subjective.
    Selection criteria can be limited to purchase price if the procurement item is readily available from
a number of acceptable sellers. Purchase price in this context includes both the cost of the item and
all ancillary expenses such as delivery.
    Other selection criteria can be identified and documented to support an assessment for more
complex products, services, or results. Some examples are shown below.
• Understanding of need. How well does the seller’s proposal address the procurement statement of work?
• Overall or life-cycle cost. Will the selected seller produce the lowest total cost of ownership
       (purchase cost plus operating cost)?
• Technical capability. Does the seller have, or can the seller be reasonably expected to acquire,
       the technical skills and knowledge needed?
• Risk. How much risk is embedded in the statement of work, how much risk will be assigned to
       the selected seller and how does the seller mitigate risk?
• Management approach. Does the seller have, or can the seller be reasonably expected to
       develop, management processes and procedures to ensure a successful project?
• Technical approach. Do the seller’s proposed technical methodologies, techniques, solutions,
       and services meet the procurement documents requirements or are they likely to provide more
       or less than the expected results?
• Warranty. What does the seller propose to warrant for the final product, and through what
  time period?
• Financial capacity. Does the seller have, or can the seller reasonably be expected to obtain,
  the necessary financial resources?
• Production capacity and interest. Does the seller have the capacity and interest to meet
  potential future requirements?
• Business size and type. Does the seller’s enterprise meet a specific category of business
  such as small, women-owned, or disadvantaged small business, as defined by the buyer or
  established by governmental agency and set forth as a condition of the contract award?
• Past performance of sellers. What has been the past experience with selected sellers?
• References. Can the seller provide references from prior customers verifying the seller’s work
  experience and compliance with contractual requirements?
• Intellectual property rights. Does the seller assert intellectual property rights in the work
  processes or services they will use or in the products they will produce for the project?
• Proprietary rights. Does the seller assert proprietary rights in the work processes or services
  they will use or in the products they will produce for the project?'
!

sourceSelectionCriteriaNew
		^super new
			name: 'Source Selection Criteria'; 
			description: self sourceSelectionCriteria;
			yourself.!

stakeholderManagementStrategy

	^'The stakeholder management strategy defines an approach to increase the support and minimize
negative impacts of stakeholders throughout the entire project life cycle. It includes elements such as:
   • Key stakeholders who can significantly impact the project,
   • Level of participation in the project desired for each identified stakeholder, and
   • Stakeholder groups and their management (as groups).
   A common way of representing the stakeholder management strategy is a stakeholder analysis
matrix. An example of a blank matrix with column headers is provided in Figure 10-5.

    Some of the information related to certain stakeholder management strategies could be too sensitive
to be included in a shared document. The project manager must exercise judgment with regard to the
type of information and the level of detail to be included in the stakeholder management strategy.'!

stakeholderManagementStrategyNew
		^super new
			name: 'Stakeholder Management Strategy'; 
			description: self stakeholderManagementStrategy;
			yourself.!

stakeholderRegister

	^'The main output of the Identify Stakeholders process is the stakeholder register. This contains all
details related to the identified stakeholders including, but not limited to:
   • Identification information: Name, organizational position, location, role in the project,
        contact information;
   • Assessment information: Major requirements, main expectations, potential influence in the
       project, phase in the life cycle with the most interest; and
   • Stakeholder classification: Internal/external, supporter/neutral/resistor, etc.'!

stakeholderRegisterNew
		^super new
			name: 'Stakeholder Register'; 
			description: self stakeholderRegister;
			yourself.!

teamingAgreements

	^'Teaming agreements are legal contractual agreements between two or more entities to form a
partnership or joint venture, or some other arrangement as defined by the parties. The agreement
defines buyer-seller roles for each party. Whenever the new business opportunity ends, the teaming
agreement also ends. Whenever a teaming agreement is in effect, the planning process for the project
is significantly impacted. Thus whenever a teaming agreement is in place on a project, the roles of
buyer and seller are predetermined, and such issues as scope of work, competition requirements, and
other critical issues are generally predefined.'!

teamingAgreementsNew
		^super new
			name: 'Teaming Agreements'; 
			description: self teamingAgreements;
			yourself.!

teamPerformanceAssessments

	^'As project team development efforts such as training, team building, and co-location are
implemented, the project management team makes formal or informal assessments of the project
team’s effectiveness. Effective team development strategies and activities are expected to increase the
team’s performance, which increases the likelihood of meeting project objectives. Team performance
assessment criteria should be determined by all appropriate parties and incorporated in the Develop
Project Team inputs. This is especially important in contract-related or collective bargaining projects.
    The performance of a successful team is measured in terms of technical success according to
agreed-upon project objectives, performance on project schedule (finished on time), and performance
on budget (finished within financial constraints). High-performance teams are characterized by these
task-oriented and results-oriented outcomes. They also exhibit specific job-related and people-related
qualities that represent indirect measures of project performance.
    The evaluation of a team’s effectiveness may include indicators such as:
    • Improvements in skills that allow individuals to perform assignments more effectively,
    • Improvements in competencies that help the team perform better as a team,
    • Reduced staff turnover rate, and
    • Increased team cohesiveness where team members share information and experiences openly
        and help each other to improve the overall project performance.
    As a result of conducting an evaluation of the team’s overall performance, the project management
team can identify the specific training, coaching, mentoring, assistance, or changes required to
improve the team’s performance. This should also include identification of the proper or required
resources necessary to achieve and implement the improvements identified in the assessment. These
resources and recommendations for team improvement should be well documented and forwarded to
the appropriate parties. This is especially important when team members are part of a union, involved
in collective bargaining, bound by contract performance clauses, or other related situations.'!

teamPerformanceAssessmentsNew
		^super new
			name: 'Team Performance Assessments'; 
			description: self teamPerformanceAssessments;
			yourself.!

validatedChanges

	^'Any changed or repaired items are inspected and will be either accepted or rejected before notification of the decision is provided. Rejected items may require rework.'
!

validatedChangesNew
		^super new
			name: 'Validated Changes'; 
			description: self validatedChanges;
			yourself.!

validatedDeliverables

	^'Validated deliverables have been completed and checked for correctness by the Perform Quality
Control process.'!

validatedDeliverablesNew
		^super new
			name: 'Validated Deliverables'; 
			description: self validatedDeliverables;
			yourself.!

vendedoresSeleccionados

	^'Los vendedores seleccionados son aquellos para los que, en función del resultado de la
evaluación de la propuesta u oferta, se ha establecido que se encuentran en un rango
competitivo, y quienes han negociado un contrato preliminar que se convertirá en el contrato
real cuando se formalice la adjudicación. La aprobación final de todas las adquisiciones
complejas, de alto riesgo y valor, requiere por lo general la aprobación de los directivos de la
organización antes de la adjudicación.'!

wbs

	^'The WBS is a deliverable-oriented hierarchical decomposition of the work to be executed by the
project team, to accomplish the project objectives and create the required deliverables, with each
descending level of the WBS representing an increasingly detailed definition of the project work. The
WBS is finalized by establishing control accounts for the work packages and a unique identifier from a
code of accounts. These identifiers provide a structure for hierarchical summation of costs, schedule, and
resource information. A control account is a management control point where scope, cost, and schedule
are integrated and compared to the earned value for performance measurement. Control accounts are
placed at selected management points in the WBS. Each control account may include one or more work
packages, but each of the work packages must be associated with only one control account.'!

wbsDictionary

	^'The WBS dictionary is a document generated by the Create WBS process that supports the WBS.
The WBS dictionary provides more detailed descriptions of the components in the WBS, including work
packages and control accounts. Information in the WBS dictionary includes, but is not limited to:
   • Code of account identifier,
   • Description of work,
   • Responsible organization,
   • List of schedule milestones,
   • Associated schedule activities,
   • Resources required,
   • Cost estimates,
   • Quality requirements,
   • Acceptance criteria,
   • Technical references, and
   • Contract information.'
!

wbsDictionaryNew
		^super new
			name: 'Wbs Dictionary'; 
			description: self wbsDictionary;
			yourself.!

wbsNew
		^super new
			name: 'Wbs'; 
			description: self wbs;
			yourself.!

workPerformanceInformation

	^'Information from project activities is routinely collected as the project progresses. This information
can be related to various performance results including, but not limited to:
   • Deliverable status,
   • Schedule progress, and
   • Costs incurred.'
!

workPerformanceInformationNew
		^super new
			name: 'Work Performance Information'; 
			description: self workPerformanceInformation;
			yourself.!

workPerformanceMeasurements

	^'The calculated SV and SPI values for WBS components, in particular the work packages and control
accounts, are documented and communicated to stakeholders.'!

workPerformanceMeasurements2

	^'The calculated CV, SV, CPI, and SPI values for WBS components, in particular the work packages
and control accounts, are documented and communicated to stakeholders.'!

workPerformanceMeasurements2New
		^super new
			name: 'Work Performance Measurements2'; 
			description: self workPerformanceMeasurements2;
			yourself.!

workPerformanceMeasurementsNew
		^super new
			name: 'Work Performance Measurements'; 
			description: self workPerformanceMeasurements;
			yourself.! !
!PMBOKDocumentDefinition class categoriesFor: #acceptedDeliverables!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #acceptedDeliverablesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #actaDeConstitucionProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityAttributes!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityAttributesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityCostEstimates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityCostEstimatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityDurationEstimates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityDurationEstimatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityList!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityListNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityResourceRequirements!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activityResourceRequirementsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #activosProcesosOrganizacion!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #acuerdosContractualesRelacionadosRiesgos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #acuerdosTrabajarEquipo!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #adjudicacionContratoAdquisicion!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #adquisicionesCerradas!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #analogousEstimating!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #analogousEstimatingNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #approvedChangeRequests!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #approvedChangeRequestsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #asignacionesPersonalProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #atributosActividad!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #baseEstimaciones!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #baseEstimados!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #basisOfEstimates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #basisOfEstimatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #budgetForecasts!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #budgetForecastsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #businessCase!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #businessCaseNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #calendariosRecursos!public! !
!PMBOKDocumentDefinition class categoriesFor: #casoDeNegocio!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #changeLog!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #changeLogNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #changeRequests!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #changeRequestsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #changeRequestStatusUpdates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #changeRequestStatusUpdatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #closedProcurements!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #closedProcurementsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #communicationsManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #communicationsManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #contract!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #contractNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #contrato!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #costManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #costManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #costPerformanceBaseline!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #costPerformanceBaselineNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #criteriosSeleccionProveedores!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #cronogramaProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #datosCronograma!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #decisionesHacerComprar!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #declaracionAlcanceProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #deliverables!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #deliverablesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #diagramasRedCronogramaProyecto!public! !
!PMBOKDocumentDefinition class categoriesFor: #diccionarioEDT!public! !
!PMBOKDocumentDefinition class categoriesFor: #directAndManageProjectExecution!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #directAndManageProjectExecutionNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #documentacionRequisitos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #documentosAdquisicion!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #edt!public! !
!PMBOKDocumentDefinition class categoriesFor: #enterpriseEnvironmentalFactors!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #enterpriseEnvironmentalFactorsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #enunciadoAlcanceProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #enunciadoTrabajoProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #enunciadoTrabajoRelativoAdquisicion!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #estimacionesCostosActividades!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #estimadosDuracionActividad!public! !
!PMBOKDocumentDefinition class categoriesFor: #estrategiaGestionInteresados!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #estructuraDesgloseRecursos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #evaluacionesDesempenoEquipo!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #expertJudgment!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #expertJudgmentNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #factoresAmbientalesEmpresa!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #finalProductServiceResultTransition!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #finalProductServiceResultTransitionNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #humanResourcePlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #humanResourcePlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #icon!public! !
!PMBOKDocumentDefinition class categoriesFor: #informacionSobreDesempenoTrabajo!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #informesDesempeno!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #issueLog!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #issueLogNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #lineaBaseAlcance!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #lineaBaseCronograma!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #lineaBaseDesempenoCostos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #listaActividades!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #listaHitos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #listasControlCalidad!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #listaVendedoresCalificados!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #makeOrBuyDecisions!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #makeOrBuyDecisionsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #matrizRastreabilidadRequisitos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #medicionesControlCalidad!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #medicionesDesempenoTrabajo!public! !
!PMBOKDocumentDefinition class categoriesFor: #metricasCalidad!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #milestoneList!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #milestoneListNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #newActaDeConstitucionProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newActivosProcesosOrganizacion!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newAcuerdosContractualesRelacionadosRiesgos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newAcuerdosTrabajarEquipo!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newAdjudicacionContratoAdquisicion!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newAdquisicionesCerradas!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newAsignacionesPersonalProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newAtributosActividad!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newBaseEstimaciones!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newBaseEstimados!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newCalendariosRecursos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newCasoDeNegocio!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newContrato!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newCriteriosSeleccionProveedores!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newCronogramaProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newDatosCronograma!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newDecisionesHacerComprar!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newDeclaracionAlcanceProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newDiagramasRedCronogramaProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newDiccionarioEDT!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newDocumentacionRequisitos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newDocumentosAdquisicion!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEDT!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEnunciadoAlcanceProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEnunciadoTrabajoProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEnunciadoTrabajoRelativoAdquisicion!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEstimacionesCostosActividades!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEstimadosDuracionActividad!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEstrategiaGestionInteresados!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEstructuraDesgloseRecursos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newEvaluacionesDesempenoEquipo!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newFactoresAmbientalesEmpresa!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newInformacionSobreDesempenoTrabajo!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newInformesDesempeno!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newLineaBaseAlcance!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newLineaBaseCronograma!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newLineaBaseDesempenoCostos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newListaActividades!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newListaHitos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newListasControlCalidad!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newListaVendedoresCalificados!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newMatrizRastreabilidadRequisitos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newMedicionesControlCalidad!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newMedicionesDesempenoTrabajo!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newMetricasCalidad!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanDireccionProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanGestionAdquisiciones!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanGestionCalidad!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanGestionComunicaciones!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanGestionCostos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanGestionCronograma!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanGestionRequisitos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanGestionRiesgos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanificacionRecursosHumanos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanMejorasProceso!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPlanRecursosHumanos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newPropuestasVendedores!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newProyeccionesPresupuesto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newRegistroCambios!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newRegistroIncidentes!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newRegistroInteresados!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newRegistroRiesgos!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newRequisitosFinanciamientoProyecto!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newRequisitosRecursosActividad!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #newVendedoresSeleccionados!instance creation!public! !
!PMBOKDocumentDefinition class categoriesFor: #organizationalProcessAssets!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #organizationalProcessAssetsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #organizationalProcessAssetsUpdates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #organizationalProcessAssetsUpdatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #outputsFromPlanningProcesses!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #outputsFromPlanningProcessesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #parametricEstimating!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #parametricEstimatingNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #performanceReports!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #performanceReports2!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #performanceReports2New!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #performanceReportsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #planDireccionProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planGestionAdquisiciones!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planGestionCalidad!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planGestionComunicaciones!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planGestionCostos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planGestionCronograma!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planGestionRequisitos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planGestionRiesgos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planificacionRecursosHumanos!public! !
!PMBOKDocumentDefinition class categoriesFor: #planMejorasProceso!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #planRecursosHumanos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #processImprovementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #processImprovementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementContractAward!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementContractAwardNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementDocumentation!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementDocumentationNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementDocuments!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementDocumentsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementStatementsOfWork!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #procurementStatementsOfWorkNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectCharter!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectCharterNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectDocuments!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectDocumentsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectDocumentUpdates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectDocumentUpdatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectFundingRequirements!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectFundingRequirementsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectManagementPlanUpdates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectManagementPlanUpdatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectSchedule!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectScheduleNetworkDiagrams!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectScheduleNetworkDiagramsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectScheduleNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectScopeStatement!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectScopeStatementNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectStaffAssignments!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectStaffAssignmentsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectStatementOfWork!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #projectStatementOfWorkNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #propuestasVendedores!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #proyeccionesPresupuesto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualifiedSellerList!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualifiedSellerListNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityChecklists!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityChecklistsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityControlMeasurements!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityControlMeasurementsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityMetrics!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #qualityMetricsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #registroCambios!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #registroIncidentes!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #registroInteresados!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #registroRiesgos!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #requirementsDocumentation!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #requirementsDocumentationNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #requirementsManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #requirementsManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #requirementsTraceabilityMatrix!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #requirementsTraceabilityMatrixNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #requisitosFinanciamientoProyecto!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #requisitosRecursosActividad!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #resourceBreakdownStructure!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #resourceBreakdownStructureNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #resourceCalendars!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #resourceCalendarsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskRegister!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskRegisterNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskRegisterUpdates!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskRegisterUpdatesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskRelatedContractDecisions!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #riskRelatedContractDecisionsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scheduleBaseline!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scheduleBaselineNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scheduleData!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scheduleDataNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scheduleManagementPlan!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scheduleManagementPlanNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scopeBaseline!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #scopeBaselineNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #selectedSellers!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #selectedSellersNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #sellerProposals!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #sellerProposalsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #sourceSelectionCriteria!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #sourceSelectionCriteriaNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #stakeholderManagementStrategy!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #stakeholderManagementStrategyNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #stakeholderRegister!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #stakeholderRegisterNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #teamingAgreements!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #teamingAgreementsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #teamPerformanceAssessments!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #teamPerformanceAssessmentsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #validatedChanges!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #validatedChangesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #validatedDeliverables!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #validatedDeliverablesNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #vendedoresSeleccionados!integration!public! !
!PMBOKDocumentDefinition class categoriesFor: #wbs!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #wbsDictionary!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #wbsDictionaryNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #wbsNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #workPerformanceInformation!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #workPerformanceInformationNew!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #workPerformanceMeasurements!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #workPerformanceMeasurements2!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #workPerformanceMeasurements2New!pmi english!public! !
!PMBOKDocumentDefinition class categoriesFor: #workPerformanceMeasurementsNew!pmi english!public! !

