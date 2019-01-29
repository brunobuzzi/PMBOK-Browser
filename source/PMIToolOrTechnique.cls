"Filed out from Dolphin Smalltalk 7"!

PMIDeliverableDefinition subclass: #PMIToolOrTechnique
	instanceVariableNames: 'specificDescription images'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PMIToolOrTechnique guid: (GUID fromString: '{63bad83a-fcad-4b61-a008-11b439756e94}')!
PMIToolOrTechnique comment: ''!
!PMIToolOrTechnique categoriesForClass!Kernel-Objects! !
!PMIToolOrTechnique methodsFor!

addImage: aString

	^images add: aString!

hasImages

	^images notEmpty!

images
	^images!

images: anObject
	images := anObject!

initialize

	super initialize.

	specificDescription := ''.
	images := OrderedCollection new.!

parentProcess
	^self getAllProcesses detect: [:each | each includesToolOrTechnique: self ] ifNone: [nil]!

parentProcessAreaName
	^''!

parentProcesses
	^self getAllProcesses select: [:each | each includesToolOrTechnique: self ]!

parentProcessGroupName
	^''!

parentProcessName

	^self parentProcess name!

printIOType
	^'Tool'!

printName

	^'Tool or Technique'!

removeImage: aString

	^images remove: aString!

searchInProcessInputSelector

	^#includesToolOrTechnique:!

searchInProcessOutputSelector

	^#includesToolOrTechnique:!

specificDescription
	^specificDescription!

specificDescription: anObject
	specificDescription := anObject! !
!PMIToolOrTechnique categoriesFor: #addImage:!public! !
!PMIToolOrTechnique categoriesFor: #hasImages!public! !
!PMIToolOrTechnique categoriesFor: #images!accessing!private! !
!PMIToolOrTechnique categoriesFor: #images:!accessing!private! !
!PMIToolOrTechnique categoriesFor: #initialize!public! !
!PMIToolOrTechnique categoriesFor: #parentProcess!public! !
!PMIToolOrTechnique categoriesFor: #parentProcessAreaName!public! !
!PMIToolOrTechnique categoriesFor: #parentProcesses!public! !
!PMIToolOrTechnique categoriesFor: #parentProcessGroupName!public! !
!PMIToolOrTechnique categoriesFor: #parentProcessName!public! !
!PMIToolOrTechnique categoriesFor: #printIOType!public! !
!PMIToolOrTechnique categoriesFor: #printName!public! !
!PMIToolOrTechnique categoriesFor: #removeImage:!public! !
!PMIToolOrTechnique categoriesFor: #searchInProcessInputSelector!public! !
!PMIToolOrTechnique categoriesFor: #searchInProcessOutputSelector!public! !
!PMIToolOrTechnique categoriesFor: #specificDescription!accessing!private! !
!PMIToolOrTechnique categoriesFor: #specificDescription:!accessing!private! !

!PMIToolOrTechnique class methodsFor!

acquisition

	^'When the performing organization lacks the in-house staff needed to complete a project, the
required services may be acquired from outside sources. This can involve hiring individual consultants
or subcontracting work to another organization.'!

acquisitionNew
		^super new
			name: 'Acquisition'; 
			description: self acquisition;
			yourself.!

actividadesDesarrolloEspirituEquipo
	^'Las actividades de desarrollo del espíritu de equipo pueden variar desde un asunto tratado en
cinco minutos durante una reunión de revisión del estado de la situación hasta un seminario
organizado por profesionales fuera de la empresa, diseñado para mejorar las relaciones
interpersonales. El objetivo de las actividades de desarrollo del espíritu de equipo consiste en
ayudar a los miembros del equipo a trabajar en conjunto de manera eficaz. Las estrategias de
desarrollo del espíritu de equipo resultan especialmente valiosas cuando los miembros del
equipo trabajan desde ubicaciones distantes, sin el beneficio del contacto cara a cara. La
comunicación y las actividades informales pueden ayudar a generar un clima de confianza y a
establecer buenas relaciones laborales.
Una de las habilidades más importantes para el desarrollo de un ambiente de equipo
consiste en gestionar los problemas del equipo del proyecto y discutirlos como asuntos del
equipo. Debe fomentarse el trabajo en conjunto de todo el equipo en pos de la resolución de
estos problemas. Para constituir equipos del proyecto eficaces, los directores de proyecto
deben obtener el apoyo de la alta dirección y el compromiso de los miembros del equipo,
incorporar un sistema adecuado de reconocimiento y recompensas, crear una identidad de
equipo, gestionar los conflictos con eficacia, promover la confianza y una comunicación
transparente y abierta entre los miembros del equipo y, sobre todo, ser un buen líder para el
equipo.
El desarrollo del espíritu de equipo es un proceso permanente que resulta fundamental
para el éxito del proyecto. Si bien el desarrollo del espíritu de equipo resulta esencial durante
las fases iniciales de un proyecto, se trata de un proceso recurrente. Resulta inevitable que
haya cambios en el entorno de un proyecto y, para gestionarlos de manera eficaz, debe
aplicarse un esfuerzo sostenido o renovado que promueva el desarrollo del espíritu de equipo.
El director del proyecto debe monitorear continuamente el funcionamiento y el desempeño
del equipo a fin de establecer si es necesario implementar acciones para prevenir o corregir
diversos problemas del equipo.
Según una teoría, existen cinco etapas de desarrollo que los equipos pueden atravesar.
Normalmente, estas etapas se presentan en orden. Sin embargo, es frecuente que un equipo
quede atascado en una etapa particular o retroceda a una etapa anterior. Además, en el caso
de proyectos cuyos miembros del equipo han trabajado juntos en el pasado, es posible que se
salte una de las etapas.
• Formación. En esta fase, el equipo se reúne y se informa acerca del proyecto y de
cuáles son sus roles y responsabilidades formales. En esta fase, los miembros del
equipo tienden a actuar de manera independiente y no suficientemente abierta. Para
más información, consultar el modelo de desarrollo de equipos de Tuckman [6].
• Turbulencia. Durante esta fase, el equipo comienza a abordar el trabajo del proyecto,
las decisiones técnicas y el enfoque de dirección del proyecto. Si los miembros del
equipo no colaboran ni se muestran abiertos a ideas y perspectivas diferentes, el
ambiente puede tornarse destructivo.
• Normalización. En la fase de normalización, los miembros del equipo comienzan a
trabajar en conjunto y adaptan sus comportamientos y hábitos de trabajo para apoyar
al equipo. Los miembros del equipo comienzan a confiar unos en otros.
• Desempeño. Los equipos que alcanzan la etapa de desempeño funcionan como una
unidad bien organizada. Son interdependientes y enfrentan los problemas con eficacia
y sin complicaciones.
• Disolución. En la fase de disolución, el equipo completa el trabajo y finaliza el
proyecto.
La duración de una etapa particular depende de la dinámica, el tamaño y el liderazgo del
equipo. Los directores del proyecto deben comprender cabalmente la dinámica de equipo a
fin de lograr que los miembros de su equipo atraviesen todas las etapas de manera eficaz.'!

acuerdosNegociados
	^'En toda relación de adquisición, el acuerdo definitivo y equitativo de todos los asuntos,
reclamaciones y controversias pendientes a través de la negociación es un objetivo
fundamental. En los casos en que no es factible llegar a un acuerdo mediante la negociación
directa, puede examinarse el empleo de algún método alternativo para la resolución de
conflictos, incluyendo la mediación o el arbitraje. Cuando todo recurso falla, iniciar un litigio
en los tribunales es la opción menos deseable.'!

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

additionalQualityPlanningTools

	^'Other quality planning tools are often used to better define the quality requirements and plan
effective quality management activities. These include, but are not limited to:
    • Brainstorming (defined in Section 11.2.2.2).
    • Affinity diagrams, used to visually identify logical groupings based on natural relationships.
    • Force field analysis, which are diagrams of the forces for and against change.
    • Nominal group techniques, to allow ideas to be brainstormed in small groups and then
       reviewed by a larger group.
    • Matrix diagrams, which include two, three, or four groups of information and show relationships
       between factors, causes, and objectives. Data in a matrix is organized in rows and columns
       with intersecting cells that can be filled with information that describes the demonstrated
       relationship between the items located in the row and column.
    • Prioritization matrices, which provide a way of ranking a diverse set of problems and/or
       issues (usually generated through brainstorming) by their importance.'!

additionalQualityPlanningToolsNew
		^super new
			name: 'Additional Quality Planning Tools'; 
			description: self additionalQualityPlanningTools;
			yourself.!

adjustingLeadsLags

	^'Adjusting leads and lags is used to find ways to bring project activities that are behind into alignment
with plan.'
!

adjustingLeadsLagsNew
		^super new
			name: 'Adjusting Leads and Lags'; 
			description: self adjustingLeadsLags;
			yourself.!

administracionReclamaciones
	^'Los cambios impugnados y los cambios potencialmente constructivos son aquellos cambios
solicitados respecto de los cuales el comprador y el vendedor no pueden llegar a un acuerdo
sobre la compensación por el cambio, o incluso sobre si un cambio ha tenido lugar. Estos
cambios impugnados se denominan también reclamaciones, conflictos o apelaciones. Las
reclamaciones son documentadas, procesadas, monitoreadas y gestionadas a lo largo del ciclo
de vida del contrato, generalmente de conformidad con los términos del mismo. Si las partes no
resuelven por sí mismas una reclamación, puede ser necesario gestionarla de acuerdo con los
procedimientos de resolución alternativa de conflictos establecidos en el contrato. El acuerdo
de todas las reclamaciones y conflictos mediante la negociación es el método preferido.'!

adquisicion
	^'Cuando la organización ejecutante no cuenta con el personal interno necesario para completar
un proyecto, los servicios requeridos pueden adquirirse de fuentes externas. Esto puede
implicar contratar consultores individuales o subcontratar trabajo a otra organización.'!

advertising

	^'Existing lists of potential sellers can often be expanded by placing advertisements in general
circulation publications such as selected newspapers or in specialty trade publications. Some
government jurisdictions require public advertising of certain types of procurement items, and most
government jurisdictions require public advertising of pending government contracts.'!

advertisingNew
		^super new
			name: 'Advertising'; 
			description: self advertising;
			yourself.!

ajusteAdelantosRetrasos

	^'El ajuste de adelantos y retrasos se usa para encontrar maneras de realinear con el plan las
actividades retrasadas del proyecto.'!

alternativesAnalysis

	^'Many schedule activities have alternative methods of accomplishment. They include using various
levels of resource capability or skills, different size or type of machines, different tools (hand versus
automated), and make-or-buy decisions regarding the resource (Section 12.1.3.3).'!

alternativesAnalysisNew
		^super new
			name: 'Alternatives Analysis'; 
			description: self alternativesAnalysis;
			yourself.!

alternativesIdentification

	^'Identifying alternatives is a technique used to generate different approaches to execute and perform
the work of the project. A variety of general management techniques can be used such as brainstorming,
lateral thinking, pair wise comparisons, etc.'!

alternativesIdentificationNew
		^super new
			name: 'Alternatives Identification'; 
			description: self alternativesIdentification;
			yourself.!

analisisAlternativas

	^'Muchas actividades del cronograma cuentan con métodos alternativos de realización. Éstos
abarcan el uso de distintos niveles de capacidad o habilidades de los recursos, diferentes
tamaños y tipos de máquinas, diferentes herramientas (manuales vs. automáticas) y la decisión
de fabricar o comprar los recursos (Sección 12.1.3.3).'!

analisisCostoBeneficio

	^'Los principales beneficios de cumplir con los requisitos de calidad pueden incluir un
menor reproceso, una mayor productividad, menores costos y una mayor satisfacción de
los interesados. Un caso de negocio para cada actividad de calidad permite comparar el
costo del procedimiento de calidad con el beneficio esperado.'!

analisisHacerComprar

	^'El análisis de hacer o comprar es una técnica general de dirección utilizada para determinar si
un trabajo particular puede ser realizado de manera satisfactoria por el equipo del proyecto o
debe ser adquirido a fuentes externas. Es posible que la organización del proyecto cuente con la
capacidad necesaria, pero que la misma se encuentre comprometida con otros proyectos, en
cuyo caso el proyecto en cuestión podría requerir que los esfuerzos sean suministrados por una
organización externa a fin de cumplir con los compromisos establecidos en el cronograma.
Las restricciones al presupuesto pueden influir en las decisiones de hacer o comprar. Si se
decide efectuar una compra, entonces también debe decidirse si se va a adquirir o alquilar. Un
análisis de hacer o comprar debe tener en cuenta todos los costos relacionados, tanto directos
como indirectos. Por ejemplo, el análisis de la alternativa de compra incluye tanto los costos
reales de compra del producto como los costos indirectos correspondientes, relativos al
proceso de adquisición y al elemento comprado.'!

analisisInteresados
	^'El análisis de los interesados es un proceso que consiste en recopilar y analizar de manera
sistemática las informaciones cuantitativas y cualitativas, a fin de determinar qué intereses
particulares deben tenerse en cuenta a lo largo del proyecto. Permite identificar los intereses, las
expectativas y la influencia de los interesados, y los relaciona con la finalidad del proyecto.
También ayuda a identificar las relaciones con interesados que pueden aprovecharse para crear
alianzas y acuerdos potenciales, a fin de mejorar las probabilidades de éxito del proyecto.
En general, el análisis de los interesados sigue los siguientes pasos:
• Paso 1: Identificar a todos los potenciales interesados en el proyecto e información
relevante, como por ejemplo sus roles, departamentos, intereses, niveles de
conocimiento, expectativas y niveles de influencia. Por lo general, resulta fácil
identificar a los interesados clave. Incluyen a cualquier persona con un rol de
dirección o de toma de decisiones, que se ve impactada por el resultado del proyecto,
como por ejemplo el patrocinador, el director del proyecto y el cliente principal.
o Para identificar a los demás interesados, normalmente se entrevista a los
interesados identificados y se amplía la lista hasta incluir a todos los
interesados potenciales.
• Paso 2: Identificar el impacto o apoyo potencial que cada interesado podría generar, y
clasificarlos para definir una estrategia de abordaje. En el caso de grandes
comunidades de interesados, es importante priorizar a los interesados clave a fin de
garantizar el uso eficaz del esfuerzo para comunicar y gestionar sus expectativas.
Entre los múltiples modelos de clasificación disponibles, se encuentran:
o La matriz de poder/interés: agrupa a los interesados basándose en su nivel de
autoridad (“poder”) y su nivel de preocupación (“interés”) con respecto a los
resultados del proyecto.
o La matriz de poder/influencia: agrupa a los interesados basándose en su nivel
de autoridad (“poder”) y su participación activa (“influencia”) en el proyecto.
o La matriz de influencia/impacto: agrupa a los interesados basándose en su
participación activa (“influencia”) en el proyecto y su capacidad de efectuar
cambios a la planificación o ejecución del proyecto (“impacto”).
o El modelo de prominencia: describe clases de interesados basándose en su
poder (capacidad de imponer su voluntad), urgencia (necesidad de atención
inmediata) y legitimidad (su participación es apropiada).
El Gráfico 10-4 presenta un ejemplo de una matriz de poder/interés en la que los
puntos A-H representan la ubicación de interesados tipo.
• Paso 3: Evaluar el modo en que los interesados clave pueden reaccionar o responder
en diferentes situaciones, a fin de planificar cómo influir en ellos para mejorar su
apoyo y mitigar los impactos negativos potenciales.'!

analisisListasControl

	^'Las listas de control para identificación de riesgos pueden desarrollarse basándose en la
información histórica y el conocimiento acumulado a partir de proyectos similares anteriores y
otras fuentes de información. También puede utilizarse como lista de control de riesgos el nivel
más bajo de la estructura de desglose de riesgos. Si bien una lista de control puede ser rápida y
sencilla, es imposible elaborar una lista exhaustiva. El equipo debe asegurarse de explorar
elementos que no aparecen en la lista de control. La lista de control debe revisarse durante el
cierre del proyecto para incorporar nuevas lecciones aprendidas y mejorarla para su utilización
en proyectos futuros.'!

analisisProcesos

	^'El análisis de procesos sigue los pasos descritos en el plan de mejoras del proceso para
determinar las mejoras necesarias. Este análisis examina también los problemas y
restricciones experimentados, así como las actividades que no agregan valor,
identificadas durante la ejecución del proceso. El análisis de procesos incluye el análisis
causal, que es una técnica específica para identificar un problema, determinar las causas
subyacentes que lo ocasionan y desarrollar acciones preventivas.'!

analisisProducto
	^'Para proyectos cuyo entregable es un producto, a diferencia de un servicio o resultado, el
análisis del producto puede constituir una herramienta eficaz. Cada área de aplicación cuenta
con uno o varios métodos generalmente aceptados para traducir en entregables tangibles las
descripciones de alto nivel del producto. El análisis del producto incluye técnicas tales como el
desglose del producto, el análisis de sistemas, el análisis de requisitos, la ingeniería de sistemas,
la ingeniería del valor y el análisis del valor.'!

analisisPropuestasLicitaciones
	^'Los métodos de estimación de costos pueden incluir el análisis de cuánto debe costar el
proyecto, con base en las propuestas de vendedores calificados. En los casos en los que los
proyectos se otorgan mediante procesos competitivos, se puede solicitar al equipo del proyecto
un trabajo adicional de estimación de costos para examinar el precio de los entregables
individuales y obtener un costo que sustente el costo total final del proyecto.'!

analisisQuePasaSi
	^'Éste es un análisis de la pregunta “¿Qué pasa si se produce la situación representada por el
escenario ‘X’?” Se realiza un análisis de la red del cronograma, usando el cronograma para
calcular los diferentes escenarios, tales como un retraso en la entrega de un componente
principal, la prolongación de la duración de un diseño específico o la introducción de factores
externos, como una huelga o un cambio en el procedimiento para la obtención de permisos. Los
resultados del análisis del escenario “Qué pasa si…” pueden usarse para evaluar la viabilidad
del cronograma del proyecto bajo condiciones adversas, y para preparar planes de contingencia
y respuesta para superar o mitigar el impacto de situaciones inesperadas. La simulación implica
calcular múltiples duraciones del proyecto a partir de diferentes conjuntos de supuestos sobre
las actividades. La técnica más común es la del Análisis Monte Carlo (Sección 11.4.2.2), en el
cual se define una distribución de duraciones posibles para cada actividad, que es usada para
calcular una distribución de posibles resultados para todo el proyecto.'!

analisisRedCronograma
	^'El análisis de la red del cronograma es una técnica utilizada para generar el cronograma del
proyecto. Emplea diversas técnicas analíticas, tales como el método de la ruta crítica, el método
de la cadena crítica, el análisis “¿Qué pasa si…?” y la nivelación de recursos, para calcular las
fechas de inicio y finalización tempranas y tardías para las partes no completadas de las
actividades del proyecto. Algunos caminos de red pueden tener puntos de convergencia o
divergencia de rutas que pueden identificarse y emplearse en el análisis de compresión del
cronograma o en otros análisis.'!

analisisRequisitosComunicaciones
	^'El análisis de los requisitos de comunicación determina las necesidades de información de los
interesados en el proyecto. Estos requisitos se definen combinando el tipo y el formato de la
información necesaria con un análisis del valor de dicha información. Los recursos del proyecto
se utilizan únicamente para comunicar información que contribuya al éxito o cuando una falta
de comunicación puede conducir al fracaso.
Asimismo, el director del proyecto debe considerar la cantidad de canales o rutas de
comunicación potenciales como un indicador de la complejidad de las comunicaciones de un
proyecto. La cantidad total de canales de comunicación potenciales es igual a n(n-1)/2, donde
n representa la cantidad de interesados. Por consiguiente, un proyecto con 10 interesados
tiene 10(10-1)/2 = 45 canales de comunicación potenciales. Por lo tanto, un componente
clave de la planificación de las comunicaciones reales del proyecto son la determinación y
delimitación de quién se comunicará con quién, y de quién recibirá qué información.
Entre la información normalmente utilizada para determinar los requisitos de
comunicación del proyecto, se incluyen:
• los organigramas
• la organización del proyecto y las relaciones de responsabilidad de los interesados
• las disciplinas, departamentos y especialidades con implicación en el proyecto
• la logística de cuántas personas participarán en el proyecto y en qué ubicaciones
• las necesidades de información interna (p.ej., comunicaciones entre diferentes
organizaciones)
• las necesidades de información externa (p.ej., comunicaciones con los medios, el
público o los contratistas)
• la información sobre los interesados proveniente del registro de interesados y de la
estrategia de gestión de los interesados'!

analisisReserva
	^'
Una técnica analítica para determinar las
características y relaciones esenciales de los
componentes en el plan para la dirección del
proyecto a fin de establecer una reserva para la
duración del cronograma, el presupuesto, los
costos estimados o los fondos para un
proyecto.
-----------------------------------------------------------------------
Los estimados de la duración pueden incluir reservas para contingencias (denominadas a veces
reservas de tiempo o colchones) en el cronograma global del proyecto, para tener en cuenta la
incertidumbre del cronograma. La reserva para contingencias puede ser un porcentaje de la
duración estimada de la actividad, una cantidad fija de periodos de trabajo, o puede calcularse
utilizando métodos de análisis cuantitativos.
A medida que se dispone de información más precisa sobre el proyecto, la reserva para
contingencias puede usarse, reducirse o eliminarse. Debe identificarse claramente esta
contingencia en la documentación del cronograma.
----------------------------------------------------------------------------------------------------------------------------
Las estimaciones de costos pueden incluir reservas para contingencias (llamadas a veces
asignaciones para contingencias) para tener en cuenta la incertidumbre del costo. La reserva
para contingencias puede ser un porcentaje del costo estimado, una cantidad fija, o puede
calcularse utilizando métodos de análisis cuantitativos.
A medida que se dispone de información más precisa sobre el proyecto, la reserva para
contingencias puede utilizarse, reducirse o eliminarse. Debe identificarse claramente esta
contingencia en la documentación del cronograma. Las reservas para contingencias forman
parte de los requisitos de financiamiento.
--------------------------------------------------------------------------------------------------------------------------
El análisis de reserva del presupuesto puede establecer tanto las reservas para contingencias
como las reservas de gestión del proyecto. Las reservas para contingencias son asignaciones
para cambios no planificados, pero potencialmente necesarios, que pueden resultar de riesgos
identificados en el registro de riesgos. Las reservas de gestión son presupuestos reservados para
cambios no planificados al alcance y al costo del proyecto. El director del proyecto puede
necesitar obtener la aprobación antes de comprometer o gastar la reserva de gestión. Las
reservas no forman parte de la línea base de costo, pero pueden incluirse en el presupuesto total
del proyecto. Las reservas no se incluyen como parte de los cálculos de la medición del valor
ganado.'!

analisisSupuestos
	^'Cada proyecto y cada riesgo identificado se conciben y desarrollan tomando como base un
grupo de hipótesis, escenarios y supuestos. El análisis de supuestos explora la validez de los
supuestos según se aplican al proyecto. Identifica los riesgos del proyecto debidos al carácter
inexacto, inestable, incoherente o incompleto de los supuestos.'!

analisisSWOT
	^'Esta técnica examina el proyecto desde cada uno de los aspectos DAFO (debilidades,
amenazas, fortalezas y oportunidades) para aumentar el espectro de riesgos identificados,
incluyendo los riesgos generados internamente. La técnica comienza mediante la identificación
de las fortalezas y debilidades de la organización, enfocándose ya sea en la organización del
proyecto o bien en aspectos comerciales en un sentido más amplio. A menudo, estos factores se
identifican utilizando la tormenta de ideas. El análisis DAFO identifica entonces cualquier
oportunidad y amenaza para el proyecto, procedentes respectivamente de las fortalezas y
debilidades de la organización. El análisis DAFO también examina el grado en el que las
fortalezas de la organización contrarrestan las amenazas, y las oportunidades que pueden servir
para superar las debilidades.'!

analisisVariacion

	^'El análisis de variación es un examen a posteriori de las causas de las diferencias entre la línea
base y el desempeño real. El proceso que consiste en realizar un análisis de variación puede
variar según el área de aplicación, la norma utilizada y la industria en cuestión. Las etapas
habituales son:
• Verificar la calidad de la información recopilada a fin de asegurarse de que esté
completa y de que sea coherente con datos anteriores, así como de que sea creíble al
compararla con otro proyecto o información de estado.
• Determinar variaciones mediante la comparación de la información real con la línea
base del proyecto, y la observación de todas las diferencias, tanto favorables como
desfavorables para el resultado del proyecto. La gestión del valor ganado utiliza
ecuaciones específicas para cuantificar las variaciones. La técnica se explica en
detalle en la Sección 7.3.2.1.
• Determinar el impacto de las variaciones en el costo y en el cronograma del proyecto,
así como en otras áreas del proyecto (p.ej., ajustes en materia de desempeño de la
calidad y cambios en el alcance, etc.).
Si fuera pertinente, analizar las tendencias de las variaciones y documentar las
conclusiones acerca de las fuentes de variación y el área de impacto.
------------------------------------------------------------
Las mediciones del desempeño del proyecto se utilizan para evaluar la magnitud de la variación
respecto de la línea base original del alcance. Los aspectos importantes del control del alcance
del proyecto incluyen la determinación de la causa y del grado de variación con relación a la
línea base del alcance (Sección 5.3.3.3) y la decisión acerca de la necesidad de aplicar acciones
preventivas o correctivas.
-----------------------------------------------------------
Las mediciones del desempeño del cronograma (SV, SPI) se utilizan para evaluar la magnitud
de variación con respecto a la línea base original del cronograma. La variación de la holgura
total es también un componente esencial de la planificación para evaluar el desempeño del
proyecto en el tiempo. Los aspectos importantes del control del cronograma del proyecto
incluyen la determinación de la causa y del grado de variación con relación a la línea base del
cronograma (Sección 6.5.3.2) y la decisión de la necesidad de aplicar o no acciones preventivas
o correctivas.'!

analisisVariacionTendencias
	^'Muchos procesos de control utilizan el análisis de variación para comparar los resultados
planificados con los resultados reales. Con el propósito de monitorear y controlar los eventos de
riesgo, deben revisarse las tendencias en la ejecución del proyecto utilizando la información
relativa al desempeño. El análisis del valor ganado (Sección 7.3.2.1) así como otros métodos de
análisis de variación y de tendencias del proyecto pueden utilizarse para monitorear el
desempeño global del proyecto. Los resultados de estos análisis pueden pronosticar la
desviación potencial del proyecto a su conclusión con respecto a las metas de costo y
cronograma. La desviación del plan de línea base pueden indicar el impacto potencial de
amenazas u oportunidades.'!

analogousEstimating

	^'Analogous cost estimating uses the values of parameters, such as scope, cost, budget, and duration
or measures of scale such as size, weight, and complexity, from a previous, similar project as the basis
for estimating the same parameter or measure for a current project. When estimating costs, this
technique relies on the actual cost of previous, similar projects as the basis for estimating the cost of
the current project. It is a gross value estimating approach, sometimes adjusted for known differences
in project complexity.
    Analogous cost estimating is frequently used to estimate a parameter when there is a limited amount
of detailed information about the project, for example, in the early phases of a project. Analogous cost
estimating uses historical information and expert judgment.
    Analogous cost estimating is generally less costly and time consuming than other techniques,
but it is also generally less accurate. Analogous cost estimates can be applied to a total project or to
segments of a project, used in conjunction with other estimating methods. Analogous estimating is
most reliable when the previous projects are similar in fact and not just in appearance, and the project
team members preparing the estimates have the needed expertise.
'!

analogousEstimatingNew
		^super new
			name: 'Analogous Estimating'; 
			description: self analogousEstimating;
			yourself.!

aplicacionAdelantosRetrasos

	^'El equipo de dirección de proyecto determina las dependencias que pueden necesitar un
adelanto o un retraso para definir con exactitud la relación lógica. No deben utilizarse adelantos
y retrasos para sustituir la lógica de la planificación. Deben documentarse las actividades y sus
supuestos relacionados.
Un adelanto permite una aceleración de la actividad sucesora. Por ejemplo, en un
proyecto para la construcción de un nuevo edificio de oficinas, puede planificarse que el
desmonte del terreno comience dos semanas antes de la fecha programada para completar la
lista de pendientes. Esto debe mostrarse como una relación lógica final a inicio, con un
adelanto de dos semanas.
Un retraso ocasiona una demora en la actividad sucesora. Por ejemplo, un equipo de
redacción técnica puede comenzar a editar el borrador de un documento extenso quince días
después de haber comenzado a escribirlo. Esto puede mostrarse como una relación lógica
inicio a inicio con un retraso de 15 días.'!

applyingLeadsAndLags

	^'The project management team determines the dependencies that may require a lead or a lag to
accurately define the logical relationship. The use of leads and lags should not replace schedule logic.
Activities and their related assumptions should be documented.
   A lead allows an acceleration of the successor activity. For example, on a project to construct a new
office building, the landscaping could be scheduled to start 2 weeks prior to the scheduled punch list
completion. This would be shown as a finish-to-start with a 2-week lead.
   A lag directs a delay in the successor activity. For example, a technical writing team can begin
editing the draft of a large document 15 days after they begin writing it. This could be shown as a
start-to-start relationship with a 15-day lag.'!

applyingLeadsAndLagsNew
		^super new
			name: 'Applying Leads And Lags'; 
			description: self applyingLeadsAndLags;
			yourself.!

approvedChangeRequestsReview

	^'All approved change requests should be reviewed to verify that they were implemented as approved.'
!

approvedChangeRequestsReviewNew
		^super new
			name: 'Approved Change Requests Review'; 
			description: self approvedChangeRequestsReview;
			yourself.!

asignacionPrevia
	^'Cuando los miembros del equipo del proyecto son seleccionados de forma anticipada, se
considera que han sido asignados previamente. Esta situación puede darse si el proyecto resulta
de una promesa de recursos humanos específicos en el marco de una propuesta competitiva, si
el proyecto depende de la experiencia de determinadas personas o si en el acta de constitución
del proyecto se definen determinadas asignaciones de personal.'!

assumptionsAnalysis

	^'Every project and every identified project risk is conceived and developed based on a set of
hypotheses, scenarios, or assumptions. Assumptions analysis explores the validity of assumptions as
they apply to the project. It identifies risks to the project from inaccuracy, instability, inconsistency, or
incompleteness of assumptions.'!

assumptionsAnalysisNew
		^super new
			name: 'Assumptions Analysis'; 
			description: self assumptionsAnalysis;
			yourself.!

auditoriasAdquisicion
	^'Una auditoría de la adquisición es una revisión estructurada del proceso de adquisición, desde
el proceso Planificar las Adquisiciones (Sección 12.1) hasta el proceso Administrar las
Adquisiciones (Sección 12.3). El objetivo de una auditoría de la adquisición es identificar los
éxitos y los fracasos que merecen ser reconocidos en la preparación o administración de otros
contratos de adquisición en el proyecto, o en otros proyectos dentro de la organización
ejecutante.'!

auditoriasCalidad

	^'Una auditoria de calidad es una revisión estructurada e independiente para determinar si
las actividades del proyecto cumplen con las políticas, los procesos y los
procedimientos del proyecto y de la organización. Los objetivos de una auditoria de
calidad son:
• Identificar todas las buenas y mejores prácticas empleadas.
• Identificar todas las diferencias y las anomalías.
• Compartir las buenas prácticas introducidas o implementadas en proyectos
similares de la organización y/o industria.
• Ofrecer asesoramiento de manera positiva y proactiva, para mejorar la
implementación de procesos que ayuden al equipo a incrementar la
productividad.
• Resaltar las contribuciones de cada auditoría en la base de datos de lecciones
aprendidas de la organización.
El esfuerzo subsiguiente para corregir cualquier deficiencia debería dar como
resultado una reducción del costo de la calidad y una mayor aceptación del producto
del proyecto por parte del patrocinador o cliente. Las auditorías de calidad pueden
ser planificadas o aleatorias, y pueden ser realizadas por auditores internos o
externos.
Las auditorías de calidad pueden confirmar la implementación de solicitudes de
cambio aprobadas, que incluyen acciones correctivas, reparación de defectos y
acciones preventivas.'!

auditoriasRiesgos
	^'Las auditorías de riesgos examinan y documentan la efectividad de las respuestas a los riesgos
identificados y sus causas, así como la efectividad del proceso de gestión de riesgos. El director
del proyecto es el responsable de asegurar que las auditorías de riesgos se realicen con una
frecuencia apropiada, según se definió en el plan de gestión de riesgos. Las auditorías de
riesgos pueden incluirse durante reuniones de rutina de revisión del proyecto, o bien, pueden
celebrarse reuniones de auditoría específicas para este fin. El formato de la auditoría y sus
objetivos deben definirse claramente antes de efectuar la auditoría.'!

benchmarking

	^'Benchmarking involves comparing actual or planned project practices to those of comparable
projects to identify best practices, generate ideas for improvement, and provide a basis for measuring
performance. These other projects can be within the performing organization or outside of it and can
be within the same or in another application area.'!

benchmarkingNew
		^super new
			name: 'Benchmarking'; 
			description: self benchmarking;
			yourself.!

bidderConferences

	^'Bidder conferences (sometimes called contractor conferences, vendor conferences, and pre-bid
conferences) are meetings between the buyer and all prospective sellers prior to submittal of a bid or
proposal. They are used to ensure that all prospective sellers have a clear and common understanding
of the procurement (both technical and contractual requirements), and that no bidders receive
preferential treatment. Responses to questions can be incorporated into the procurement documents
as amendments. To be fair, buyers must take great care to ensure that all prospective sellers hear
every question from any individual prospective seller and every answer from the buyer.'!

bidderConferencesNew
		^super new
			name: 'Bidder Conferences'; 
			description: self bidderConferences;
			yourself.!

bottomUpEstimating

	^'When an activity cannot be estimated with a reasonable degree of confidence, the work within
the activity is decomposed into more detail. The resource needs are estimated. These estimates
are then aggregated into a total quantity for each of the activity’s resources. Activities may or may
not have dependencies between them that can affect the application and use of resources. If there
are dependencies, this pattern of resource usage is reflected and documented in the estimated
requirements of the activity.'
!

bottomUpEstimatingNew
		^super new
			name: 'Bottom Up Estimating'; 
			description: self bottomUpEstimating;
			yourself.!

busquedaInternet
	^'Internet ejerce una influencia considerable en la mayoría de las adquisiciones del proyecto y en
la cadena de suministro de las organizaciones. Mientras que muchos artículos, componentes y
elementos listos para vender pueden ser encontrados rápidamente en Internet y adquiridos a un
precio fijo, las adquisiciones de alto riesgo y muy complejas que requieren un monitoreo de
cerca no pueden obtenerse por este medio.'!

capacitacion
	^'La capacitación incluye todas las actividades diseñadas para mejorar las competencias de los
miembros del equipo del proyecto. Puede ser formal o informal. Algunos ejemplos de métodos
de capacitación incluyen la capacitación en el aula, por Internet, basada en computadoras, en el
lugar de trabajo a cargo de otro miembro del equipo, así como la tutoría y el entrenamiento. Si
los miembros del equipo del proyecto no cuentan con las habilidades técnicas o de dirección
necesarias, tales habilidades pueden desarrollarse como parte del trabajo del proyecto. La
capacitación programada se realiza según lo establecido en el plan de recursos humanos. La
capacitación no programada se realiza como resultado de la observación, la conversación y las
evaluaciones del desempeño del proyecto, realizadas durante el proceso Dirigir el Equipo del
Proyecto.'!

categorizacionRiesgos
	^'Los riesgos del proyecto pueden categorizarse por fuentes de riesgo (p.ej., utilizando la RBS),
por área del proyecto afectada (p.ej., utilizando la EDT) u otra categoría útil (p.ej., fase del
proyecto) para determinar qué áreas del proyecto están más expuestas a los efectos de la
incertidumbre. La agrupación de los riesgos en función de sus causas comunes puede llevar al
desarrollo de respuestas efectivas a los riesgos.'!

causeEffectDiagrams

	^'Cause and effect diagrams, also called Ishikawa diagrams or fishbone diagrams, illustrate how
various factors might be linked to potential problems or effects. Figures 8-12 and 8-13 are examples
of cause and effect diagrams. A possible root cause can be uncovered by continuing to ask “why”
or “how” along one of the lines. “Why-Why” and “How-How” diagrams may be used in root cause
analysis. Cause and effect diagrams are also used in risk analysis (Section 11.2.2.5).'!

causeEffectDiagramsNew
		^super new
			name: 'Cause Effect Diagrams'; 
			description: self causeEffectDiagrams;
			yourself.!

changeControlMeetings

	^'A change control board is responsible for meeting and reviewing the change requests and approving
or rejecting those change requests. The roles and responsibilities of these boards are clearly defined
and are agreed upon by appropriate stakeholders. All change control board decisions are documented
and communicated to the stakeholders for information and follow-up actions.'
!

changeControlMeetingsNew
		^super new
			name: 'Change Control Meetings'; 
			description: self changeControlMeetings;
			yourself.!

checklistAnalysis

	^'Risk identification checklists can be developed based on historical information and knowledge
that has been accumulated from previous similar projects and from other sources of information. The
lowest level of the RBS can also be used as a risk checklist. While a checklist can be quick and simple,
it is impossible to build an exhaustive one. The team should make sure to explore items that do not
appear on the checklist. The checklist should be reviewed during project closure to incorporate new
lessons learned and improve it for use on future projects.'!

checklistAnalysisNew
		^super new
			name: 'Checklist Analysis'; 
			description: self checklistAnalysis;
			yourself.!

claimsAdministration

	^'Contested changes and potential constructive changes are those requested changes where the
buyer and seller cannot reach an agreement on compensation for the change, or cannot agree that
a change has occurred. These contested changes are variously called claims, disputes, or appeals.
Claims are documented, processed, monitored, and managed throughout the contract life cycle,
usually in accordance with the terms of the contract. If the parties themselves do not resolve a claim,
it may have to be handled in accordance with alternative dispute resolution (ADR) typically following
procedures established in the contract. Settlement of all claims and disputes through negotiation is
the preferred method.'!

claimsAdministrationNew
		^super new
			name: 'Claims Administration'; 
			description: self claimsAdministration;
			yourself.!

colocation

	^'Co-location involves placing many or all of the most active project team members in the same
physical location to enhance their ability to perform as a team. Co-location can be temporary, such
as at strategically important times during the project, or for the entire project. Co-location strategies
can include a team meeting room, places to post schedules, and other conveniences that enhance
communication and a sense of community. While co-location is considered a good strategy, the use of
virtual teams is sometimes unavoidable.'!

colocationNew
		^super new
			name: 'Colocation'; 
			description: self colocation;
			yourself.!

communicationMethods

	^'There are several communication methods used to share information among project stakeholders.
These methods can be broadly classified into:
   • Interactive communication. Between two or more parties performing a multidirectional
      exchange of information. It is the most efficient way to ensure a common understanding by all
      participants on specified topics, and includes meetings, phone calls, video conferencing, etc.
   • Push communication. Sent to specific recipients who need to know the information. This
      ensures that the information is distributed but does not certify that it actually reached or was
      understood by the intended audience. Push communication includes letters, memos, reports,
      emails, faxes, voice mails, press releases etc.
   • Pull communication. Used for very large volumes of information, or for very large audiences,
      that requires the recipients to access the communication content at their own discretion. These
      methods include intranet sites, e-learning, and knowledge repositories, etc.
   The project manager decides, based on communication requirements, what, how, and when
communication methods are to be used in the project.'!

communicationMethodsNew
		^super new
			name: 'Communication Methods'; 
			description: self communicationMethods;
			yourself.!

communicationModels

	^'A basic model of communication, shown in Figure 10-8, demonstrates how information is sent
and received between two parties, defined as the sender and the receiver. The key components of the
model include:
   • Encode. To translate thoughts or ideas into a language that is understood by others.
   • Message and feedback-message. The output of encoding.
   • Medium. The method used to convey the message.
   • Noise. Anything that interferes with the transmission and understanding of the message
       (e.g., distance, unfamiliar technology, lack of background information).
   • Decode. To translate the message back into meaningful thoughts or ideas.
   Figure 10-8 is a basic communication model. Inherent in the model is an action to acknowledge
a message. Acknowledgement means that the receiver signals receipt of the message, but not
necessarily agreement with the message. Another action is the response to a message, which means
that the receiver has decoded, understands, and is replying to the message.

     The components in the communications model need to be taken into account when discussing
project communications. As part of the communications process, the sender is responsible for making
the information clear and complete so that the receiver can receive it correctly, and for confirming that
it is properly understood. The receiver is responsible for making sure that the information is received
in its entirety, understood correctly, and acknowledged. A failure in communication can negatively
impact the project.
    There are many challenges in using these components to effectively communicate with project
stakeholders. Consider a highly technical, multinational project team. For one team member to
successfully communicate a technical concept to another team member in a different country can
involve encoding the message in the appropriate language, sending the message using a variety of
technologies, and having the receiver decode the message and reply or provide feedback. Any noise
introduced along the way compromises the original meaning of the message.'
!

communicationModelsNew
		^super new
			name: 'Communication Models'; 
			description: self communicationModels;
			yourself.!

communicationRequirementsAnalysis

	^'The analysis of the communication requirements determines the information needs of the project
stakeholders. These requirements are defined by combining the type and format of information needed
with an analysis of the value of that information. Project resources are expended only on communicating
information that contributes to success, or where a lack of communication can lead to failure.
    The project manager should also consider the number of potential communication channels or
paths as an indicator of the complexity of a project’s communications. The total number of potential
communication channels is n(n-1)/2, where n represents the number of stakeholders. Thus, a project
with 10 stakeholders has 10(10-1)/2 = 45 potential communication channels. A key component of
planning the project’s actual communications, therefore, is to determine and limit who will communicate
with whom and who will receive what information.
Information typically used to determine project communication requirements includes:
• Organization charts,
• Project organization and stakeholder responsibility relationships,
• Disciplines, departments, and specialties involved in the project,
• Logistics of how many persons will be involved with the project and at which locations,
• Internal information needs (e.g., communicating across organizations),
• External information needs (e.g., communicating with the media, public, or contractors), and
• Stakeholder information from the stakeholder register and the stakeholder management strategy.
'!

communicationRequirementsAnalysisNew
		^super new
			name: 'Communication Requirements Analysis'; 
			description: self communicationRequirementsAnalysis;
			yourself.!

communicationTechnology

	^'The methods used to transfer information among project stakeholders can vary significantly.
For example, a project team may use techniques from brief conversations all the way through to
extended meetings, or from simple written documents to material (e.g., schedules and databases)
that is accessible online as methods of communication.
   Factors that can affect the project include:
   • Urgency of the need for information. Is project success dependent upon having frequently
        updated information available on a moment’s notice, or would regularly issued written
        reports suffice?
   • Availability of technology. Are appropriate systems already in place or do project needs
        warrant change? For example, do the intended stakeholder(s) have access to a selected
        communications technology?
   • Expected project staffing. Are the proposed communication systems compatible with
        the experience and expertise of the project participants, or is extensive training and
        learning required?
   • Duration of the project. Is the available technology likely to change before the project is over?
   • Project environment. Does the team meet and operate on a face-to-face basis or in a
        virtual environment?'!

communicationTechnologyNew
		^super new
			name: 'Communication Technology'; 
			description: self communicationTechnology;
			yourself.!

compresionCronograma
	^'La compresión del cronograma reduce el calendario del proyecto sin modificar el alcance del
mismo, para cumplir con las restricciones del cronograma, las fechas impuestas u otros
objetivos del cronograma. Las técnicas de compresión del cronograma incluyen:
• Compresión. Una técnica de compresión del cronograma en la cual se analizan las
concesiones entre costo y cronograma para determinar cómo obtener la mayor
compresión con el menor incremento de costo. Ejemplos de compresión pueden incluir la
aprobación de horas suplementarias, el aporte de recursos adicionales o un pago adicional
para acelerar la entrega de las actividades que se encuentran en la ruta crítica. La
compresión sólo funciona para actividades en las que los recursos adicionales permiten
acortar la duración. La compresión no siempre resulta una alternativa viable y puede
ocasionar un incremento del riesgo y/o del costo.
• Ejecución rápida. Una técnica de compresión del cronograma en la cual las fases o
actividades que normalmente se realizarían en forma secuencial, se realizan en paralelo.
Un ejemplo de esto es la construcción de los cimientos de un edificio antes de finalizar
todos los planos arquitectónicos. La ejecución rápida puede dar como resultado un
reproceso y un aumento del riesgo. La ejecución rápida sólo funciona en actividades que
pueden superponerse para acortar la duración.'!

conciliacionLimiteFinanciamiento
	^'El gasto de fondos debe conciliarse con los límites de financiamiento establecidos sobre el
desembolso de fondos para el proyecto. Una variación entre los límites de financiamiento y los
gastos planificados requerirá en algunos casos la reprogramación del trabajo para regular
dichos gastos. Esto puede realizarse aplicando restricciones de fecha impuestas para el trabajo
en el cronograma del proyecto.'!

conferenciasOferentes

	^'Las conferencias de oferentes (denominadas a veces conferencias de contratistas, conferencias
de proveedores o conferencias previas a la licitación) son reuniones con todos los posibles
vendedores y compradores antes de la presentación de ofertas o propuestas. Se las utiliza para
asegurar que todos los posibles vendedores comprendan de manera clara y uniforme la
necesidad de adquisición (requisitos técnicos y contractuales), y que ningún oferente reciba
tratamiento preferencial. Las respuestas a las preguntas pueden ser incorporadas en los
documentos de la adquisición en forma de enmiendas. Para que haya equidad, los compradores
deben tener especial cuidado en asegurar que todos los posibles vendedores escuchen cada una
de las preguntas de los demás vendedores potenciales particulares, así como cada respuesta
proporcionada por el comprador.'!

conflictManagement

	^'Conflict is inevitable in a project environment. Sources of conflict include scarce resources, scheduling
priorities, and personal work styles. Team ground rules, group norms, and solid project management
practices like communication planning and role definition, reduce the amount of conflict.
    Successful conflict management results in greater productivity and positive working relationships.
When managed properly, differences of opinion can lead to increased creativity and better decision
making. If the differences become a negative factor, project team members are initially responsible for
their resolution. If conflict escalates, the project manager should help facilitate a satisfactory resolution.
Conflict should be addressed early and usually in private, using a direct, collaborative approach. If
disruptive conflict continues, formal procedures may be used, including disciplinary actions.
    When handling conflict in a team environment, project managers should recognize the following
characteristics of conflict and the conflict management process:
    • Conflict is natural and forces a search for alternatives,
    • Conflict is a team issue,
    • Openness resolves conflict,
    • Conflict resolution should focus on issues, not personalities, and
    • Conflict resolution should focus on the present, not the past.
    The success of project managers in managing their project teams often depends a great deal on
their ability to resolve conflict. Different project managers may have different conflict resolution styles.
Factors that influence conflict resolution methods include:
    • Relative importance and intensity of the conflict,
    • Time pressure for resolving the conflict,
    • Position taken by players involved, and
    • Motivation to resolve conflict on a long-term or a short-term basis.
   There are six general techniques for resolving conflict. As each one has its place and use, these are
not given in any particular order:
   • Withdrawing/Avoiding. Retreating from an actual or potential conflict situation.
   • Smoothing/Accommodating. Emphasizing areas of agreement rather than areas of difference.
   • Compromising. Searching for solutions that bring some degree of satisfaction to all parties.
   • Forcing. Pushing one’s viewpoint at the expense of others; offers only win-lose solutions.
   • Collaborating. Incorporating multiple viewpoints and insights from differing perspectives; leads
       to consensus and commitment.
   • Confronting/Problem Solving. Treating conflict as a problem to be solved by examining
       alternatives; requires a give-and-take attitude and open dialogue.'
!

conflictManagementNew
		^super new
			name: 'Conflict Management'; 
			description: self conflictManagement;
			yourself.!

contingentResponseStrategies

	^'Some responses are designed for use only if certain events occur. For some risks, it is appropriate
for the project team to make a response plan that will only be executed under certain predefined
conditions, if it is believed that there will be sufficient warning to implement the plan. Events that
trigger the contingency response, such as missing intermediate milestones or gaining higher priority
with a supplier, should be defined and tracked.'!

contingentResponseStrategiesNew
		^super new
			name: 'Contingent Response Strategies'; 
			description: self contingentResponseStrategies;
			yourself.!

contractChangeControlSystem

	^'A contract change control system defines the process by which the procurement can be modified. It
includes the paperwork, tracking systems, dispute resolution procedures, and approval levels necessary
for authorizing changes. The contract change control system is integrated with the integrated change
control system.'!

contractChangeControlSystemNew
		^super new
			name: 'Contract Change Control System'; 
			description: self contractChangeControlSystem;
			yourself.!

contractTypes
 
   ^'The risk shared between the buyer and seller is determined by the contract type. Although the
firm-fixed-price type of contractual arrangement is typically the preferred type which is encouraged
and often demanded by most organizations, there are times when another contract form may be in
the best interests of the project. If a contract type other than fixed-price is intended, it is incumbent
on the project team to justify its use. The type of contract to be used and the specific contract terms
and conditions fix the degree of risk being assumed by the buyer and seller.
    All legal contractual relationships generally fall into one of two broad families, either fixed-price
or cost reimbursable. Also, there is a third hybrid-type commonly in use called the time and materials
contract. The more popular of the contract types in use are discussed below as discrete types, but in
practice it is not unusual to combine one or more types into a single procurement.
• Fixed-price contracts. This category of contracts involves setting a fixed total price for a
        defined product or service to be provided. Fixed-price contracts may also incorporate financial
        incentives for achieving or exceeding selected project objectives, such as schedule delivery
        dates, cost and technical performance, or anything that can be quantified and subsequently
        measured. Sellers under fixed-price contracts are legally obligated to complete such contracts,
        with possible financial damages if they do not. Under the fixed-price arrangement, buyers
        must precisely specify the product or services being procured. Changes in scope can be
        accommodated, but generally at an increase in contract price.
  ? Firm Fixed Price Contracts (FFP). The most commonly used contract type is the FFP. It is
           favored by most buying organizations because the price for goods is set at the outset and
           not subject to change unless the scope of work changes. Any cost increase due to adverse
           performance is the responsibility of the seller, who is obligated to complete the effort. Under
           the FFP contract, the buyer must precisely specify the product or services to be procured,
           and any changes to the procurement specification can increase the costs to the buyer.
  ? Fixed Price Incentive Fee Contracts (FPIF). This fixed-price arrangement gives the buyer
           and seller some flexibility in that it allows for deviation from performance, with financial
           incentives tied to achieving agreed to metrics. Typically such financial incentives are related
           to cost, schedule, or technical performance of the seller. Performance targets are established
           at the outset, and the final contract price is determined after completion of all work based
           on the seller’s performance. Under FPIF contracts, a price ceiling is set, and all costs above
           the price ceiling are the responsibility of the seller, who is obligated to complete the work.
  ? Fixed Price with Economic Price Adjustment Contracts (FP-EPA). This contract type
      is used whenever the seller’s performance period spans a considerable period of years,
      as is desired with many long-term relationships. It is a fixed-price contract, but with a
      special provision allowing for pre-defined final adjustments to the contract price due to
      changed conditions, such as inflation changes, or cost increases (or decreases) for specific
      commodities. The EPA clause must relate to some reliable financial index which is used to
      precisely adjust the final price. The FP-EPA contract is intended to protect both buyer and
      seller from external conditions beyond their control.
• Cost-reimbursable contracts. This category of contract involves payments (cost
  reimbursements) to the seller for all legitimate actual costs incurred for completed work, plus a
  fee representing seller profit. Cost-reimbursable contracts may also include financial incentive
  clauses whenever the seller exceeds, or falls below, defined objectives such as costs, schedule, or
  technical performance targets. Three of the more common types of cost-reimbursable contracts
  in use are Cost Plus Fixed Fee (CPFF), Cost Plus Incentive Fee (CPIF), and Cost Plus Award Fee (CPAF).
  A cost-reimbursable contract gives the project flexibility to redirect a seller whenever the scope
  of work cannot be precisely defined at the start and needs to be altered, or when high risks may
  exist in the effort.
  ? Cost Plus Fixed Fee Contracts (CPFF). The seller is reimbursed for all allowable
      costs for performing the contract work, and receives a fixed fee payment calculated as
      a percentage of the initial estimated project costs. Fee is paid only for completed work
      and does not change due to seller performance. Fee amounts do not change unless the
      project scope changes.
  ? Cost Plus Incentive Fee Contracts (CPIF). The seller is reimbursed for all allowable
      costs for performing the contract work and receives a predetermined incentive fee
      based upon achieving certain performance objectives as set forth in the contract. In
      CPIF contracts, if the final costs are less or greater than the original estimated costs, then
      both the buyer and seller share costs from the departures based upon a prenegotiated cost
      sharing formula, e.g., an 80/20 split over/under target costs based on the actual performance
      of the seller.
  ? Cost Plus Award Fee Contracts (CPAF). The seller is reimbursed for all legitimate costs,
      but the majority of the fee is only earned based on the satisfaction of certain broad subjective
      performance criteria defined and incorporated into the contract. The determination of fee
      is based solely on the subjective determination of seller performance by the buyer, and is
      generally not subject to appeals.
• Time and Material Contracts (T&M). Time and material contracts are a hybrid type of
  contractual arrangement that contain aspects of both cost-reimbursable and fixed-price
  contracts. They are often used for staff augmentation, acquisition of experts, and any outside
  support when a precise statement of work cannot be quickly prescribed.
  These types of contracts resemble cost-reimbursable contracts in that they can be left open
  ended and may be subject to a cost increase for the buyer. The full value of the agreement
  and the exact quantity of items to be delivered may not be defined by the buyer at the time
  of the contract award. Thus, T&M contracts can increase in contract value as if they were
  cost-reimbursable contracts. Many organizations require not-to-exceed values and time limits
  placed in all T&M contracts to prevent unlimited cost growth. Conversely, T&M contracts can
  also resemble fixed unit price arrangements when certain parameters are specified in the
  contract. Unit labor or material rates can be preset by the buyer and seller, including seller
  profit, when both parties agree on the values for specific resource categories, such as senior
  engineers at specified rates per hour, or categories of materials at specified rates per unit.'!

contractTypesNew
		^super new
			name: 'Contract Types'; 
			description: self contractTypes;
			yourself.!

controlCharts
   
	^'Control charts are used to determine whether or not a process is stable or has predictable performance.
Upper and lower specification limits are based on requirements of the contract. They reflect the maximum
and minimum values allowed. There may be penalties associated with exceeding the specification limits.
Upper and lower control limits are set by the project manager and appropriate stakeholders to reflect the
points at which corrective action will be taken to prevent exceeding specification limits. For repetitive
processes, the control limits are generally ± 3s. A process is considered out of control when a data point
exceeds a control limit or if seven consecutive points are above or below the mean.
   Control charts can be used to monitor various types of output variables. Although used most
frequently to track repetitive activities required for producing manufactured lots, control charts may
also be used to monitor cost and schedule variances, volume, and frequency of scope changes, or
other management results to help determine if the project management processes are in control.
Figure 8-5 shows a control chart that tracks recorded project hours. Figure 8-6 shows measured
product defects compared to fixed limits.'!

controlCharts2

	^'Control charts are described in Section 8.1.2.3. In this tool, the appropriate data is collected and
analyzed to indicate the quality status of project processes and products. Control charts illustrate
how a process behaves over time and when a process is subject to special cause variation, resulting
in an out-of-control condition. They graphically answer the question: “Is this process variance within
acceptable limits?” The pattern of data points on a control chart may reveal random fluctuating values,
sudden process jumps, or a gradual trend in increased variation. By monitoring the output of a process
over time, a control chart can help assess whether the application of process changes resulted in the
desired improvements.
    When a process is within acceptable limits it is in control and does not need to be adjusted. Conversely,
when a process is outside acceptable limits, the process should be adjusted. Seven consecutive points
above or below the central line indicate a process that is out of control. The upper control limit and lower
control limit are usually set at ±3s, where 1s is one standard deviation.'!

controlCharts2New
		^super new
			name: 'Control Charts2'; 
			description: self controlCharts2;
			yourself.!

controlChartsNew
		^super new
			name: 'Control Charts'; 
			description: self controlCharts;
			yourself.!

costAggregation

	^'Cost estimates are aggregated by work packages in accordance with the WBS. The work package cost
estimates are then aggregated for the higher component levels of the WBS (such as control accounts)
and ultimately for the entire project.'!

costAggregationNew
		^super new
			name: 'Cost Aggregation'; 
			description: self costAggregation;
			yourself.!

costBenefitAnalysis

	^'The primary benefits of meeting quality requirements can include less rework, higher productivity,
lower costs, and increased stakeholder satisfaction. A business case for each quality activity compares
the cost of the quality step to the expected benefit.'!

costBenefitAnalysisNew
		^super new
			name: 'Cost Benefit Analysis'; 
			description: self costBenefitAnalysis;
			yourself.!

costoCalidad
	^'Método para determinar los costos incurridos
para asegurar la calidad. Los costos de
prevención y evaluación (costos de
cumplimiento) incluyen costos de planificación
de calidad, control de calidad y garantía de
calidad para asegurar el cumplimiento de los
requisitos (es decir, capacitación, sistemas de
control de calidad, etc.). Los costos de fallos
(costos de no cumplimiento) incluyen los costos
de reprocesar productos, componentes o procesos
que no cumplen, los costos de la garantía del
trabajo y desperdicio, y la pérdida de reputación.
También conocido como: Coste de la Calidad.
-----------------------------------------------------------------------------
El costo de la calidad incluye todos los costos en los que se ha incurrido durante la vida
del producto en inversiones para prevenir el incumplimiento de los requisitos, para
evaluar la conformidad del producto o servicio con los requisitos, y por no cumplir con
los requisitos (reproceso). Los costos por fallos se clasifican a menudo en internos
(constatados por el equipo del proyecto) y externos (constatados por el cliente). Los
costos por fallos también se denominan costo por calidad deficiente.
'!

costOfQuality

	^'Cost of quality includes all costs incurred over the life of the product by investment in preventing
nonconformance to requirements, appraising the product or service for conformance to requirements,
and failing to meet requirements (rework). Failure costs are often categorized into internal (found by
the project) and external (found by the customer). Failure costs are also called cost of poor quality.
Figure 8-4 provides some examples to consider in each area.
'!

costOfQualityNew
		^super new
			name: 'Cost Of Quality'; 
			description: self costOfQuality;
			yourself.!

creacionRelacionesTrabajo
	^'La creación de relaciones de trabajo es la interacción formal e informal con otras personas
dentro de una organización, industria o ambiente profesional. Constituye una manera
constructiva de comprender los factores políticos e interpersonales que tendrán un impacto
sobre la eficacia de diversas opciones de dirección de personal. Las actividades de creación de
relaciones de trabajo entre los recursos humanos incluyen la correspondencia proactiva, los
almuerzos de negocios, las conversaciones informales como los encuentros y los eventos, las
conferencias especializadas y los simposios. La creación de relaciones de trabajo puede ser una
técnica útil al inicio de un proyecto. También puede resultar una manera eficaz de mejorar el
desarrollo profesional de la dirección del proyecto durante el mismo y luego de su finalización.'!

criticalChainMethod

	^'Critical chain is a schedule network analysis technique that modifies the project schedule to
account for limited resources. Initially, the project schedule network diagram is built using duration
estimates with required dependencies and defined constraints as inputs. The critical path is then
calculated. After the critical path is identified, resource availability is entered and the resource-limited
schedule result is determined. The resulting schedule often has an altered critical path.
    The resource-constrained critical path is known as the critical chain. The critical chain method
adds duration buffers that are non-work schedule activities to manage uncertainty. One buffer, placed
at the end of the critical chain, is known as the project buffer and protects the target finish date from
slippage along the critical chain. Additional buffers, known as feeding buffers, are placed at each
point that a chain of dependent tasks not on the critical chain feeds into the critical chain. Feeding
buffers thus protect the critical chain from slippage along the feeding chains. The size of each buffer
should account for the uncertainty in the duration of the chain of dependent tasks leading up to that
buffer. Once the buffer schedule activities are determined, the planned activities are scheduled to
their latest possible planned start and finish dates. Consequently, in lieu of managing the total float of
network paths, the critical chain method focuses on managing remaining buffer durations against the
remaining durations of task chains.'!

criticalChainMethodNew
		^super new
			name: 'Critical Chain Method'; 
			description: self criticalChainMethod;
			yourself.!

criticalPathMethod

	^'The critical path method calculates the theoretical early start and finish dates, and late start and finish
dates, for all activities without regard for any resource limitations, by performing a forward and backward
pass analysis through the schedule network. The resulting early and late start and finish dates are not
necessarily the project schedule; rather, they indicate the time periods within which the activity could be
scheduled, given activity durations, logical relationships, leads, lags, and other known constraints.
    Calculated early start and finish dates, and late start and finish dates, may be affected by activity
total float, which provides schedule flexibility and, may be positive, negative, or zero. On any network
path, the schedule flexibility is measured by the positive difference between early and late dates, and is
termed “total float.” Critical paths have either a zero or negative total float, and schedule activities on a
critical path are called “critical activities.” A critical path is normally characterized by zero total float on
the critical path. Networks can have multiple near critical paths. Adjustments to activity durations, logical
relationships, leads and lags, or other schedule constraints may be necessary to produce network paths
with a zero or positive total float. Once the total float for a network path has been calculated then the
free float, the amount of time that an activity can be delayed without delaying the early start date of any
immediate successor activity within the network path, can also be determined.
'!

criticalPathMethodNew
		^super new
			name: 'Critical Path Method'; 
			description: self criticalPathMethod;
			yourself.!

cuestionariosEncuestas

	^'Los cuestionarios y las encuestas son conjuntos de preguntas escritas, diseñadas para acumular
información rápidamente, proveniente de un amplio número de encuestados. Los cuestionarios
y/o las encuestas son apropiados sobre todo en caso de un público numeroso, cuando se
requiere una respuesta más rápida y cuando es conveniente realizar análisis estadísticos.'!

datosEstimacionPublicados

	^'Muchas empresas publican periódicamente los índices de producción actualizados y los costos
unitarios de los recursos para una gran variedad de industrias, materiales y equipos, en
diferentes países y en diferentes ubicaciones geográficas dentro de esos países.'!

decomposition

	^'Decomposition is the subdivision of project deliverables into smaller, more manageable components
until the work and deliverables are defined to the work package level. The work package level is the
lowest level in the WBS, and is the point at which the cost and activity durations for the work can
be reliably estimated and managed. The level of detail for work packages will vary with the size and
complexity of the project.
   Decomposition of the total project work into work packages generally involves the following activities:
   • Identifying and analyzing the deliverables and related work,
   • Structuring and organizing the WBS,
   • Decomposing the upper WBS levels into lower level detailed components,
   • Developing and assigning identification codes to the WBS components, and
   • Verifying that the degree of decomposition of the work is necessary and sufficient.
   A portion of a WBS with some branches of the WBS decomposed down through the work package
level is shown in Figure 5-8.
   The WBS structure can be created in a number of forms, such as:
   • Using phases of the project life cycle as the first level of decomposition, with the product and
        project deliverables inserted at the second level, as shown in Figure 5-9;
   • Using major deliverables as the first level of decomposition, as shown in Figure 5-10; and
   • Using subprojects which may be developed by organizations outside the project team, such
        as contracted work. The seller then develops the supporting contract work breakdown
        structure as part of the contracted work.

    Decomposition of the upper level WBS components requires subdividing the work for each of the
deliverables or subprojects into its fundamental components, where the WBS components represent
verifiable products, services, or results. The WBS can be structured as an outline, an organizational
chart, a fishbone diagram, or other method. Verifying the correctness of the decomposition requires
determining that the lower-level WBS components are those that are necessary and sufficient for
completion of the corresponding higher level deliverables. Different deliverables can have different
levels of decomposition. To arrive at a work package, the work for some deliverables needs to be
decomposed only to the next level, while others need additional levels of decomposition. As the work
is decomposed to greater levels of detail, the ability to plan, manage, and control the work is enhanced.
However, excessive decomposition can lead to non-productive management effort, inefficient use of
resources, and decreased efficiency in performing the work.
    Decomposition may not be possible for a deliverable or subproject that will be accomplished far
into the future. The project management team usually waits until the deliverable or subproject is
clarified so the details of the WBS can be developed. This technique is sometimes referred to as rolling
wave planning.
    The WBS represents all product and project work, including the project management work. The
total of the work at the lowest levels must roll up to the higher levels so that nothing is left out and no
extra work is completed. This is sometimes called the 100% rule.
    The PMI Practice Standard for Work Breakdown Structures - Second Edition provides guidance for
the generation, development, and application of work breakdown structures. This standard contains
industry-specific examples of WBS templates that can be tailored to specific projects in a particular
application area.'!

decomposition2
	^'The technique of decomposition, as applied to defining activities, involves subdividing the project
work packages into smaller, more manageable components called activities. Activities represent the
effort needed to complete a work package. The Define Activities process defines the final outputs as
activities rather than deliverables, as done in the Create WBS process (Section 5.3).
    The activity list, WBS, and WBS dictionary can be developed either sequentially or concurrently, with
the WBS and WBS dictionary as the basis for development of the final activity list. Each work package
within the WBS is decomposed into the activities required to produce the work package deliverables.
Involving team members in the decomposition can lead to better and more accurate results.'!

decomposition2New
		^super new
			name: 'Decomposition2'; 
			description: self decomposition2;
			yourself.!

decompositionNew
		^super new
			name: 'Decomposition'; 
			description: self decomposition;
			yourself.!

dependencyDetermination
	^'Three types of dependencies are used to define the sequence among the activities:
• Mandatory dependencies. Mandatory dependencies are those that are contractually required
   or inherent in the nature of the work. The project team determines which dependencies are
   mandatory during the process of sequencing the activities. Mandatory dependencies often
   involve physical limitations, such as on a construction project where it is impossible to erect
   the superstructure until after the foundation has been built, or on an electronics project, where
   a prototype must be built before it can be tested. Mandatory dependencies are also sometimes
   referred to as hard logic.
• Discretionary dependencies. The project team determines which dependencies are
  discretionary during the process of sequencing the activities. Discretionary dependencies
  are sometimes referred to as preferred logic, preferential logic, or soft logic. Discretionary
  dependencies are established based on knowledge of best practices within a particular
  application area or some unusual aspect of the project where a specific sequence is desired,
  even though there may be other acceptable sequences. Discretionary dependencies should be
  fully documented since they can create arbitrary total float values and can limit later scheduling
  options. When fast tracking techniques are employed, these discretionary dependencies should
  be reviewed and considered for modification or removal.
• External dependencies. The project management team determines which dependencies
  are external during the process of sequencing the activities. External dependencies involve a
  relationship between project activities and non-project activities. These dependencies are usually
  outside the project team’s control. For example, the testing activity in a software project can be
  dependent on the delivery of hardware from an external source, or governmental environmental
  hearings may need to be held before site preparation can begin on a construction project.'!

dependencyDeterminationNew
		^super new
			name: 'Dependency Determination'; 
			description: self dependencyDetermination;
			yourself.!

descomposicion
	^'La descomposición es la subdivisión de los entregables del proyecto en componentes más
pequeños y más manejables, hasta que el trabajo y los entregables queden definidos al nivel de
paquetes de trabajo. El nivel de paquetes de trabajo es el nivel más bajo en la EDT, y es aquél
en el que el costo y la duración de las actividades del trabajo pueden estimarse y gestionarse de
manera más confiable. El nivel de detalle para los paquetes de trabajo varía en función del
tamaño y la complejidad del proyecto.
La descomposición de la totalidad del trabajo del proyecto en paquetes de trabajo implica
generalmente las siguientes actividades:
• identificar y analizar los entregables y el trabajo relacionado
• estructurar y organizar la EDT
• descomponer los niveles superiores de la EDT en componentes detallados de nivel
inferior
• desarrollar y asignar códigos de identificación a los componentes de la EDT
• verificar que el grado de descomposición del trabajo sea el necesario y suficiente
El Gráfico 5-8 muestra una parte de una EDT con algunas ramas desglosadas hasta el
nivel de los paquetes de trabajo.
La estructura de la EDT puede crearse de diferentes maneras, tales como:
• Usando las fases del ciclo de vida del proyecto como primer nivel de descomposición,
con los entregables del producto y del proyecto insertados en el segundo nivel, como se
ilustra en el Gráfico 5-9.
• Usando los entregables principales como primer nivel de descomposición, como se
muestra en el Gráfico 5-10.
• Usando subproyectos que pueden ser ejecutados por organizaciones externas al equipo
del proyecto, como trabajo contratado. En el marco de un trabajo mediante contrato, el
vendedor desarrollará la estructura de desglose del trabajo contratado correspondiente.
La descomposición de los componentes del nivel superior de la EDT requiere subdividir
el trabajo para cada uno de los entregables o subproyectos en sus componentes
fundamentales, hasta el nivel en que los componentes de la EDT representen productos,
servicios o resultados verificables. La EDT puede estructurarse como un esquema, un
organigrama, un diagrama de espina de pescado o cualquier otro método. La verificación de
la exactitud de la descomposición requiere determinar que los componentes de nivel inferior
de la EDT sean los necesarios y suficientes para completar los entregables de alto nivel
correspondientes. Cada entregable diferente puede tener diferentes niveles de
descomposición. Para llegar al nivel del paquete de trabajo, en el caso de algunos entregables
sólo se necesitará descomponer el trabajo al siguiente nivel, mientras que en otros casos será
necesario añadir niveles suplementarios de descomposición. Conforme se descompone el
trabajo en niveles de mayor detalle, la capacidad de planificar, gestionar y controlar el trabajo
es mayor. Sin embargo, una descomposición excesiva puede ocasionar un esfuerzo
improductivo de gestión, un uso ineficaz de recursos y una disminución de la eficiencia de
realización del trabajo.
En el caso de entregables o subproyectos cuya realización se sitúe en un futuro lejano, es
probable que no pueda realizarse la descomposición. Normalmente, el equipo de dirección
del proyecto espera hasta que el entregable o subproyecto sea lo suficientemente claro para
poder desarrollar los detalles de la EDT. Esta técnica se denomina a veces planificación
gradual.
La EDT representa todo el trabajo necesario para realizar el producto o el proyecto, e
incluye el trabajo de gestión del proyecto. El total del trabajo en los niveles inferiores de la
EDT debe corresponder al cúmulo de los niveles superiores, de modo que no se omita nada y
que no se efectúe ningún trabajo innecesario. Esto se denomina a veces la regla del 100 %.
La Practice Standard for Work Breakdown Structures del PMI proporciona consejos
sobre la creación, el desarrollo y la aplicación de las estructuras de desglose del trabajo. Esta
norma contiene ejemplos de plantillas para la EDT, específicas a la industria, que pueden
adaptarse a proyectos particulares en una determinada área de aplicación.'!

descomposicionActividades
	^'La técnica de descomposición, tal como se aplica para definir las actividades, consiste en
subdividir los paquetes de trabajo del proyecto en componentes más pequeños y más fáciles de
manejar, denominados actividades. Las actividades representan el esfuerzo necesario para
completar un paquete de trabajo. El proceso Definir las Actividades define las salidas finales
como actividades y no como entregables, como se realiza en el proceso Crear la EDT (Sección
5.3).
La lista de actividades, la EDT y el diccionario de la EDT pueden elaborarse de manera
secuencial o simultánea, usando la EDT y el diccionario de la EDT como base para el
desarrollo de la lista final de actividades. Cada paquete de trabajo dentro de la EDT se
descompone en las actividades necesarias para producir los entregables del paquete de
trabajo. La participación de los miembros del equipo en la descomposición puede conducir a
obtener resultados mejores y más precisos.'!

designOfExperiments

	^'Design of experiments (DOE) is a statistical method for identifying which factors may influence specific
variables of a product or process under development or in production. DOE should be used during the
Plan Quality process to determine the number and type of tests and their impact on cost of quality.
    DOE also plays a role in the optimization of products or processes. DOE can be used to reduce the
sensitivity of product performance to sources of variations caused by environmental or manufacturing
differences. One important aspect of this technique is that it provides a statistical framework for
systematically changing all of the important factors, rather than changing the factors one at a time.
Analysis of the experimental data should provide the optimal conditions for the product or process,
highlight the factors that influence the results, and reveal the presence of interactions and synergy among
the factors. For example, automotive designers use this technique to determine which combination of
suspension and tires will produce the most desirable ride characteristics at a reasonable cost.
'!

designOfExperimentsNew
		^super new
			name: 'Design Of Experiments'; 
			description: self designOfExperiments;
			yourself.!

determinacionDependencias
	^'Para definir la secuencia entre las actividades, se emplean tres tipos de dependencias:
• Dependencias obligatorias. Las dependencias obligatorias son aquéllas requeridas por
contrato, o inherentes a la naturaleza del trabajo. El equipo del proyecto determina qué
dependencias son obligatorias durante el proceso de establecimiento de la secuencia de
las actividades. Las dependencias obligatorias a menudo implican limitaciones físicas,
como en un proyecto de construcción, donde es imposible erigir la superestructura hasta
tanto no se construyan los cimientos; o en un proyecto de electrónica, donde se debe
construir el prototipo antes de poder probarlo. A veces se utiliza la expresión “lógica
dura” para referirse a las dependencias obligatorias.
• Dependencias discrecionales. El equipo del proyecto determina qué dependencias son
discrecionales durante el proceso de establecimiento de la secuencia de las actividades. A
veces, las dependencias discrecionales se denominan lógica preferida, lógica preferencial
o lógica blanda. Las dependencias discrecionales se establecen con base en el
conocimiento de las mejores prácticas dentro de un área de aplicación determinada o a
algún aspecto poco común del proyecto, donde se desea una secuencia específica, aunque
existan otras secuencias aceptables. Las dependencias discrecionales deben documentarse
totalmente, ya que pueden crear valores arbitrarios de holgura total y pueden limitar las
opciones posteriores de planificación. Cuando se emplean técnicas de ejecución rápida,
estas dependencias discrecionales deben revisarse, y debe considerarse su modificación o
eliminación.
• Dependencias externas. El equipo de dirección del proyecto determina qué dependencias
son externas durante el proceso de establecimiento de la secuencia de las actividades. Las
dependencias externas implican una relación entre las actividades del proyecto y aquéllas
que no pertenecen al proyecto. Normalmente, estas dependencias están fuera del control
del equipo del proyecto. Por ejemplo, la actividad de prueba en un proyecto de software
puede depender de la entrega del hardware por parte de una fuente externa, o en el caso
de un proyecto de construcción, puede ser necesario realizar informes gubernamentales de
evaluación del impacto ambiental antes de iniciar la preparación del emplazamiento.'!

diagramaComportamiento
	^'De manera similar a un diagrama de control pero sin mostrar los límites, un diagrama
de comportamiento muestra el historial y el patrón de variaciones. Un diagrama de
comportamiento es una gráfica lineal que muestra los puntos de datos trazados en el
orden en que suceden. Los diagramas de comportamiento muestran las tendencias,
variaciones, deterioros o mejoras de un proceso a lo largo del tiempo. El análisis de
tendencias se realiza mediante diagramas de comportamiento e implica utilizar técnicas
matemáticas para proyectar resultados futuros basándose en resultados históricos. El
análisis de tendencias se usa a menudo para supervisar:
• El desempeño técnico. ¿Cuántos errores o defectos se han identificado y
cuántos permanecen sin corregir?
• El desempeño del costo y del cronograma. ¿Cuántas actividades se
completaron por período con variaciones significativas?'!

diagramaDispersion
	^'Un diagrama de dispersión (Gráfico 8-16) muestra la relación entre dos variables. Esta
herramienta permite al equipo de calidad estudiar e identificar la posible relación entre
los cambios observados en dos variables. Se trazan las variables dependientes frente a
las variables independientes. Mientras más próximos se encuentren los puntos con
respecto a una línea diagonal, mayor será su relación. El Gráfico 8-16 muestra la
correlación entre la fecha de entrega de la tarjeta de registro horario y el número de días
de viaje por mes.'!

diagramaPareto
	^'Un diagrama de Pareto es un tipo específico de histograma, ordenado por frecuencia de
ocurrencia. Muestra cuántos defectos se generaron por tipo o categoría de causa
identificada (Gráfico 8-15). El ordenamiento por categoría se emplea para guiar la
acción correctiva. El equipo del proyecto debería atender en primer lugar las causas que
provocan el mayor número de defectos.
Los diagramas de Pareto están relacionados conceptualmente con la ley de Pareto, que
establece que un número relativamente pequeño de causas provocará generalmente la
mayoría de los problemas o defectos. Esto se denomina comúnmente principio 80/20,
donde el 80 por ciento de los problemas se debe al 20 por ciento de las causas. Los
diagramas de Pareto también se pueden usar para resumir diversos tipos de datos y
analizarlos según el principio 80/20.'!

diagramasCausaEfecto
	^'Los diagramas de causa y efecto, también conocidos como diagramas de Ishikawa o
diagramas de espina de pescado, ilustran la manera en que diversos factores pueden
estar vinculados con un problema o efecto potencial. Los Gráficos 8-12 y 8-13 son
ejemplos de diagramas de causa y efecto. Una causa posible puede descubrirse
preguntando continuamente “¿por qué?” o “¿cómo?” a lo largo de una de las líneas. Los
diagramas “por qué-por qué” y “cómo-cómo” pueden utilizarse en el análisis causal.
Los diagramas de causa y efecto también pueden usarse en el análisis de riesgos
(Sección 11.2.2.5).'!

diagramasControl

	^'Los diagramas de control se utilizan para determinar si un proceso es estable o no, o si
tiene un desempeño predecible. Los límites superior e inferior de las especificaciones se
basan en los requisitos del contrato. Reflejan los valores máximo y mínimo permisibles.
Puede haber sanciones asociadas con el incumplimiento de los límites de las
especificaciones. El director del proyecto y los interesados apropiados establecen los
límites de control superior e inferior, para reflejar los puntos en los cuales deben
implementarse acciones correctivas para evitar que se sobrepasen los límites de las
especificaciones. Para procesos repetitivos, los límites de control se establecen por lo
general en ± 3s. Un proceso se considera fuera de control cuando un punto de datos
excede un límite de control o cuando siete puntos consecutivos se encuentran por
encima o por debajo de la media.
Los diagramas de control pueden utilizarse para monitorear diferentes tipos de
variables de salida. Aunque se utilizan más frecuentemente para rastrear actividades
repetitivas tales como las relativas a la fabricación de lotes, los diagramas de control
también pueden usarse para monitorear las variaciones del costo y del cronograma, la
cantidad y frecuencia de los cambios en el alcance, u otros resultados de gestión, para
ayudar a determinar si los procesos de dirección del proyecto se encuentran bajo
control. El Gráfico 8-5 muestra un diagrama de control que rastrea las horas
registradas del proyecto. El Gráfico 8-6 muestra los defectos medidos de un producto
con respecto a los límites establecidos.'!

diagramasFlujo
	^'Un diagrama de flujo es una representación gráfica de un proceso que muestra las
relaciones entre las etapas del proceso. Existen muchos estilos de diagramas de flujo,
pero todos muestran las actividades, los puntos de decisión y el orden de desarrollo del
proceso. Durante la planificación de la calidad, los diagramas de flujo pueden ayudar al
equipo del proyecto a anticipar problemas de calidad que pudieran ocurrir. Tener
consciencia de los problemas potenciales puede permitir el desarrollo de
procedimientos de prueba o métodos para abordarlos. El Gráfico 8-7 muestra un
ejemplo de un diagrama de flujo para revisiones del diseño.'!

diagrammingTechniques

	^'Risk diagramming techniques may include:
• Cause and effect diagrams (Section 8.3.2.1). These are also known as Ishikawa or fishbone
   diagrams, and are useful for identifying causes of risks.
• System or process flow charts. These show how various elements of a system interrelate,
   and the mechanism of causation (Section 8.3.2.3).
• Influence diagrams. These are graphical representations of situations showing causal
   influences, time ordering of events, and other relationships among variables and outcomes.'
!

diagrammingTechniquesNew
		^super new
			name: 'Diagramming Techniques'; 
			description: self diagrammingTechniques;
			yourself.!

disenoExperimentos
	^'El diseño de experimentos (DOE) es un método estadístico para identificar qué factores
pueden influir en variables específicas de un producto o proceso en fase de desarrollo o
de producción. El DOE debe emplearse durante el proceso Planificar la Calidad para
determinar la cantidad y el tipo de pruebas por efectuar, así como su impacto en el costo
de la calidad.
El DOE también juega un papel en la optimización de productos o procesos.
Puede utilizarse para reducir la sensibilidad del desempeño del producto a las fuentes
de variación causadas por diferencias ambientales o de fabricación. Un aspecto
importante de esta técnica es que proporciona un marco estadístico para cambiar
sistemáticamente todos los factores importantes, en lugar de cambiar un factor a la
vez. El análisis de los datos experimentales debería proporcionar las condiciones
óptimas para el producto o proceso, resaltar los factores que influyen en los resultados
y revelar la presencia de interacciones y sinergia entre los factores. Por ejemplo, los
diseñadores de automóviles emplean esta técnica para determinar qué combinación de
suspensión y neumáticos producirá las mejores características de marcha a un costo
razonable.'!

documentationReviews

	^'A structured review may be performed of project documentation, including plans, assumptions,
previous project files, contracts, and other information. The quality of the plans, as well as
consistency between those plans and the project requirements and assumptions, can be indicators of
risk in the project.'!

documentationReviewsNew
		^super new
			name: 'Documentation Reviews'; 
			description: self documentationReviews;
			yourself.!

earnedValueManagement

	^'Earned value management (EVM) in its various forms is a commonly used method of performance
measurement. It integrates project scope, cost, and schedule measures to help the project management
team assess and measure project performance and progress. It is a project management technique
that requires the formation of an integrated baseline against which performance can be measured for
the duration of the project. The principles of EVM can be applied to all projects, in any industry. EVM
develops and monitors three key dimensions for each work package and control account:
• Planned value. Planned value (PV) is the authorized budget assigned to the work to be accomplished
   for an activity or work breakdown structure component. It includes the detailed authorized work,
   plus the budget for such authorized work, allocated by phase over the life of the project. The total
   of the PV is sometimes referred to as the performance measurement baseline (PMB). The total
   planned value for the project is also known as Budget At Completion (BAC).
• Earned value. Earned value (EV) is the value of work performed expressed in terms of the
   approved budget assigned to that work for an activity or work breakdown structure component.
   It is the authorized work that has been completed, plus the authorized budget for such completed
   work. The EV being measured must be related to the PV baseline (PMB), and the EV measured
   cannot be greater than the authorized PV budget for a component. The term EV is often used
   to describe the percentage completion of a project. A progress measurement criteria should be
   established for each WBS component to measure work in progress. Project managers monitor
   EV, both incrementally to determine current status and cumulatively to determine the long-term
   performance trends.
• Actual cost. Actual cost (AC) is the total cost actually incurred and recorded in accomplishing
   work performed for an activity or work breakdown structure component. It is the total cost
   incurred in accomplishing the work that the EV measured. The AC has to correspond in definition
   to whatever was budgeted for in the PV and measured in the EV (e.g., direct hours only, direct
   costs only, or all costs including indirect costs). The AC will have no upper limit; whatever is
   spent to achieve the EV will be measured.
Variances from the approved baseline will also be monitored:
• Schedule variance. Schedule variance (SV) is a measure of schedule performance on a project.
   It is equal to the earned value (EV) minus the planned value (PV). The EVM schedule variance
   is a useful metric in that it can indicate a project falling behind its baseline schedule. The EVM
   schedule variance will ultimately equal zero when the project is completed because all of the
   planned values will have been earned. EVM SVs are best used in conjunction with critical path
   methodology (CPM) scheduling and risk management. Equation: SV = EV – PV.
• Cost variance. Cost variance (CV) is a measure of cost performance on a project. It is equal
   to the earned value (EV) minus the actual costs (AC). The cost variance at the end of the
   project will be the difference between the budget at completion (BAC) and the actual amount
   spent. The EVM CV is particularly critical because it indicates the relationship of physical
   performance to the costs spent. Any negative EVM CV is often non-recoverable to the project.
   Equation: CV= EV – AC.
   The SV and CV values can be converted to efficiency indicators to reflect the cost and schedule
performance of any project for comparison against all other projects or within a portfolio of projects.
The variances and indices are useful for determining project status and providing a basis for estimating
project cost and schedule outcome.
   • Schedule performance index. The schedule performance index (SPI) is a measure of progress
       achieved compared to progress planned on a project. It is sometimes used in conjunction with
       the cost performance index (CPI) to forecast the final project completion estimates. An SPI value
       less than 1.0 indicates less work was completed than was planned. An SPI greater than 1.0
       indicates that more work was completed than was planned. Since the SPI measures all project
       work, the performance on the critical path must also be analyzed to determine whether the
       project will finish ahead of or behind its planned finish date. The SPI is equal to the ratio of the
       EV to the PV. Equation: SPI = EV/PV.
   • Cost performance index. The cost performance index (CPI) is a measure of the value of work
       completed compared to the actual cost or progress made on the project. It is considered the
       most critical EVM metric and measures the cost efficiency for the work completed. A CPI value
       less than 1.0 indicates a cost overrun for work completed. A CPI value greater than 1.0 indicates
       a cost underrun of performance to date. The CPI is equal to the ratio of the EV to the AC.
       Equation: CPI = EV/AC.
   The three parameters of planned value, earned value, and actual cost can be monitored and
reported on both a period-by-period basis (typically weekly or monthly) and on a cumulative basis.
Figure 7-9 uses S-curves to display EV data for a project that is performing over budget and behind
the work plan.
'!

earnedValueManagementNew
		^super new
			name: 'Earned Value Management'; 
			description: self earnedValueManagement;
			yourself.!

entrevistas
	^'Una entrevista es una manera formal o informal de obtener información acerca de los
interesados, a través de un diálogo directo con ellos. Se realiza habitualmente haciendo
preguntas, preparadas o espontáneas, y registrando las respuestas. Las entrevistas se realizan a
menudo de manera individualizada, pero también pueden implicar a varios entrevistadores y/o
entrevistados. Entrevistar a participantes con experiencia en el proyecto, así como a interesados
y expertos en la materia, puede ayudar a identificar y definir las características y funciones de
los entregables esperados del proyecto.'!

equiposVirtuales
	^'El uso de equipos virtuales crea nuevas posibilidades a la hora de adquirir a los miembros del
equipo del proyecto. Los equipos virtuales pueden definirse como grupos de personas con un
objetivo común, que cumplen con sus respectivos roles pasando poco o nada de tiempo en
reuniones cara a cara. La disponibilidad de medios de comunicación electrónica como el correo
electrónico, las audioconferencias, los encuentros por Internet y las videoconferencias, ha
hecho posible la existencia de estos equipos. El formato de equipo virtual permite:
• formar equipos de personas de la misma empresa que viven en áreas geográficas
dispersas,
• aportar experiencia especial a un equipo del proyecto, incluso si el experto no se
encuentra en la misma área geográfica,
• incorporar empleados que trabajan desde oficinas instaladas en sus domicilios,
• formar equipos de personas que trabajan en diferentes turnos u horarios,
• incluir personas con limitaciones de movilidad o discapacidades,
• avanzar en proyectos que habrían sido descartados debido a los gastos de
desplazamiento.
La planificación de las comunicaciones adquiere una importancia cada vez mayor en el
entorno de un equipo virtual. Puede ser necesario dedicar tiempo adicional para establecer
expectativas claras, facilitar las comunicaciones, desarrollar protocolos para la resolución de
conflictos, incluir personas en la toma de decisiones y compartir los méritos del éxito.'!

estimacionAnaloga
	^'Una técnica de estimación que utiliza los valores
de parámetros como el alcance, el costo, el
presupuesto y la duración o medidas de escala
tales como el tamaño, el peso y la complejidad de
una actividad similar anterior como base para
estimar el mismo parámetro o medida para una
actividad futura. También conocido como:
Estimación por Analogía.
-----------------------------------------------------------------------------------------------------------------------
La estimación de costos por analogía utiliza los valores de parámetros como el alcance, el
costo, el presupuesto y la duración, o medidas de escala tales como el tamaño, el peso y la
complejidad de un proyecto anterior similar, como base para estimar el mismo parámetro o
medida para un proyecto actual. Cuando se trata de estimar costos, esta técnica utiliza el costo
real de proyectos similares anteriores como base para estimar el costo del proyecto actual. Es
un método de estimación del valor bruto, que a veces se ajusta en función de diferencias
conocidas en cuanto a la complejidad del proyecto.
La estimación de costos por analogía se emplea frecuentemente para estimar un parámetro
cuando existe una cantidad limitada de información detallada sobre el proyecto, como es el
caso, por ejemplo, en sus fases iniciales. La estimación de costos por analogía utiliza la
información histórica y el juicio de expertos.
Por lo general, la estimación de costos por analogía es menos costosa y requiere menos
tiempo que las otras técnicas, pero también es menos exacta. Puede aplicarse a todo un
proyecto o a partes del mismo, y puede utilizarse en conjunto con otros métodos de
estimación. La estimación análoga es más confiable cuando el proyecto anterior es similar, no
sólo en apariencia sino en los hechos, y cuando los miembros del equipo del proyecto
responsables de efectuar los estimados poseen la experiencia necesaria.
--------------------------------------------------------------------------------------------------------------------
La estimación análoga utiliza parámetros de un proyecto anterior similar, tales como la
duración, el presupuesto, el tamaño, la carga y la complejidad, como base para estimar los
mismos parámetros o medidas para un proyecto futuro. Cuando se trata de estimar duraciones,
esta técnica utiliza la duración real de proyectos similares anteriores como base para estimar la
duración del proyecto actual. Es un método de estimación del valor bruto, que a veces se ajusta
en función de diferencias conocidas en cuanto a la complejidad del proyecto.
La estimación análoga de la duración se emplea frecuentemente para estimar la duración
de un proyecto cuando existe una cantidad limitada de información detallada sobre el mismo,
como es el caso, por ejemplo, en las fases iniciales del proyecto. La estimación análoga
utiliza la información histórica y el juicio de expertos.
Por lo general, la estimación análoga es menos costosa y requiere menos tiempo que las
otras técnicas, pero también es menos exacta. La estimación análoga de costos puede
aplicarse a todo un proyecto o a partes del mismo, y puede utilizarse en conjunto con otros
métodos de estimación. La estimación análoga es más confiable cuando las actividades
anteriores son similares, no sólo en apariencia sino por hecho, y cuando los miembros del
equipo del proyecto responsables de efectuar los estimados poseen la experiencia necesaria.'!

estimacionAscendente

	^'Un método de estimación de un componente del
trabajo. El trabajo se descompone más
detalladamente. Se prepara un estimado de lo que
se necesita para cumplir con los requisitos de
cada una de las partes del trabajo inferiores y más
detalladas, y estas estimaciones se suman luego a
la cantidad total del componente del trabajo. La
exactitud de la estimación ascendente se basa en
el tamaño y la complejidad del trabajo
identificado en los niveles inferiores.
--------------------------------------------------------------
La estimación ascendente es un método para estimar los componentes del trabajo. El costo de
cada paquete de trabajo o de cada actividad se calcula con el mayor nivel de detalle. El costo
detallado luego se resume o “acumula” en niveles superiores para fines de información y
seguimiento. En general, la magnitud y complejidad de la actividad o del paquete de trabajo
individual influyen en el costo y la exactitud de la estimación ascendente de costos.'!

estimacionesIndependientes
	^'En el caso de muchos elementos de adquisición, la organización compradora puede elegir entre
preparar su propia estimación independiente o contratar los servicios de un estimador
profesional externo, a fin de servir como norma de comparación de las respuestas propuestas.
En caso de que existan diferencias considerables en las estimaciones de costos, esto podría ser
un indicio de que el enunciado del trabajo relativo a adquisiciones fue deficiente, ambiguo y/o
que los vendedores potenciales no interpretaron correctamente dicho enunciado o no pudieron
responder integralmente al mismo.'!

estimacionParametrica
	^'Una técnica de estimación que utiliza una
relación estadística entre los datos históricos y
otras variables (p.ej., pies cuadrados en la
construcción; líneas de código en desarrollo de
software) para calcular una estimación de
parámetros de una actividad tales como alcance,
costo, presupuesto y duración. Un ejemplo del
parámetro de costos se obtiene multiplicando la
cantidad planificada de trabajo que se deba
realizar por el costo histórico por unidad, a fin de
obtener el costo estimado.
---------------------------------------------------------
La estimación paramétrica utiliza una relación estadística entre los datos históricos y otras
variables (por ej., pies cuadrados en la construcción) para calcular una estimación de
parámetros de una actividad tales como costo, presupuesto y duración.
La duración de la actividad puede determinarse cuantitativamente multiplicando la
cantidad de trabajo por realizar por la cantidad de horas de trabajo por unidad de trabajo. Por
ejemplo, en un proyecto de diseño, la duración de una actividad puede estimarse
multiplicando el número de planos por la cantidad de horas de trabajo necesarias para cada
plano; o para una instalación de cable, multiplicando los metros de cable por la cantidad de
horas de trabajo necesarias para instalar cada metro de cable. Si, por ejemplo, el recurso
asignado es capaz de instalar 25 metros de cable por hora, la duración requerida para instalar
1.000 metros sería de 40 horas. (1.000 metros divididos por 25 metros por hora).
Con esta técnica pueden lograrse niveles más altos de exactitud, dependiendo de la
sofisticación y de los datos que utilice el modelo. La estimación paramétrica de tiempo puede
aplicarse a todo un proyecto o a partes del mismo, en conjunto con otros métodos de
estimación.
----------------------------------------------------------------------------------------------------------------------
La estimación paramétrica utiliza una relación estadística entre los datos históricos y otras
variables (p.ej., pies cuadrados en la construcción) para calcular una estimación de parámetros
de una actividad tales como costo, presupuesto y duración. Con esta técnica pueden lograrse
niveles superiores de exactitud, dependiendo de la sofisticación y de los datos que utilice el
modelo. La estimación paramétrica de costos puede aplicarse a todo un proyecto o a partes del
mismo, en conjunto con otros métodos de estimación.'!

estimacionTresValores
	^'Una técnica analítica que utiliza tres
estimaciones de costo o duración en las que se
muestra un escenario optimista, uno que es el
más probable y uno pesimista. Esta técnica se
aplica para aumentar la precisión de las
estimaciones de costo o duración, cuando el
componente de actividad o costo subyacente
es incierto. También conocido como:
Estimación de Tres Puntos.
------------------------------------------------------------
La precisión de los estimados de la duración de la actividad puede mejorarse tomando en
consideración el grado de incertidumbre y de riesgo de la estimación. Este concepto se originó
con la Técnica de Revisión y Evaluación de Programas (método PERT). El método PERT
utiliza tres estimados para definir un rango aproximado de duración de una actividad:
• Más probable (tM). Es la duración de la actividad, en función de los recursos que
probablemente se asignarán, de su productividad, de las expectativas realistas de
disponibilidad para la actividad, de las dependencias de otros participantes y de las
interrupciones.
• Optimista (tO). La duración de la actividad está basada en el análisis del mejor escenario
posible para esa actividad.
• Pesimista (tP). La duración de la actividad está basada en el análisis del peor escenario
posible para esa actividad.
El análisis según el método PERT calcula una duración Esperada (tE) de la actividad
utilizando un promedio de estas tres estimaciones:
tE = (tO + 4tM + tP) / 6
Los estimados de la duración basados en esta ecuación (o aun en un promedio simple de
los tres valores) pueden proporcionar una mayor exactitud, y los tres valores aclaran el rango
de incertidumbre de los estimados de la duración.
--------------------------------------------------------------------------------------------------------------------------
La exactitud de las estimaciones de costos de una actividad única puede mejorarse tomando en
consideración la incertidumbre y el riesgo. Este concepto se originó con la Técnica de Revisión
y Evaluación de Programas (PERT). El PERT utiliza tres estimados para definir un rango
aproximado de costo de una actividad:
• Más probable (cM). El costo de la actividad se basa en una evaluación realista del
esfuerzo necesario para el trabajo requerido y cualquier gasto previsto.
• Optimista (cO). El costo de la actividad se basa en el análisis del mejor escenario posible
para esa actividad.
• Pesimista (cP). El costo de la actividad se basa en el análisis del peor escenario posible
para esa actividad.
El análisis según el método PERT calcula un costo Esperado (CE) de la actividad
utilizando un promedio ponderado de estas tres estimaciones:
cE = (cO + 4cM + cP) / 6
Las estimaciones de costos basadas en esta ecuación (o aun en un promedio simple de los
tres valores) pueden proporcionar una mayor exactitud, y los tres valores aclaran el rango de
incertidumbre de las estimaciones de costos.'!

estrategiasRespuestaContingencias
	^'Algunas estrategias están diseñadas para ser usadas únicamente si se presentan determinados
eventos. Para algunos riesgos, resulta apropiado para el equipo del proyecto elaborar un plan de
respuesta que sólo se ejecutará bajo determinadas condiciones predefinidas, si se cree que habrá
suficientes señales de advertencia para implementar el plan. Los eventos que disparan la
respuesta para contingencias, tales como no cumplir con hitos intermedios u obtener una
prioridad más alta con un proveedor, deben definirse y rastrearse.'!

estrategiasRiesgosNegativosAmenazas
	^'Las tres estrategias siguientes abordan normalmente las amenazas o los riesgos que pueden
tener impactos negativos sobre los objetivos del proyecto en caso de ocurrir. La cuarta
estrategia, aceptar, puede utilizarse tanto para riesgos negativos o amenazas como para riesgos
positivos u oportunidades. Estas estrategias, descritas a continuación, consisten en evitar,
transferir, mitigar o aceptar.
• Evitar. Evitar el riesgo implica cambiar el plan para la dirección del proyecto, a fin
de eliminar por completo la amenaza. El director del proyecto también puede aislar
los objetivos del proyecto del impacto de los riesgos o cambiar el objetivo que se
encuentra amenazado. Ejemplos de lo anterior son la ampliación del cronograma, el
cambio de estrategia o la reducción del alcance. La estrategia de evasión más drástica
consiste en anular por completo el proyecto. Algunos riesgos que surgen en etapas
tempranas del proyecto pueden ser evitados aclarando los requisitos, obteniendo
información, mejorando la comunicación o adquiriendo experiencia.
• Transferir. Transferir el riesgo requiere trasladar a un tercero todo o parte del
impacto negativo de una amenaza, junto con la propiedad de la respuesta. La
transferencia de un riesgo simplemente confiere a una tercera persona la
responsabilidad de su gestión; no lo elimina. La transferencia de la responsabilidad de
un riesgo es más efectiva cuando se trata de la exposición a riesgos financieros.
Transferir el riesgo casi siempre implica el pago de una prima de riesgo a la parte que
asume el riesgo. Las herramientas de transferencia pueden ser bastante diversas e
incluyen, entre otras, el uso de seguros, garantías de cumplimiento, fianzas,
certificados de garantía, etc. Pueden emplearse contratos para transferir a un tercero la
responsabilidad de riesgos específicos. Por ejemplo, cuando un comprador dispone de
capacidades que el vendedor no posee, puede ser prudente transferir contractualmente
al comprador parte del trabajo junto con sus riesgos correspondientes. En muchos
casos, el uso de un contrato de margen sobre el costo puede transferir el costo del
riesgo al comprador, mientras que un contrato de precio fijo puede transferir el riesgo
al vendedor.
• Mitigar. Mitigar el riesgo implica reducir a un umbral aceptable la probabilidad y/o el
impacto de un evento adverso. Adoptar acciones tempranas para reducir la
probabilidad de ocurrencia de un riesgo y/o su impacto sobre el proyecto, a menudo
es más efectivo que tratar de reparar el daño después de ocurrido el riesgo. Ejemplos
de acciones tendientes a mitigar un riesgo son adoptar procesos menos complejos,
efectuar más pruebas o seleccionar un proveedor más estable. Por ejemplo, la
mitigación puede requerir la creación de un prototipo para reducir el riesgo de pasar
de un modelo a escala de un proceso o producto a uno de tamaño real. Cuando no es
posible reducir la probabilidad, una respuesta de mitigación puede abordar el impacto
del riesgo, dirigiéndose a los vínculos que determinan su severidad. Por ejemplo,
diseñar redundancia en un sistema puede permitir reducir el impacto causado por un
fallo del componente original.
• Aceptar. Esta estrategia se adopta debido a que rara vez es posible eliminar todas las
amenazas de un proyecto. Esta estrategia indica que el equipo del proyecto ha
decidido no cambiar el plan para la dirección del proyecto para hacer frente a un
riesgo, o no ha podido identificar ninguna otra estrategia de respuesta adecuada. Esta
estrategia puede ser pasiva o activa. La aceptación pasiva no requiere ninguna acción,
excepto documentar la estrategia, dejando que el equipo del proyecto aborde los
riesgos conforme se presentan. La estrategia de aceptación activa más común consiste
en establecer una reserva para contingencias, que incluya la cantidad de tiempo,
medios financieros o recursos necesarios para abordar los riesgos.'!

estrategiasRiesgosPositivosOportunidades
	^'Tres de las cuatro respuestas se sugieren para tratar riesgos con impactos potencialmente
positivos sobre los objetivos del proyecto. La cuarta estrategia, aceptar, puede utilizarse tanto
para riesgos negativos o amenazas como para riesgos positivos u oportunidades. Estas
estrategias, descritas a continuación, son explotar, compartir, mejorar o aceptar.
• Explotar. Esta estrategia puede seleccionarse para los riesgos con impactos positivos,
cuando la organización desea asegurarse de que la oportunidad se haga realidad. Esta
estrategia busca eliminar la incertidumbre asociada con un riesgo positivo particular,
asegurando que la oportunidad definitivamente se concrete. Algunos ejemplos de
explotación directa de las respuestas incluyen la asignación al proyecto de recursos
más talentosos de la organización para reducir el tiempo hasta la conclusión o para
ofrecer un costo menor que el planificado originalmente.
• Compartir. Compartir un riesgo positivo implica asignar todo o parte de la propiedad
de la oportunidad a un tercero mejor capacitado para capturar la oportunidad en
beneficio del proyecto. Algunos ejemplos de acciones para compartir incluyen la
formación de asociaciones de riesgo conjunto, equipos, empresas con finalidades
especiales o uniones temporales de empresas, que pueden establecerse con el
propósito expreso de tomar ventaja de la oportunidad, de modo que todas las partes se
beneficien a partir de sus acciones.
• Mejorar. Esta estrategia se utiliza para aumentar la probabilidad y/o los impactos
positivos de una oportunidad. La identificación y maximización de las fuerzas
impulsoras clave de estos riesgos de impacto positivo pueden incrementar su
probabilidad de ocurrencia. Algunos ejemplos de mejorar las oportunidades incluyen
la adición de más recursos a una actividad para terminar más pronto.
• Aceptar. Aceptar una oportunidad consiste en tener la voluntad de tomar ventaja de
ella si se presenta, pero sin buscarla de manera activa.'!

estudiosComparativos
	^'Los estudios comparativos implican comparar prácticas reales o planificadas del
proyecto con las de proyectos comparables, para identificar las mejores prácticas,
generar ideas de mejoras y proporcionar una base para la medición del desempeño.
Estos otros proyectos pueden estar dentro o fuera de la organización ejecutante y
pueden pertenecer a la misma área de aplicación o a otra.'!

evaluacionCalidadDatosSobreRiesgos

	^'Para ser creíble, un análisis cualitativo de riesgos requiere datos exactos y sin parcialidades. El
análisis de la calidad de los datos sobre riesgos es una técnica para evaluar el grado de utilidad
de los datos sobre riesgos para su gestión. Implica examinar el grado de entendimiento del
riesgo y la exactitud, calidad, fiabilidad e integridad de los datos relacionados con el riesgo. Si
la calidad de los datos es inaceptable, puede ser necesario recopilar datos de mayor calidad.'!

evaluacionesDesempenoProyecto

	^'Los objetivos de realizar evaluaciones del desempeño durante el transcurso de un proyecto
pueden incluir especificar roles y responsabilidades, proporcionar una retroalimentación
constructiva a los miembros del equipo, descubrir problemas desconocidos o no resueltos,
desarrollar planes de capacitación individuales y establecer objetivos específicos para períodos
futuros.
La necesidad de efectuar evaluaciones formales o informales del desempeño del proyecto
depende de la duración del proyecto, de su complejidad, de la política de la organización, de
los requisitos de los contratos de trabajo, y del volumen y la calidad de las comunicaciones
regulares.'!

evaluacionProbabilidadImpactoRiesgos
	^'La evaluación de la probabilidad de los riesgos estudia la probabilidad de ocurrencia de cada
riesgo específico. La evaluación del impacto de los riesgos investiga el efecto potencial de los
mismos sobre un objetivo del proyecto, tal como el cronograma, el costo, la calidad o el
desempeño, incluidos tanto los efectos negativos en el caso de las amenazas, como positivos, en
el caso de las oportunidades.
Para cada riesgo identificado, se evalúan la probabilidad y el impacto. Los riesgos pueden
evaluarse en entrevistas o reuniones con participantes seleccionados por su familiaridad con
las categorías de riesgo en la agenda. Entre ellos, se incluyen los miembros del equipo del
proyecto y, quizás, expertos que no pertenecen al proyecto.
Durante estas entrevistas o reuniones, se evalúan el nivel de probabilidad de cada riesgo y
su impacto sobre cada objetivo del proyecto. También se registran los detalles explicativos,
incluidos los supuestos que justifican los niveles asignados. Las probabilidades e impactos de
los riesgos se califican de acuerdo con las definiciones proporcionadas en el plan de gestión
de riesgos (Sección 11.1.3.1). Los riesgos con una baja calificación en cuanto a probabilidad
e impacto se incluirán en una lista de supervisión para su seguimiento futuro.'!

evaluacionUrgenciaRiesgos
	^'Los riesgos que requieren respuestas a corto plazo pueden ser considerados de atención más
urgente. Los indicadores de prioridad pueden incluir el tiempo para dar una respuesta a los
riesgos, los síntomas y las señales de advertencia, y la calificación del riesgo. En algunos
análisis cualitativos, la evaluación de la urgencia de un riesgo puede estar asociada con la
calificación del riesgo, la cual se determina a partir de la matriz de probabilidad e impacto para
obtener una calificación final de la severidad del riesgo.'!

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
   • Project management office (PMO).'!

expertJudgmentNew
		^super new
			name: 'Expert Judgment'; 
			description: self expertJudgment;
			yourself.!

facilitatedWorkshops

	^'Requirements workshops are focused sessions that bring key cross-functional stakeholders together
to define product requirements. Workshops are considered a primary technique for quickly defining
cross-functional requirements and reconciling stakeholder differences. Because of their interactive group
nature, well-facilitated sessions can build trust, foster relationships, and improve communication among
the participants which can lead to increased stakeholder consensus. Another benefit of this technique is
that issues can be discovered and resolved more quickly than in individual sessions.
   For example, facilitated workshops called Joint Application Development (or Design) (JAD) sessions
are used in the software development industry. These facilitated sessions focus on bringing users and
the development team together to improve the software development process. In the manufacturing
industry, Quality Function Deployment (QFD) is an example of another facilitated workshop technique
that helps determine critical characteristics for new product development. QFD starts by collecting
customer needs, also known as Voice of the Customer (VOC). These needs are then objectively sorted
and prioritized, and goals are set for achieving them.'!

facilitatedWorkshopsNew
		^super new
			name: 'Facilitated Workshops'; 
			description: self facilitatedWorkshops;
			yourself.!

flowcharting

	^'A flowchart is a graphical representation of a process showing the relationships among process
steps. There are many styles, but all process flowcharts show activities, decision points, and the
order of processing. During quality planning, flowcharting can help the project team anticipate quality
problems that might occur. An awareness of potential problems can result in the development of test
procedures or approaches for dealing with them. Figure 8-7 is an example of a process flowchart for
design reviews.'!

flowchartingNew
		^super new
			name: 'Flowcharting'; 
			description: self flowcharting;
			yourself.!

focusGroups

   ^'Focus groups bring together prequalified stakeholders and subject matter experts to learn about
their expectations and attitudes about a proposed product, service, or result. A trained moderator
guides the group through an interactive discussion, designed to be more conversational than a one-
on-one interview.'!

focusGroupsNew
		^super new
			name: 'Focus Groups'; 
			description: self focusGroups;
			yourself.!

forecasting
   
	^'As the project progresses, the project team can develop a forecast for the estimate at completion
(EAC) that may differ from the budget at completion (BAC) based on the project performance. If it
becomes obvious that the BAC is no longer viable, the project manager should develop a forecasted
EAC. Forecasting the EAC involves making estimates or predictions of conditions and events in the
project’s future based on information and knowledge available at the time of the forecast. Forecasts are
generated, updated, and reissued based on work performance information (Section 4.3.3.2) provided
as the project is executed. The work performance information covers the project’s past performance
and any information that could impact the project in the future.
    EACs are typically based on the actual costs incurred for work completed, plus an estimate to
complete (ETC) the remaining work. It is incumbent on the project team to predict what it may encounter
to perform the ETC, based on its experience to date. The EVM method works well in conjunction with
manual forecasts of the required EAC costs. The most common EAC forecasting approach is a manual,
bottom-up summation by the project manager and project team.
    The project manager’s bottom-up EAC method builds upon the actual costs and experience incurred
for the work completed, and requires a new estimate to complete the remaining project work. This
method may be problematic in that it interferes with the conduct of project work. The personnel who
are performing the project work have to stop working to provide a detailed bottom-up ETC of the
remaining work. Typically there is no separate budget to perform the ETC, so additional costs are
incurred for the project to conduct the ETC. Equation: EAC = AC + bottom-up ETC.
    The project manager’s manual EAC can be quickly compared with a range of calculated EACs
representing various risk scenarios. While EVM data can quickly provide many statistical EACs, only
three of the more common methods are described as follows:
    • EAC forecast for ETC work performed at the budgeted rate. This EAC method accepts the
       actual project performance to date (whether favorable or unfavorable) as represented by the actual
       costs, and predicts that all future ETC work will be accomplished at the budgeted rate. When
       actual performance is unfavorable, the assumption that future performance will improve should be
       accepted only when supported by project risk analysis. Equation: EAC = AC + BAC – EV.
    • EAC forecast for ETC work performed at the present CPI. This method assumes what the
       project has experienced to date can be expected to continue in the future. The ETC work is
       assumed to be performed at the same cumulative cost performance index (CPI) as that incurred
       by the project to date. Equation: EAC = BAC / cumulative CPI.
   • EAC forecast for ETC work considering both SPI and CPI factors. In this forecast, the ETC work
      will be performed at an efficiency rate that considers both the cost and schedule performance
      indices. It assumes both a negative cost performance to date, and a requirement to meet a firm
      schedule commitment by the project. This method is most useful when the project schedule is
      a factor impacting the ETC effort. Variations of this method weigh the CPI and SPI at different
      values (e.g., 80/20, 50/50, or some other ratio) according to the project manager’s judgment.
      Equation: AC + [(BAC – EV) / (cumulative CPI x cumulative SPI)].
   Each of these approaches can be correct for any given project and will provide the project management
team with an “early warning” signal if the EAC forecasts are not within acceptable tolerances.
'!

forecastingMethods

	^'Forecasting is the process of predicting future project performance based on the actual performance
to date. Forecasting methods may be classified in different categories:
    • Time series methods. Time series methods use historical data as the basis for estimating
       future outcomes. Examples of methods in this category may include earned value, moving
       average, extrapolation, linear prediction, trend estimation, and growth curve.
    • Causal/econometric methods. Some forecasting methods use the assumption that it is possible
       to identify the underlying factors that might influence the variable that is being forecasted. For
       example, sales of umbrellas might be associated with weather conditions. If the causes are
       understood, projections of the influencing variables can be made and used in the forecast.
       Examples of methods in this category include regression analysis using linear regression or
       non-linear regression, autoregressive moving average (ARMA), and econometrics.
    • Judgmental methods. Judgmental forecasting methods incorporate intuitive judgments,
       opinions, and probability estimates. Examples of methods in this category are composite forecasts,
       surveys, Delphi method, scenario building, technology forecasting, and forecast by analogy.
    • Other methods. Other methods may include simulation, probabilistic forecasting, and
       ensemble forecasting.'!

forecastingMethodsNew
		^super new
			name: 'Forecasting Methods'; 
			description: self forecastingMethods;
			yourself.!

forecastingNew
		^super new
			name: 'Forecasting'; 
			description: self forecasting;
			yourself.!

fundingLimitReconciliation

	^'The expenditure of funds should be reconciled with any funding limits on the commitment of funds
for the project. A variance between the funding limits and the planned expenditures will sometimes
necessitate the rescheduling of work to level out the rate of expenditures. This can be accomplished
by placing imposed date constraints for work into the project schedule.'!

fundingLimitReconciliationNew
		^super new
			name: 'Funding Limit Reconciliation'; 
			description: self fundingLimitReconciliation;
			yourself.!

gatheringRepresentationTechniques

	^'• Interviewing. Interviewing techniques draw on experience and historical data to quantify
  the probability and impact of risks on project objectives. The information needed depends
  upon the type of probability distributions that will be used. For instance, information would
  be gathered on the optimistic (low), pessimistic (high), and most likely scenarios for some
  commonly used distributions. Examples of three-point estimates for cost are shown in
  Figure 11-13. Additional information on three point estimates is in Estimate Activity Durations
  (Section 6.4.2.4) and Estimate Costs (Section 7.1.2.5). Documenting the rationale of the risk
  ranges and the assumptions behind them are important components of the risk interview
  because they can provide insight on the reliability and credibility of the analysis.
• Probability distributions. Continuous probability distributions, used extensively in modeling
  and simulation (Section 11.4.2.2) represent the uncertainty in values such as durations of
  schedule activities and costs of project components. Discrete distributions can be used to
  represent uncertain events such as the outcome of a test or a possible scenario in a decision
  tree. Two examples of widely used continuous distributions are shown in Figure 11-14. These
  distributions depict shapes that are compatible with the data typically developed during the
  quantitative risk analysis. Uniform distributions can be used only if there is no obvious value
  that is more likely than any other between specified high and low bounds, such as in the early
  concept stage of design.'!

gatheringRepresentationTechniquesNew
		^super new
			name: 'Gathering Representation Techniques'; 
			description: self gatheringRepresentationTechniques;
			yourself.!

gestionConflictos
	^'Los conflictos resultan inevitables en el ambiente de un proyecto. Entre las fuentes de conflicto,
se encuentran la escasez de recursos, las prioridades del cronograma y los estilos personales de
trabajo. Las reglas básicas del equipo, las normas del grupo y las prácticas de dirección del
proyecto sólidas, como la planificación de las comunicaciones y la definición de roles, reducen
la cantidad de conflictos.
La gestión exitosa de conflictos se traduce en una mayor productividad y en relaciones de
trabajo positivas. Cuando se gestionan apropiadamente, las diferencias de opinión pueden
conducir a una mayor creatividad y una mejor toma de decisiones. Cuando las diferencias se
convierten en un factor negativo, los miembros del equipo del proyecto son inicialmente
responsables de resolverlas. Si el conflicto se intensifica, el director del proyecto debería
ayudar a facilitar una resolución satisfactoria. El conflicto debe abordarse cuanto antes y
generalmente en privado, mediante un enfoque directo y constructivo. Si el conflicto que
causa problemas continúa, es posible que sea necesario recurrir a procedimientos formales,
incluyendo la posibilidad de adoptar acciones disciplinarias.
Al gestionar un conflicto en un ambiente de equipo, los directores del proyecto deberían
reconocer las siguientes características del conflicto y del proceso de gestión de conflictos:
• Los conflictos son naturales e imponen la búsqueda de alternativas.
• Los conflictos son asuntos del equipo.
• Una actitud de apertura permite resolver los conflictos.
• La resolución de conflictos debe centrarse en los asuntos y no en las personalidades.
• La resolución de conflictos debe centrarse en el presente, no en el pasado.
A menudo, el éxito de los directores de proyecto en la dirección de sus equipos depende
en gran medida de su capacidad para resolver conflictos. Diferentes directores del proyecto
pueden tener diferentes estilos de resolución de conflictos. Entre los factores que influyen en
los métodos de resolución de conflictos, se incluyen:
• la relativa intensidad e importancia del conflicto
• la presión de tiempo que exista para resolver el conflicto
• la posición adoptada por los actores implicados
• la motivación para resolver el conflicto en el largo o en el corto plazo
Existen seis técnicas generales de resolución de conflictos. Puesto que cada una de ellas
tiene un lugar y uso, no se presentan aquí en un orden particular:
• Apartarse/Eludir. Retirarse de una situación de conflicto real o potencial.
• Suavizar/Reconciliar. Hacer hincapié en los puntos de acuerdo más que en las
diferencias.
• Consentir. Buscar soluciones que aporten un cierto grado de satisfacción a todas las
partes.
• Forzar. Imponer su propio punto de vista a costa de los demás; ofrece únicamente
soluciones de tipo ganar-perder.
• Colaborar. Incorporar múltiples puntos de vista y visiones a partir de perspectivas
diversas; conduce al consenso y al compromiso.
• Confrontar/Resolver problemas. Tratar un conflicto como un problema que debe
resolverse mediante el examen de alternativas; requiere una actitud de concesión
mutua y un diálogo abierto.'!

gestionValorGanado
	^'La gestión del valor ganado (EVM) en sus diferentes formas es un método que se utiliza
comúnmente para la medición del desempeño. Integra las mediciones del alcance del proyecto,
costo y cronograma para ayudar al equipo de dirección del proyecto a evaluar y medir el
desempeño y el avance del proyecto. Es una técnica de dirección de proyectos que requiere la
constitución de una línea base integrada con respecto a la cual se puede medir el desempeño
durante la ejecución del proyecto. Los principios de la EVM pueden aplicarse a todos los
proyectos, en cualquier tipo de industria. La EVM establece y monitorea tres dimensiones clave
para cada paquete de trabajo y cada cuenta de control:
• Valor planificado. El valor planificado (PV) es el presupuesto autorizado asignado al
trabajo que debe ejecutarse para completar una actividad o un componente de la
estructura de desglose del trabajo. Incluye el trabajo detallado autorizado, así como el
presupuesto para dicho trabajo autorizado, que se asigna por fase durante el ciclo de vida
del proyecto. El total del PV se conoce a veces como la línea base para la medición del
desempeño (PMB). El valor planificado total para el proyecto también se conoce como
presupuesto hasta la conclusión (BAC).
• Valor ganado. El valor ganado (EV) es el valor del trabajo completado expresado en
términos del presupuesto aprobado asignado a dicho trabajo para una actividad del
cronograma o un componente de la estructura de desglose del trabajo. Es el trabajo
autorizado que se ha completado, más el presupuesto autorizado para dicho trabajo
completado. El EV medido debe corresponderse con la línea base del PV (PMB) y no
puede ser mayor que el presupuesto aprobado del PV para un componente. El término EV
se usa a menudo para describir el porcentaje completado de un proyecto. Deben
establecerse criterios de medición del avance para cada componente de la EDT, con
objeto de medir el trabajo en curso. Los directores de proyecto monitorean el EV, tanto
sus incrementos para determinar el estado actual, como el total acumulado, para
establecer las tendencias de desempeño a largo plazo.
• Costo real. El costo real (AC) es el costo total en el que se ha incurrido realmente y que
se ha registrado durante la ejecución del trabajo realizado para una actividad o
componente de la estructura de desglose del trabajo. Es el costo total en el que se ha
incurrido para llevar a cabo el trabajo medido por el EV. El AC debe corresponderse, por
su definición, con lo que haya sido presupuestado para el PV y medido para el EV (p.ej.,
sólo horas directas, sólo costos directos o todos los costos, incluidos los costos
indirectos). El AC no tiene límite superior; se medirán todos los costos en los que se
incurra para obtener el EV.
También se monitorearán las variaciones con respecto a la línea base aprobada:
• Variación del cronograma. La variación del cronograma (SV) es una medida del
desempeño del cronograma en un proyecto. Es igual al valor ganado (EV) menos el valor
planificado (PV). En la EVM, la variación del cronograma es una métrica útil, ya que
puede indicar un retraso del proyecto con respecto a la línea base del cronograma. La
variación del cronograma, en la EVM, finalmente será igual a cero cuando se complete el
proyecto, porque ya se habrán ganado todos los valores planificados. En la EVM, las
variaciones del cronograma se emplean mejor en conjunto con la planificación según el
método de la ruta crítica (CPM) y la gestión de riesgos. Ecuación: SV = EV – PV.
• Variación del costo. La variación del costo (CV) es una medida del desempeño del costo
en un proyecto. Es igual al valor ganado (EV) menos los costos reales (AC). La variación
del costo al final del proyecto será la diferencia entre el presupuesto hasta la conclusión
(BAC) y la cantidad realmente gastada. En la EVM, la CV es particularmente crítica
porque indica la relación entre el desempeño real y los costos gastados. En la EVM, una
CV negativa con frecuencia no es recuperable para el proyecto. Ecuación: CV = EV –
AC.
Los valores de SV y CV pueden convertirse en indicadores de eficiencia para reflejar el
desempeño del costo y del cronograma de cualquier proyecto, en comparación con otros
proyectos o con un portafolio de proyectos. Las variaciones y los índices son útiles para
determinar el estado de un proyecto y proporcionar una base para la estimación del costo y
del cronograma al final del proyecto.
• Índice de desempeño del cronograma. El índice de desempeño del cronograma (SPI) es
una medida del avance logrado en un proyecto en comparación con el avance planificado.
En ocasiones se utiliza en combinación con el índice del desempeño del costo (CPI) para
proyectar las estimaciones finales de conclusión del proyecto. Un valor de SPI inferior a
1.0 indica que la cantidad de trabajo efectuada es menor a la prevista. Un valor de SPI
superior a 1.0 indica que la cantidad de trabajo efectuada es mayor a la prevista. Puesto
que el SPI mide todo el trabajo del proyecto, el desempeño en la ruta crítica también debe
analizase, para determinar si el proyecto terminará antes o después de la fecha de
finalización programada. El SPI es igual a la razón entre el EV y el PV. Ecuación: SPI =
EV/PV.
• Índice del desempeño del costo. El índice del desempeño del costo (CPI) es una medida
del valor del trabajo completado, en comparación con el costo o avance reales del
proyecto. Se considera la métrica más importante de la EVM y mide la eficacia de la
gestión del costo para el trabajo completado. Un valor de CPI inferior a 1.0 indica un
sobrecosto con respecto al trabajo completado. Un valor de CPI superior a 1.0 indica un
costo inferior con respecto al desempeño a la fecha. El CPI es igual a la razón entre el EV
y el AC. Ecuación: CPI = EV/AC.
Los tres parámetros (valor planificado, valor ganado y costo real) pueden monitorearse e
informarse, por periodos (normalmente semanalmente o mensualmente) y de forma
acumulativa. El Gráfico 7-9 emplea Curvas S para representar los datos del EV para un
proyecto cuyo costo excede el presupuesto y cuyo plan de trabajo está retrasado.
'!

groundRules

	^'Ground rules establish clear expectations regarding acceptable behavior by project team members.
Early commitment to clear guidelines decreases misunderstandings and increases productivity.
Discussing ground rules allows team members to discover values that are important to one another.
All project team members share responsibility for enforcing the rules once they are established.'!

groundRulesNew
		^super new
			name: 'Ground Rules'; 
			description: self groundRules;
			yourself.!

groupCreativityTechniques

	^'Several group activities can be organized to identify project and product requirements. Some of
the group creativity techniques that can be used are:
   • Brainstorming. A technique used to generate and collect multiple ideas related to project and
       product requirements.
   • Nominal group technique. This technique enhances brainstorming with a voting process used
       to rank the most useful ideas for further brainstorming or for prioritization.
   • The Delphi Technique. A selected group of experts answers questionnaires and provides
       feedback regarding the responses from each round of requirements gathering. The responses
       are only available to the facilitator to maintain anonymity.
   • Idea/mind mapping. Ideas created through individual brainstorming are consolidated into a
       single map to reflect commonality and differences in understanding, and generate new ideas.
   • Affinity diagram. This technique allows large numbers of ideas to be sorted into groups for
       review and analysis.'!

groupCreativityTechniquesNew
		^super new
			name: 'Group Creativity Techniques'; 
			description: self groupCreativityTechniques;
			yourself.!

groupDecisionMakingTechniques

	^'Group decision making is an assessment process of multiple alternatives with an expected
outcome in the form of future actions resolution. These techniques can be used to generate, classify,
and prioritize product requirements.
   There are multiple methods of reaching a group decision, for example:
   • Unanimity. Everyone agrees on a single course of action.
   • Majority. Support from more than 50% of the members of the group.
   • Plurality. The largest block in a group decides even if a majority is not achieved.
   • Dictatorship. One individual makes the decision for the group.
   Almost any of the decision methods described previously can be applied to the group techniques
used in the requirements gathering process.'!

groupDecisionMakingTechniquesNew
		^super new
			name: 'Group Decision Making Techniques'; 
			description: self groupDecisionMakingTechniques;
			yourself.!

gruposOpinion

	^'Los grupos de opinión reúnen a los interesados y expertos en la materia, preseleccionados para
conocer acerca de sus expectativas y actitudes con respecto a un producto, servicio o resultado
propuesto. Un moderador capacitado guía al grupo a través de una discusión interactiva
diseñada para ser más conversacional que una entrevista individual.'!

habilidadesGestion
	^'La gestión es el acto de dirigir y controlar a un grupo de personas, con el propósito de coordinar
y armonizar el grupo para permitirle lograr un objetivo más allá del alcance del esfuerzo
individual. Entre las habilidades de gestión utilizadas por el director del proyecto, se incluyen:
• las habilidades de presentación
• la negociación
• las habilidades de redacción
• la oratoria'!

habilidadesInterpersonales
	^'También se las conoce como “habilidades blandas” y resultan particularmente importantes para
el desarrollo del equipo. El equipo de dirección del proyecto puede reducir en gran medida los
problemas y aumentar la cooperación si procura comprender los sentimientos de los miembros
del equipo del proyecto, anticipar sus acciones, reconocer sus inquietudes y hacer un
seguimiento de sus asuntos. Contar con habilidades como la empatía, la influencia, la
creatividad y la facilitación del grupo son recursos valiosos cuando se dirige el equipo del
proyecto.
--------------------------------------------------------------------------------------------------------
Los directores de proyecto usan una combinación de habilidades técnicas, humanas y
conceptuales para analizar las situaciones e interactuar de manera apropiada con los miembros
del equipo. El uso de habilidades interpersonales adecuadas ayuda a los directores de proyecto
a sacar provecho de los puntos fuertes de los miembros del equipo.
Existe un amplio conjunto de conocimientos relativo a las habilidades interpersonales
apropiadas para el trabajo dentro y fuera del proyecto. Dicho conjunto de conocimientos es
demasiado exhaustivo para abarcarlo en esta publicación. El Anexo F propone un contenido
más detallado de las habilidades interpersonales más pertinentes utilizadas en la dirección de
proyectos. Algunas de las habilidades interpersonales utilizadas con mayor frecuencia por los
directores del proyecto se describen brevemente a continuación.
• Liderazgo. Los proyectos exitosos requieren fuertes habilidades de liderazgo. El
liderazgo es importante en todas las fases del ciclo de vida del proyecto. Es
particularmente importante comunicar la visión e inspirar al equipo del proyecto a fin
de lograr un alto desempeño.
• Influencia. Dado que a menudo la autoridad directa de los directores del proyecto
sobre los miembros de su equipo es escasa o nula en un ambiente matricial, su
capacidad de influir oportunamente en los interesados resulta vital para el éxito del
proyecto. Entre las habilidades clave de influencia se encuentran:
o Tener la habilidad para persuadir y expresar con claridad los puntos de vista y las
posiciones asumidas.
o Contar con gran habilidad para escuchar de manera activa y eficaz.
o Tener en cuenta las diversas perspectivas en cualquier situación.
o Recopilar información relevante y crítica a fin de abordar los asuntos importantes y
lograr acuerdos, manteniendo a la vez la confianza mutua.
• Toma de decisiones eficaz. Esto implica tener la habilidad de negociar e influir sobre
la organización y el equipo de dirección del proyecto. Algunas pautas en materia de
toma de decisiones incluyen:
o centrarse en los objetivos perseguidos
o seguir un proceso de toma de decisiones
o estudiar los factores ambientales
o desarrollar las cualidades personales de los miembros del equipo
o fomentar la creatividad del equipo
o gestionar las oportunidades y los riesgos'!

herramientaPlanificacion
	^'Las herramientas automatizadas de planificación aceleran el proceso de planificación,
generando fechas de inicio y finalización basadas en las entradas de actividades, los diagramas
de red, los recursos y las duraciones de las actividades. Una herramienta de planificación puede
utilizarse conjuntamente con otro software de gestión de proyectos, así como con métodos
manuales.
-------------------------------------------------------------------------------------------------------------
Los datos del cronograma se actualizan y compilan en el cronograma para reflejar el avance
real del proyecto y el trabajo que queda pendiente. La herramienta de planificación y los datos
de apoyo del cronograma se utilizan conjuntamente con métodos manuales u otro software de
gestión de proyectos para realizar el análisis de la red del cronograma y generar un cronograma
actualizado del proyecto.'!

herramientasAdicionalesPlanificacionCalidad

	^'A menudo se emplean otras herramientas de planificación de calidad para ayudar a
definir mejor los requisitos de calidad y a planificar actividades eficaces de gestión de
calidad. Éstas incluyen, entre otras:
• Tormenta de ideas (definida en la Sección 11.2.2.2).
• Diagramas de afinidad, que se usan para identificar visualmente los
agrupamientos lógicos en base a relaciones naturales.
• Análisis de campos de fuerzas, que son diagramas de las fuerzas a favor y en
contra de un cambio.
• Técnicas de grupo nominal, que permiten que las ideas se analicen en una
tormenta de ideas en grupos pequeños y luego sean revisadas por un grupo
más amplio.
• Diagramas matriciales, que incluyen dos, tres o cuatro grupos de
información, y muestran las relaciones entre factores, causas y objetivos. Los
datos dentro de una matriz se organizan en filas y columnas, con celdas de
intersección que pueden completarse con información que describe la relación
demostrada entre los elementos de la fila y los de la columna.
• Matrices de priorización, que brindan un modo de clasificar por orden de
importancia un conjunto de problemas diversos y/o polémicas (identificados
normalmente por medio de tormentas de ideas).'!

herramientasDistribucionInformacion
	^'Entre la variedad de herramientas que pueden utilizarse para distribuir la información del
proyecto, se incluyen:
• distribución de documentos impresos, sistemas manuales de archivo, comunicados de
prensa y bases de datos electrónicas de acceso compartido;
• herramientas electrónicas de comunicación y conferencias, tales como correo
electrónico, fax, correo de voz, teléfono, videoconferencias y conferencias por
Internet, sitios Web y publicación en Internet;
• herramientas electrónicas para la dirección de proyectos, como por ejemplo interfaces
Web con software de programación y de gestión de proyectos, software de soporte
para reuniones y oficinas virtuales, portales y herramientas colaborativas de gestión
del trabajo.'!

herramientasTecnicasPlanificarCalidadRealizarControlCalidad
	^'Las herramientas y técnicas empleadas para planificar la calidad y realizar el control de
calidad, que se abordan en las Secciones 8.1.2 y 8.3.2, también pueden utilizarse para
las actividades de aseguramiento de calidad.'!

histogram

	^'A histogram is a vertical bar chart showing how often a particular variable state occurred. Each
column represents an attribute or characteristic of a problem/situation. The height of each column
represents the relative frequency of the characteristic. This tool helps illustrates the most common
cause of problems in a process by the number and relative heights of the bars. Figure 8-14 is an
example of an unordered histogram showing causes of late time entry by a project team.'!

histograma
	^'Un histograma es un diagrama de barras verticales que ilustra la frecuencia de
ocurrencia de un estado particular de variación. Cada columna representa un atributo o
característica de un problema/una situación. La altura de cada columna representa la
frecuencia relativa de la característica. Esta herramienta ayuda a ilustrar la causa más
común de los problemas en un proceso por medio del número y las alturas relativas de
las barras. El Gráfico 8-14 presenta un ejemplo de un histograma desordenado que
muestra las causas de atraso en las entradas realizadas por un equipo del proyecto.'!

histogramNew
		^super new
			name: 'Histogram'; 
			description: self histogram;
			yourself.!

historicalRelationships

	^'Any historical relationships that result in parametric estimates or analogous estimates involve the
use of project characteristics (parameters) to develop mathematical models to predict total project
costs. Such models can be simple (e.g., residential home construction is based on a certain cost per
square foot of space) or complex (e.g., one model of software development costing uses multiple
separate adjustment factors, each of which has numerous points within it).
    Both the cost and accuracy of analogous and parametric models can vary widely. They are most
likely to be reliable when:
    • Historical information used to develop the model is accurate,
    • Parameters used in the model are readily quantifiable, and
    • Models are scalable, such that they work for a large project, a small project, and phases of
        a project.'!

historicalRelationshipsNew
		^super new
			name: 'Historical Relationships'; 
			description: self historicalRelationships;
			yourself.!

icon

	^Class icon!

identificacionAlternativas
	^'La identificación de alternativas es una técnica que se emplea para generar diferentes enfoques
para la ejecución y desarrollo del trabajo del proyecto. Puede utilizarse una variedad de técnicas
de gestión, tales como la tormenta de ideas, el pensamiento lateral, la comparación entre pares,
etc.'!

independentEstimates

	^'For many procurement items, the procuring organization may elect to either prepare its
own independent estimate, or have an estimate of costs prepared by an outside professional
estimator, to serve as a benchmark on proposed responses. Significant differences in cost estimates
can be an indication that the procurement statement of work was deficient, ambiguous, and/
or that the prospective sellers either misunderstood or failed to respond fully to the procurement
statement of work.'!

independentEstimatesNew
		^super new
			name: 'Independent Estimates'; 
			description: self independentEstimates;
			yourself.!

indiceDesempenoTrabajoCompletar
	^'El índice de desempeño del trabajo por completar (TCPI) es la proyección calculada del
desempeño del costo que debe lograrse para el trabajo restante, con el propósito de cumplir con
una meta de gestión especificada, tal como el BAC o la EAC. Si resulta evidente que el BAC
ya no es viable, el director del proyecto proyecta una estimación a la conclusión (EAC). Una
vez aprobada, la EAC reemplaza efectivamente el BAC como meta de desempeño del costo. La
ecuación para el TCPI basada en el BAC es: (BAC – EV) / (BAC – AC).
El TCPI se muestra conceptualmente en el Gráfico 7-10. La ecuación para el TCPI
aparece en la parte inferior izquierda como el trabajo restante (definido como el BAC menos
el EV) dividido por los fondos restantes (que pueden ser el BAC menos el AC, o bien la EAC
menos el AC).
Si el CPI acumulativo se ubica por debajo de la línea base del plan (como se muestra en el
Gráfico 7-6) todo el trabajo futuro del proyecto tendrá que realizarse inmediatamente en el
rango del TCPI (BAC) (como se muestra en la línea superior del Gráfico 7-6) para
mantenerse dentro del BAC autorizado. El hecho de que este nivel de desempeño sea
realizable o no es una decisión subjetiva basada en diversas consideraciones, que incluyen los
riesgos, el cronograma y el desempeño técnico. Una vez que la dirección reconoce que ya no
es posible cumplir con el BAC, el director del proyecto preparará una nueva estimación a la
conclusión (EAC) para el trabajo y, una vez aprobada, el proyecto utilizará el nuevo valor de
la EAC. Este nivel de desempeño se muestra como la línea TCPI (EAC). La ecuación para el
TCPI basada en la EAC es: (BAC – EV) / (EAC – AC).'!

informationDistributionTools

	^'Project information can be distributed using a variety of tools, including:
• Hard-copy document distribution, manual filing systems, press releases, and shared-access
   electronic databases;
• Electronic communication and conferencing tools, such as e-mail, fax, voice mail, telephone,
   video and web conferencing, websites and web publishing; and
• Electronic tools for project management, such as web interfaces to scheduling and project
   management software, meeting and virtual office support software, portals, and collaborative
   work management tools.'!

informationDistributionToolsNew
		^super new
			name: 'Information Distribution Tools'; 
			description: self informationDistributionTools;
			yourself.!

informationGatheringTechniques
	
	^'Examples of information gathering techniques used in identifying risk can include:
• Brainstorming. The goal of brainstorming is to obtain a comprehensive list of project risks.
   The project team usually performs brainstorming, often with a multidisciplinary set of experts
   who are not part of the team. Ideas about project risk are generated under the leadership
   of a facilitator, either in a traditional free-form brainstorm session with ideas contributed by
   participants, or structured using mass interviewing techniques such as the nominal group
   technique. Categories of risk, such as a risk breakdown structure, can be used as a framework.
   Risks are then identified and categorized by type of risk and their definitions are sharpened.
• Delphi technique. The Delphi technique is a way to reach a consensus of experts. Project
   risk experts participate in this technique anonymously. A facilitator uses a questionnaire to
   solicit ideas about the important project risks. The responses are summarized and are then
   recirculated to the experts for further comment. Consensus may be reached in a few rounds of
   this process. The Delphi technique helps reduce bias in the data and keeps any one person from
   having undue influence on the outcome.
• Interviewing. Interviewing experienced project participants, stakeholders, and subject matter
  experts can identify risks.
• Root cause analysis. Root cause analysis is a specific technique to identify a problem, discover
  the underlying causes that lead to it, and develop preventive action.'!

informationGatheringTechniquesNew
		^super new
			name: 'Information Gathering Techniques'; 
			description: self informationGatheringTechniques;
			yourself.!

informesDesempeno
	^'Los informes de desempeño proporcionan a la Dirección información sobre la efectividad del
vendedor en el logro de los objetivos contractuales.'!

inspeccion

	^'La inspección incluye actividades tales como medir, examinar y verificar para determinar si el
trabajo y los entregables cumplen con los requisitos y los criterios de aceptación del producto.
Las inspecciones se denominan también, según el caso, revisiones, revisiones del producto,
auditorías y revisiones generales. En algunas áreas de aplicación, estos términos tienen
significados más concretos y específicos.'!

inspeccionesAuditorias
	^'Las inspecciones y auditorías solicitadas por el comprador y respaldadas por el vendedor según
se especifica en el contrato de adquisición pueden realizarse durante la ejecución del proyecto
para verificar la conformidad de los procesos o entregables del vendedor. Si el contrato lo
autoriza, algunos equipos de inspección y auditoría pueden incorporar personal de adquisición
del comprador.'!

inspection

	^'Inspection includes activities such as measuring, examining, and verifying to determine whether
work and deliverables meet requirements and product acceptance criteria. Inspections are sometimes
called reviews, product reviews, audits, and walkthroughs. In some application areas, these different
terms have narrow and specific meanings.'!

inspection2

	^'An inspection is the examination of a work product to determine whether it conforms to documented
standards. The results of an inspection generally include measurements and may be conducted at
any level. For example, the results of a single activity can be inspected, or the final product of the
project can be inspected. Inspections may be called reviews, peer reviews, audits, or walkthroughs.
In some application areas, these terms have narrow and specific meanings. Inspections are also used
to validate defect repairs.'!

inspection2New
		^super new
			name: 'Inspection2'; 
			description: self inspection2;
			yourself.!

inspectionNew
		^super new
			name: 'Inspection'; 
			description: self inspection;
			yourself.!

inspectionsAudits

	^'Inspections and audits required by the buyer and supported by the seller as specified in the
procurement contract can be conducted during execution of the project to verify compliance in the
seller’s work processes or deliverables. If authorized by contract, some inspection and audit teams can
include buyer procurement personnel.'!

inspectionsAuditsNew
		^super new
			name: 'Inspections Audits'; 
			description: self inspectionsAudits;
			yourself.!

internetSearch

	^'The internet has a major influence on most project procurements and supply chain acquisitions in
organizations. While many commodities, components, and off-the-shelf-items can be quickly located
and secured at a fixed-price on the internet, the high-risk, highly complex, procurement effort that
must be closely monitored cannot be obtained by this means.'!

internetSearchNew
		^super new
			name: 'Internet Search'; 
			description: self internetSearch;
			yourself.!

interpersonalSkills

	^'These are sometimes known as “soft skills,” and are particularly important to team development.
The project management team can greatly reduce problems and increase cooperation by understanding
the sentiments of project team members, anticipating their actions, acknowledging their concerns,
and following up on their issues. Skills such as empathy, influence, creativity, and group facilitation are
valuable assets when managing the project team.'!

interpersonalSkills2

	^'Project managers use a combination of technical, human, and conceptual skills to analyze situations
and interact appropriately with team members. Using appropriate interpersonal skills aids project
managers in capitalizing on the strengths of all team members.
   There is a wide body of knowledge about interpersonal skills that is appropriate to project work and
non-project work. That body of knowledge is too in-depth to cover in this publication. There is expanded
coverage of some of the most relevant interpersonal skills used in project management in Appendix G.
Some of the interpersonal skills the project managers use most often are briefly covered below.
   • Leadership. Successful projects require strong leadership skills. Leadership is important
      through all phases of the project life cycle. It is especially important to communicate the vision
      and inspire the project team to achieve high performance.
   • Influencing. Since project managers often have little or no direct authority over their team
      members in a matrix environment, their ability to influence stakeholders on a timely basis is
      critical to project success. Key influencing skills include:
     ? Ability to be persuasive and clearly articulate points and positions,
     ? High levels of active and effective listening skills,
     ? Consideration of the various perspectives in any situation, and
     ? Gathering relevant and critical information to address important issues and reach agreements
     while maintaining mutual trust.
   • Effective decision making. This involves the ability to negotiate and influence the organization
      and the project management team. Some guidelines for decision making include:
     ? Focus on goals to be served,
     ? Follow a decision-making process,
     ? Study the environmental factors,
     ? Develop personal qualities of the team members,
     ? Stimulate team creativity, and
     ? Manage opportunity and risk.'!

interpersonalSkills2New
		^super new
			name: 'Interpersonal Skills2'; 
			description: self interpersonalSkills2;
			yourself.!

interpersonalSkillsNew
		^super new
			name: 'Interpersonal Skills'; 
			description: self interpersonalSkills;
			yourself.!

interviews

	^'An interview is a formal or informal approach to discover information from stakeholders by talking
to them directly. It is typically performed by asking prepared and spontaneous questions and recording
the responses. Interviews are often conducted “one-on-one,” but may involve multiple interviewers and/
or multiple interviewees. Interviewing experienced project participants, stakeholders, and subject matter
experts can aid in identifying and defining the features and functions of the desired project deliverables.'!

interviewsNew
		^super new
			name: 'Interviews'; 
			description: self interviews;
			yourself.!

issueLog

	^'Issues arise in the course of managing the project team. A written log documents and helps
monitor who is responsible for resolving specific issues by a target date. Issue resolution addresses
obstacles that can block the team from achieving its goals.'!

issueLogNew
		^super new
			name: 'Issue Log'; 
			description: self issueLog;
			yourself.!

juicioDeExpertos

	^'A menudo se utiliza el juicio de expertos para evaluar las entradas que se usan para elaborar el
acta de constitución del proyecto. Durante este proceso, el juicio y la experiencia se aplican a
cualquier detalle técnico y de gestión. Esta experiencia es proporcionada por todo grupo o
individuo con conocimientos o capacitación especializados y se encuentra disponible a través
de diferentes fuentes, entre las que se incluyen:
• otras unidades dentro de la organización
• consultores
• interesados, incluyendo clientes y patrocinadores
• asociaciones profesionales y técnicas
• grupos industriales
• expertos en la materia
• la oficina de dirección de proyectos (PMO)'!

makeOrBuyAnalysis

	^'A make-or-buy analysis is a general management technique used to determine whether particular
work can best be accomplished by the project team or must be purchased from outside sources.
Sometimes a capability may exist within the project organization, but may be committed to working on
other projects, in which case the project may need to source such effort from outside the organization
in order to meet its schedule commitments.
    Budget constraints may influence make-or-buy decisions. If a buy decision is to be made, then a
further decision of whether to purchase or lease is also made. A make-or-buy analysis should consider
all related costs; both direct costs as well as indirect support costs. For example, the buy-side of the
analysis includes both the actual out-of-pocket costs to purchase the product, as well as the indirect
costs of supporting the purchasing process and purchased item.'!

makeOrBuyAnalysisNew
		^super new
			name: 'Make Or Buy Analysis'; 
			description: self makeOrBuyAnalysis;
			yourself.!

managementSkills

	^'Management is the act of directing and controlling a group of people for the purpose of coordinating
and harmonizing the group towards accomplishing a goal beyond the scope of individual effort.
Management skills used by the project manager include but are not limited to:
   • Presentation skills,
   • Negotiating,
   • Writing skills, and
   • Public speaking.'!

managementSkillsNew
		^super new
			name: 'Management Skills'; 
			description: self managementSkills;
			yourself.!

matrizProbabilidadImpacto
	^'Los riesgos pueden priorizarse para realizar un análisis cuantitativo posterior y elaborar
respuestas basadas en su calificación. Por lo general, estas reglas de calificación de los riesgos
son definidas por la organización antes del inicio del proyecto y se incluyen en los activos de 
los procesos de la organización. Las reglas de calificación de los riesgos pueden adaptarse al
proyecto específico durante el proceso Planificar la Gestión de Riesgos (Sección 11.1).
Habitualmente, la evaluación de la importancia de cada riesgo y, por consiguiente, de su
prioridad de atención, se efectúa utilizando una tabla de búsqueda o una matriz de probabilidad
e impacto (Gráfico 11-10). Dicha matriz especifica las combinaciones de probabilidad e
impacto que llevan a calificar los riesgos con una prioridad baja, moderada o alta. El área gris
oscuro (con las cifras más altas) representa un riesgo alto, el área gris intermedio (con las cifras
más bajas) representa un riesgo bajo y el área color gris claro (con las cifras intermedias)
representa el riesgo moderado.
Como se ilustra en el Gráfico 11-5, una organización puede calificar un riesgo por
separado para cada objetivo (p.ej., costo, tiempo y alcance). Además, puede desarrollar
formas de determinar una calificación general para cada riesgo. Puede elaborarse un esquema
de calificación para el proyecto global, con el propósito de reflejar la preferencia de la
organización por un objetivo determinado sobre otros y la utilización de tales preferencias
para proceder a una ponderación de los riesgos evaluados para cada objetivo. Finalmente, las
oportunidades y las amenazas pueden manejarse en la misma matriz, utilizando las
definiciones de los diversos niveles de impacto apropiados para cada una de ellas.
La calificación de los riesgos ayuda a guiar las respuestas a los riesgos. Por ejemplo, los
riesgos que, si se concretan (amenazas), tienen un impacto negativo sobre los objetivos, y que
se encuentran en la zona de riesgo alto (gris oscuro) de la matriz, pueden necesitar prioridad
de acción y estrategias de respuesta agresivas. Las amenazas en la zona de riesgo bajo (gris
intermedio) pueden no necesitar una acción de gestión proactiva, más allá de ser incluidas en
una lista de supervisión o de ser agregadas a una reserva para contingencias.
De manera similar, debe darse prioridad a las oportunidades que se encuentran en la zona
de riesgo alto (gris oscuro), ya que pueden obtenerse más fácilmente y proporcionan mayores
beneficios. Las oportunidades en la zona de riesgo bajo (gris medio) deben monitorearse. Los
valores que se proporcionan en la Sección 11.4.2.1 son representativos. El número de etapas
en la escala será determinado por la organización y depende de ella.'!

medicionDesempenoTecnico

	^'La medición del desempeño técnico compara los logros técnicos durante la ejecución del
proyecto con el cronograma de logros técnicos del plan para la dirección del proyecto. Requiere
la definición de medidas objetivas cuantificables del desempeño técnico que puedan usarse para
comparar los resultados reales con los planificados. Tales mediciones del desempeño técnico
pueden incluir pesos, tiempos de transacción, número de piezas defectuosas entregadas,
capacidad de almacenamiento, etc. Una desviación, como ofrecer una mayor o menor
funcionalidad con respecto a la planificada en un hito, puede ayudar a predecir el grado de éxito
que se logrará en cumplir con el alcance del proyecto y también puede mostrar el grado de
riesgo técnico que enfrenta el proyecto.'!

metodoCadenaCritica

	^'La cadena crítica es una técnica de análisis de la red del cronograma que permite modificar el
cronograma del proyecto para adaptarlo a los recursos limitados. Inicialmente, el diagrama de
red del cronograma del proyecto se elabora mediante los estimados de la duración, con las
dependencias requeridas y las restricciones definidas como entradas. Entonces se calcula la ruta
crítica. Una vez que se ha identificado la ruta crítica, se ingresa la disponibilidad de recursos y
se determina el resultado del cronograma con recursos limitados. A menudo, el cronograma
resultante presenta una ruta crítica modificada.
La ruta crítica con restricciones de recursos se conoce como cadena crítica. El método de la
cadena crítica agrega colchones de duración, que son actividades del cronograma que no
requieren trabajo y que se utilizan para manejar la incertidumbre. Un colchón que se coloca al
final de la cadena crítica se conoce como colchón del proyecto y protege la fecha de
finalización objetivo contra cualquier retraso a lo largo de la cadena crítica. Se colocan
colchones adicionales, conocidos como colchones de alimentación, en cada punto donde una
cadena de tareas dependientes, que está fuera de la cadena crítica, la alimenta. De este modo,
los colchones de alimentación protegen la cadena crítica contra retrasos a lo largo de las
cadenas de alimentación. La dimensión de cada colchón debe tener en cuenta la incertidumbre
en la duración de la cadena de tareas dependientes que conducen a ese colchón. Una vez que se
han determinado las actividades del cronograma con colchón, las actividades previstas se
planifican en base a sus fechas posibles de inicio y finalización programadas más tardías.
Consecuentemente, en lugar de gestionar la holgura total de los caminos de red, el método de la
cadena crítica se concentra en gestionar las duraciones restantes de los colchones en función de
las duraciones restantes de las cadenas de tareas.'!

metodoDiagramacionPrecedencia

	^'El método de diagramación por precedencia (PDM) es utilizado en el método de la ruta crítica
(CPM) para crear un diagrama de red del cronograma del proyecto que utiliza casillas o
rectángulos, denominados nodos, para representar las actividades, que se conectan con flechas
que muestran sus relaciones lógicas. El Gráfico 6-7 muestra un diagrama de red simple del
cronograma del proyecto, elaborado utilizando el método de diagramación por precedencia.
Esta técnica también se denomina actividad en el nodo (AON) y es el método utilizado por la
mayoría de los paquetes de software de gestión de proyectos.
El método de diagramación por precedencia incluye cuatro tipos de dependencias o
relaciones lógicas.
• Final a Inicio (FI). El inicio de la actividad sucesora depende de la finalización de la
actividad predecesora.
• Final a Final (FF). La finalización de la actividad sucesora depende de la finalización de
la actividad predecesora.
• Inicio a Inicio (II). El inicio de la actividad sucesora depende del inicio de la actividad
predecesora.
• Inicio a Final (IF). La finalización de la actividad sucesora depende del inicio de la
actividad predecesora.
El tipo de relación de precedencia final a inicio es el más comúnmente utilizado por el
método de diagramación por precedencia. La relación inicio a final se usa esporádicamente,
pero se incluye aquí para proporcionar una lista completa de los tipos de relaciones de este
método.'!

metodologiasPropietariasGestionCalidad
	^'Existen numerosas metodologías propietarias, entre las que se incluyen, sin pretender
dar una lista exhaustiva o de recomendaciones, Six Sigma, Lean Six Sigma, Despliegue
de Funciones de Calidad (Quality Function Deployment), CMMI®, etc.'!

metodoRutaCritica
	^'El método de la ruta crítica calcula las fechas teóricas de inicio y finalización tempranas y
tardías para todas las actividades, sin considerar las limitaciones de recursos, realizando un
análisis que recorre hacia adelante y hacia atrás toda la red del cronograma. Las fechas de inicio
y finalización tempranas y tardías resultantes no constituyen necesariamente el cronograma,
sino que más bien indican los periodos dentro de los cuales pueden planificarse las actividades,
teniendo en cuenta las duraciones de las actividades, las relaciones lógicas, los adelantos, los
retrasos y otras restricciones conocidas.
Las fechas de inicio y finalización tempranas y tardías calculadas pueden ser afectadas
por la holgura total de la actividad que proporciona flexibilidad al cronograma y cuyo valor
puede ser positivo, negativo o nulo. En cualquier camino de red, la flexibilidad del
cronograma se mide por la diferencia positiva entre las fechas tempranas y tardías, lo cual se
conoce como “holgura total”. Las rutas críticas tienen una holgura total igual a cero o
negativa y las actividades del cronograma en una ruta crítica reciben el nombre de
“actividades críticas”. Una ruta crítica se caracteriza normalmente por el hecho de que su
holgura total es igual a cero. Las redes pueden tener varias rutas casi críticas. Puede ser
necesario realizar ajustes a las duraciones de las actividades, a sus relaciones lógicas, a los
adelantos y a los retrasos, o a otras restricciones del cronograma para lograr caminos de red
con una holgura total igual a cero o positiva. Una vez que se ha calculado la holgura total de
un camino de red, entonces puede determinarse la holgura libre, que es la cantidad de tiempo
que una actividad puede retrasarse dentro de un camino de red, sin demorar la fecha de inicio
temprana de cualquier actividad sucesora inmediata dentro de dicho camino de red.'!

metodosComunicacion
	^'Existen varios métodos de comunicación que se emplean para compartir la información entre
los interesados en el proyecto. De manera general, estos métodos pueden clasificarse en:
• Comunicación interactiva. Entre dos o más partes que realizan un intercambio de
información de tipo multidireccional. Resulta la manera más eficiente de asegurar
entre todos los participantes una comprensión común acerca de temas específicos, e
incluye reuniones, llamadas telefónicas, videoconferencias, etc.
• Comunicación de tipo push (empujar). Enviada a receptores específicos que
necesitan conocer la información. Esto asegura la distribución de la información, pero
no garantiza que efectivamente haya llegado a la audiencia prevista ni que haya sido
comprendida. Este tipo de comunicación incluye las cartas, los memorandos, los
informes, los correos electrónicos, los faxes, los correos de voz, los comunicados de
prensa, etc.
• Comunicación de tipo pull (halar). Utilizada para grandes volúmenes de
información o para audiencias muy grandes, que requieren que los receptores accedan
al contenido de la comunicación según su propio criterio. Entre los métodos, se
incluyen los sitios intranet, el aprendizaje virtual, los servidores de contenido, etc.
En función de los requisitos de comunicación, el director del proyecto decide qué
métodos de comunicación deben utilizarse dentro del proyecto, cómo y cuándo hacerlo.'!

metodosProyeccion
	^'La proyección es el proceso que consiste en predecir el desempeño futuro del proyecto
basándose en el desempeño real a la fecha. Los métodos de proyección pueden clasificarse en
diferentes categorías:
• Métodos de series de tiempo. Los métodos de series de tiempo emplean datos
históricos como base para la estimación de resultados futuros. Entre los ejemplos de
métodos en esta categoría, se incluyen el valor ganado, el promedio móvil, la
extrapolación, la predicción lineal, la estimación de tendencias y la curva de
crecimiento.
• Métodos causales/econométricos. Algunos métodos de proyección se basan en la
hipótesis de que es posible identificar los factores subyacentes que pueden influir en
la variable que se está proyectando. Por ejemplo, las ventas de paraguas pueden
asociarse con las condiciones meteorológicas. Si se comprenden las causas, se pueden
proyectar las variables que influyen y usarse en la proyección. Entre los ejemplos de
métodos en esta categoría, se incluyen el análisis de regresión usando la regresión
lineal o no lineal, el promedio móvil auto regresivo y la econometría.
• Métodos de juicio. Los métodos de juicio de las proyecciones, que incorporan juicios
intuitivos, opiniones y estimaciones de probabilidad. Entre los ejemplos de métodos
en esta categoría, se encuentran las proyecciones compuestas, las encuestas, la técnica
Delphi, la elaboración de escenarios, la proyección tecnológica y la proyección por
analogía.
• Otros métodos. Otros métodos pueden incluir la simulación, las proyecciones
probabilísticas y las proyecciones Ensemble (proyecciones combinadas)'!

modelosComunicacion
	^'El Gráfico 10-8 muestra un modelo de comunicación básica, que representa cómo la
información se envía y se recibe entre dos partes, definidas como el emisor y el receptor. Los
componentes clave de este modelo incluyen:
• La codificación. Traducir pensamientos o ideas a un lenguaje que es comprendido
por otras personas.
• El mensaje y el mensaje de retroalimentación. La salida de la codificación.
• El medio. El método utilizado para transmitir el mensaje.
• El ruido. Todo lo que interfiere con la transmisión y comprensión del mensaje (p.ej.,
la distancia, la falta de familiaridad con la tecnología, la falta de información
contextual).
• La decodificación. Traducir nuevamente el mensaje en pensamientos o ideas
coherentes.
El Gráfico 10-8 presenta un modelo de comunicación básica. La realización de una acción
para confirmar recepción del mensaje es inherente al modelo. Confirmar recepción significa
que el receptor indica que recibió el mensaje, pero no necesariamente que está de acuerdo con
él. Otra acción es la respuesta a un mensaje, lo que significa que el receptor ha decodificado
el mensaje, lo comprende y responde al mismo.
Es preciso tener en cuenta los componentes del modelo de comunicación cuando se
debate sobre las comunicaciones del proyecto. En el marco del proceso de comunicación, el
emisor es responsable de que la información transmitida sea clara y completa, de modo que el
receptor pueda recibirla correctamente, y confirmar que fue correctamente entendida. El
receptor es responsable de cerciorarse de que la información sea recibida en su totalidad,
comprendida correctamente y confirmada. Una falla en la comunicación puede ejercer un
impacto negativo en el proyecto.
Existen numerosos desafíos en la utilización de estos componentes para comunicarse de
manera eficaz con los interesados en el proyecto. Basta tomar como ejemplo a un equipo de
proyecto multinacional y muy técnico. Para que un miembro del equipo logre comunicar de
manera satisfactoria un concepto técnico a otro miembro del equipo situado en un país
diferente, puede ser necesario codificar el mensaje en el idioma adecuado, enviar el mensaje
recurriendo a una variedad de tecnologías y aguardar a que el receptor decodifique el mensaje
y responda al mismo o proporcione una retroalimentación. Cualquier ruido que se produzca
en el camino pone en peligro el significado original del mensaje.'!

muestreoEstadistico
	^'El muestreo estadístico consiste en seleccionar una parte de la población de interés para
su inspección (por ejemplo, una selección al azar de diez planos de ingeniería a partir de
una lista de setenta y cinco planos). La frecuencia y el tamaño de la muestra deben
determinarse durante el proceso Planificar la Calidad, de modo que el costo de la
calidad incluya el número de pruebas, los rechazos esperados, etc.
Existe un cuerpo sustancial de conocimientos sobre muestreo estadístico. En
algunas áreas de aplicación, puede ser necesario que el equipo de dirección del
proyecto esté familiarizado con diferentes técnicas de muestreo para asegurarse de
que la muestra seleccionada sea realmente representativa de la población de interés.'!

negociacion
	^'En muchos proyectos, las asignaciones de personal se negocian. Por ejemplo, el equipo de
dirección del proyecto podría necesitar negociar con:
• gerentes funcionales, para asegurar que el proyecto reciba personal con las
competencias apropiadas dentro del plazo necesario y que los miembros del equipo
del proyecto cuenten con la capacidad, disposición y autorización necesarias para
trabajar en el proyecto hasta completar sus responsabilidades,
• otros equipos de dirección del proyecto dentro de la organización ejecutante a fin de
asignar de forma adecuada recursos humanos escasos o especializados,
• organizaciones externas, vendedores, proveedores, contratistas, etc., para obtener
recursos humanos adecuados, escasos, especializados, calificados, certificados o de
otro tipo específico. Deberá prestarse especial atención a las políticas, prácticas,
procesos, pautas, disposiciones legales y a otros criterios de negociación externos.
La capacidad del equipo de dirección del proyecto de influir en otras personas desempeña
un papel importante en la negociación de asignaciones de personal, del mismo modo que las
políticas de las organizaciones implicadas. Por ejemplo, un gerente funcional evaluará los
beneficios y la visibilidad de proyectos que compiten, a la hora de determinar a dónde asignar
a las personas con un excelente desempeño, que son requeridas por diferentes equipos del
proyecto.'!

negociacionAdquisiciones
	^'Las negociaciones aclaran la estructura, los requisitos y otros términos relativos a las compras,
para que se logre establecer un acuerdo mutuo antes de firmar el contrato. El lenguaje
contractual final refleja todos los acuerdos obtenidos. Los temas cubiertos deberían incluir las
responsabilidades, la autoridad de efectuar cambios, los términos y la legislación aplicables, los
enfoques técnicos y de dirección comercial, los derechos de propiedad exclusiva, el
financiamiento del contrato, las soluciones técnicas, el cronograma general, los pagos y el
precio. Las negociaciones se cierran con un documento contractual que puede ser realizado por
ambas partes, la compradora y la vendedora.
En el caso de elementos de adquisición complejos, la negociación del contrato puede ser
un proceso independiente con entradas (p.ej. una lista de asuntos o de elementos pendientes)
y salidas (p.ej., decisiones documentadas) propias. En el caso de elementos de adquisición
simples, los términos y condiciones del contrato pueden fijarse con anterioridad y no ser
negociables, y sólo requerir la aceptación del vendedor.
Puede suceder que el director del proyecto no sea el negociador principal de las
adquisiciones. El director del proyecto y otros miembros del equipo de dirección del proyecto
pueden estar presentes durante las negociaciones para brindar asistencia y, si fuera necesario,
aportar aclaraciones en cuanto a los requisitos técnicos, de calidad y de dirección del
proyecto.'!

negotiatedSettlements

	^'In all procurement relationships the final equitable settlement of all outstanding issues, claims,
and disputes by negotiation is a primary goal. Whenever settlement cannot be achieved through direct
negotiation, some form of alternative dispute resolution (ADR) including mediation or arbitration may
be explored. When all else fails, litigation in the courts is the least desirable option.'!

negotiatedSettlementsNew
		^super new
			name: 'Negotiated Settlements'; 
			description: self negotiatedSettlements;
			yourself.!

negotiation

	^'Staff assignments are negotiated on many projects. For example, the project management team
may need to negotiate with:
  • Functional managers to ensure that the project receives appropriately competent staff in the
     required time frame, and that the project team members will be able, willing, and authorized to
     work on the project until their responsibilities are completed,
  • Other project management teams within the performing organization to appropriately assign
     scarce or specialized human resources, and
   • External organizations, vendors, suppliers, contractors, etc., for appropriate, scarce, specialized,
      qualified, certified, or other such specified human resources. Special consideration should
      be given to external negotiating policies, practices, processes, guidelines, legal, and other
      such criteria.
    The project management team’s ability to influence others plays an important role in negotiating
staff assignments, as do the politics of the organizations involved. For example, a functional manager
will weigh the benefits and visibility of competing projects when determining where to assign
exceptional performers requested by various project teams.'!

negotiationNew
		^super new
			name: 'Negotiation'; 
			description: self negotiation;
			yourself.!

networking

	^'Networking is the formal and informal interaction with others in an organization, industry, or
professional environment. It is a constructive way to understand political and interpersonal factors that
will impact the effectiveness of various staffing management options. Human resources networking
activities include proactive correspondence, luncheon meetings, informal conversations including
meetings and events, trade conferences, and symposia. Networking can be a useful technique at the
beginning of a project. It can also be an effective way to enhance project management professional
development during the project and after the project ends.'!

networkingNew
		^super new
			name: 'Networking'; 
			description: self networking;
			yourself.!

newActividadesDesarrolloEspirituEquipo

	^super new
		name: 'Actividades de Desarrollo del Espíritu de Equipo';
		description: self actividadesDesarrolloEspirituEquipo;
		yourself.!

newAcuerdosNegociados

	^super new
		name: 'Acuerdos Negociados';
		description: self acuerdosNegociados;
		yourself.!

newAdministracionReclamaciones

	^super new
		name: 'Administración de Reclamaciones';
		description: self administracionReclamaciones;
		yourself.!

newAdquisicion

	^super new
		name: 'Adquisición';
		description: self adquisicion;
		yourself.!

newAjusteAdelantosRetrasos

	^super new
		name: 'Ajuste de Adelantos y Retrasos';
		description: self ajusteAdelantosRetrasos;
		yourself.!

newAnalisisAlternativas

	^super new
		name: 'Análisis de Alternativas';
		description: self analisisAlternativas;
		yourself.!

newAnalisisCostoBeneficio

	^super new
		name: 'Análisis Costo-Beneficio';
		description: self analisisCostoBeneficio;
		yourself.!

newAnalisisHacerComprar

	^super new
		name: 'Análisis de Hacer o Comprar';
		description: self analisisHacerComprar;
		yourself.!

newAnalisisInteresados

	^super new
		name: 'Análisis de los Interesados';
		description: self analisisInteresados;
		yourself.!

newAnalisisListasControl

	^super new
		name: 'Análisis de las Listas de Control';
		description: self analisisListasControl;
		yourself.!

newAnalisisProcesos

	^super new
		name: 'Análisis de Procesos';
		description: self analisisProcesos;
		yourself.!

newAnalisisProducto

	^super new
		name: 'Análisis del Producto';
		description: self analisisProducto;
		yourself.!

newAnalisisPropuestasLicitaciones

	^super new
		name: 'Análisis de Propuestas para Licitaciones';
		description: self analisisPropuestasLicitaciones;
		yourself.!

newAnalisisQuePasaSi

	^super new
		name: 'Análisis “¿Qué pasa si…?”';
		description: self analisisQuePasaSi;
		yourself.!

newAnalisisRedCronograma

	^super new
		name: 'Análisis de la Red del Cronograma';
		description: self analisisRedCronograma;
		yourself.!

newAnalisisRequisitosComunicaciones

	^super new
		name: 'Análisis de Requisitos de Comunicaciones';
		description: self analisisRequisitosComunicaciones;
		yourself.!

newAnalisisReserva

	^super new
		name: 'Análisis de Reserva';
		description: self analisisReserva;
		yourself.!

newAnalisisSupuestos

	^super new
		name: 'Análisis de Supuestos';
		description: self analisisSupuestos;
		yourself.!

newAnalisisSWOT

	^super new
		name: 'Análisis SWOT (o DAFO, Debilidades, Amenazas, Fortalezas y Oportunidades)';
		description: self analisisSWOT;
		yourself.!

newAnalisisVariacion

	^super new
		name: 'Análisis de Variación';
		description: self analisisVariacion;
		yourself.!

newAnalisisVariacionTendencias

	^super new
		name: 'Análisis de Variación y de Tendencias';
		description: self analisisVariacionTendencias;
		yourself.!

newAplicacionAdelantosRetrasos

	^super new
		name: 'Aplicación de Adelantos y Retrasos';
		description: self aplicacionAdelantosRetrasos;
		yourself.!

newAsignacionPrevia

	^super new
		name: 'Asignación Previa';
		description: self asignacionPrevia;
		yourself.!

newAuditoriasAdquisicion

	^super new
		name: 'Auditorías de la Adquisición';
		description: self auditoriasAdquisicion;
		yourself.!

newAuditoriasCalidad

	^super new
		name: 'Auditorías de Calidad';
		description: self auditoriasCalidad;
		yourself.!

newAuditoriasRiesgos

	^super new
		name: 'Auditorías de los Riesgos';
		description: self auditoriasRiesgos;
		yourself.!

newBusquedaInternet

	^super new
		name: 'Búsqueda en Internet';
		description: self busquedaInternet;
		yourself.!

newCapacitacion

	^super new
		name: 'Capacitación';
		description: self capacitacion;
		yourself.!

newCategorizacionRiesgos

	^super new
		name: 'Categorización de Riesgos';
		description: self categorizacionRiesgos;
		yourself.!

newCompresionCronograma

	^super new
		name: 'Compresión del Cronograma';
		description: self compresionCronograma;
		yourself.!

newConciliacionLimiteFinanciamiento

	^super new
		name: 'Conciliación del Límite del Financiamiento';
		description: self conciliacionLimiteFinanciamiento;
		yourself.!

newConferenciasOferentes

	^super new
		name: 'Conferencias de Oferentes';
		description: self conferenciasOferentes;
		yourself.!

newCostoCalidad

	^super new
		name: 'Costo de la Calidad';
		description: self costoCalidad;
		yourself.!

newCreacionRelacionesTrabajo

	^super new
		name: 'Creación de Relaciones de Trabajo';
		description: self creacionRelacionesTrabajo;
		yourself.!

newCuestionariosEncuestas

	^super new
		name: 'Cuestionarios y Encuestas';
		description: self cuestionariosEncuestas;
		yourself.!

newDatosEstimacionPublicados

	^super new
		name: 'Datos de Estimación Publicados';
		description: self datosEstimacionPublicados;
		yourself.!

newDescomposicion

	^super new
		name: 'Descomposición';
		description: self descomposicion;
		yourself.!

newDescomposicionActividades

	^super new
		name: 'Descomposición Actividades';
		description: self descomposicionActividades;
		yourself.!

newDeterminacionDependencias

	^super new
		name: 'Determinación de Dependencias';
		description: self determinacionDependencias;
		yourself.!

newDiagramaComportamiento

	^super new
		name: 'Diagrama de Comportamiento';
		description: self diagramaComportamiento;
		yourself.!

newDiagramaDispersion

	^super new
		name: 'Diagrama de Dispersión';
		description: self diagramaDispersion;
		yourself.!

newDiagramaPareto

	^super new
		name: 'Diagrama de Pareto';
		description: self diagramaPareto;
		yourself.!

newDiagramasCausaEfecto

	^super new
		name: 'Diagramas de Causa y Efecto';
		description: self diagramasCausaEfecto;
		yourself.!

newDiagramasControl

	^super new
		name: 'Diagramas de Control';
		description: self diagramasControl;
		yourself.!

newDiagramasFlujo

	^super new
		name: 'Diagramas de Flujo';
		description: self diagramasFlujo;
		yourself.!

newDisenoExperimentos

	^super new
		name: 'Diseño de Experimentos';
		description: self disenoExperimentos;
		yourself.!

newEntrevistas

	^super new
		name: 'Entrevistas';
		description: self entrevistas;
		yourself.!

newEquiposVirtuales

	^super new
		name: 'Equipos Virtuales';
		description: self equiposVirtuales;
		yourself.!

newEstimacionAnaloga

	^super new
		name: 'Estimación Análoga';
		description: self estimacionAnaloga;
		yourself.!

newEstimacionAscendente

	^super new
		name: 'Análisis del Producto';
		description: self estimacionAscendente;
		yourself.!

newEstimacionesIndependientes

	^super new
		name: 'Estimaciones Independientes';
		description: self estimacionesIndependientes;
		yourself.!

newEstimacionParametrica

	^super new
		name: 'Estimación Paramétrica';
		description: self estimacionParametrica;
		yourself.!

newEstimacionTresValores

	^super new
		name: 'Estimación por Tres Valores';
		description: self estimacionTresValores;
		yourself.!

newEstrategiasRespuestaContingencias

	^super new
		name: 'Estrategias de Respuesta para Contingencias';
		description: self estrategiasRespuestaContingencias;
		yourself.!

newEstrategiasRiesgosNegativosAmenazas

	^super new
		name: 'Estrategias para Riesgos Negativos o Amenazas';
		description: self estrategiasRiesgosNegativosAmenazas;
		yourself.!

newEstrategiasRiesgosPositivosOportunidades

	^super new
		name: 'Estrategias para Riesgos Positivos u Oportunidades';
		description: self estrategiasRiesgosPositivosOportunidades;
		yourself.!

newEstudiosComparativos

	^super new
		name: 'Estudios Comparativos';
		description: self estudiosComparativos;
		yourself.!

newEvaluacionCalidadDatosSobreRiesgos

	^super new
		name: 'Evaluación de la Calidad de los Datos sobre Riesgos';
		description: self evaluacionCalidadDatosSobreRiesgos;
		yourself.!

newEvaluacionesDesempenoProyecto

	^super new
		name: 'Evaluaciones del Desempeño del Proyecto';
		description: self evaluacionesDesempenoProyecto;
		yourself.!

newEvaluacionProbabilidadImpactoRiesgos

	^super new
		name: 'Evaluación de Probabilidad e Impacto de los Riesgos';
		description: self evaluacionProbabilidadImpactoRiesgos;
		yourself.!

newEvaluacionUrgenciaRiesgos

	^super new
		name: 'Evaluación de la Urgencia de los Riesgos';
		description: self evaluacionUrgenciaRiesgos;
		yourself.!

newGestionConflictos

	^super new
		name: 'Gestión de Conflictos';
		description: self gestionConflictos;
		yourself.!

newGestionValorGanado

	^super new
		name: 'Gestión del Valor Ganado';
		description: self gestionValorGanado;
		yourself.!

newGruposOpinion

	^super new
		name: 'Grupos de Opinión';
		description: self gruposOpinion;
		yourself.!

newHabilidadesGestion

	^super new
		name: 'Habilidades de Gestión';
		description: self habilidadesGestion;
		yourself.!

newHabilidadesInterpersonales

	^super new
		name: 'Habilidades Interpersonales';
		description: self habilidadesInterpersonales;
		yourself.!

newHerramientaPlanificacion

	^super new
		name: 'Herramienta de Planificación';
		description: self herramientaPlanificacion;
		yourself.!

newHerramientasAdicionalesPlanificacionCalidad

	^super new
		name: 'Herramientas Adicionales de Planificación de Calidad';
		description: self herramientasAdicionalesPlanificacionCalidad;
		yourself.!

newHerramientasDistribucionInformacion

	^super new
		name: 'Herramientas para la Distribución de la Información';
		description: self herramientasDistribucionInformacion;
		yourself.!

newHerramientasTecnicasPlanificarCalidadRealizarControlCalidad

	^super new
		name: 'Herramientas y Técnicas para Planificar la Calidad y Realizar el Control de Calidad';
		description: self herramientasTecnicasPlanificarCalidadRealizarControlCalidad;
		yourself.!

newHistograma

	^super new
		name: 'Histograma';
		description: self histograma;
		yourself.!

newIdentificacionAlternativas

	^super new
		name: 'Identificación de Alternativas';
		description: self identificacionAlternativas;
		yourself.!

newIndiceDesempenoTrabajoCompletar

	^super new
		name: 'Índice de Desempeño del Trabajo por Completar (TCPI)';
		description: self indiceDesempenoTrabajoCompletar;
		yourself.!

newInformesDesempeno

	^super new
		name: 'Informes de Desempeño';
		description: self informesDesempeno;
		yourself.!

newInspeccion

	^super new
		name: 'Inspección';
		description: self inspeccion;
		yourself.!

newInspeccionesAuditorias

	^super new
		name: 'Inspecciones y Auditorías';
		description: self inspeccionesAuditorias;
		yourself.!

newJuicioDeExpertos

	^super new
		name: 'Juicio de Expertos';
		description: self juicioDeExpertos;
		yourself.!

newMatrizProbabilidadImpacto

	^super new
		name: 'Matriz de Probabilidad e Impacto';
		description: self matrizProbabilidadImpacto;
		yourself.!

newMedicionDesempenoTecnico

	^super new
		name: 'Medición del Desempeño Técnico';
		description: self medicionDesempenoTecnico;
		yourself.!

newMetodoCadenaCritica

	^super new
		name: 'Método de la Cadena Crítica';
		description: self metodoCadenaCritica;
		yourself.!

newMetodoDiagramacionPrecedencia

	^super new
		name: 'Método de Diagramación por Precedencia (PDM)';
		description: self metodoDiagramacionPrecedencia;
		yourself.!

newMetodologiasPropietariasGestionCalidad

	^super new
		name: 'Metodologías Propietarias de Gestión de la Calidad';
		description: self metodologiasPropietariasGestionCalidad;
		yourself.!

newMetodoRutaCritica

	^super new
		name: 'Método de la Ruta Crítica';
		description: self metodoRutaCritica;
		yourself.!

newMetodosComunicacion

	^super new
		name: 'Métodos de Comunicación';
		description: self metodosComunicacion;
		yourself.!

newMetodosProyeccion

	^super new
		name: 'Métodos de Proyección';
		description: self metodosProyeccion;
		yourself.!

newModelosComunicacion

	^super new
		name: 'Modelos de Comunicación';
		description: self modelosComunicacion;
		yourself.!

newMuestreoEstadistico

	^super new
		name: 'Muestreo Estadístico';
		description: self muestreoEstadistico;
		yourself.!

newNegociacion

	^super new
		name: 'Negociación';
		description: self negociacion;
		yourself.!

newNegociacionAdquisiciones

	^super new
		name: 'Negociación de Adquisiciones';
		description: self negociacionAdquisiciones;
		yourself.!

newNivelacionRecursos

	^super new
		name: 'Nivelación de Recursos';
		description: self nivelacionRecursos;
		yourself.!

newObservacionConversacion

	^super new
		name: 'Observación y Conversación';
		description: self observacionConversacion;
		yourself.!

newObservaciones

	^super new
		name: 'Observaciones';
		description: self observaciones;
		yourself.!

newOrganigramasDescripcionesCargos

	^super new
		name: 'Organigramas y Descripciones de Cargos';
		description: self organigramasDescripcionesCargos;
		yourself.!

newPlanificacionGradual

	^super new
		name: 'Planificación Gradual';
		description: self planificacionGradual;
		yourself.!

newPlantillas

	^super new
		name: 'Plantillas';
		description: self plantillas;
		yourself.!

newPlantillasRedCronograma

	^super new
		name: 'Plantillas de Red del Cronograma';
		description: self plantillasRedCronograma;
		yourself.!

newPrototipos

	^super new
		name: 'Prototipos';
		description: self prototipos;
		yourself.!

newProyecciones

	^super new
		name: 'Proyecciones';
		description: self proyecciones;
		yourself.!

newPublicidad

	^super new
		name: 'Publicidad';
		description: self publicidad;
		yourself.!

newReconocimientoRecompensas

	^super new
		name: 'Reconocimiento y Recompensas';
		description: self reconocimientoRecompensas;
		yourself.!

newReevaluacionRiesgos

	^super new
		name: 'Reevaluación de los Riesgos';
		description: self reevaluacionRiesgos;
		yourself.!

newRegistroAsuntos

	^super new
		name: 'Registro de Asuntos';
		description: self registroAsuntos;
		yourself.!

newReglasBasicas

	^super new
		name: 'Reglas Básicas';
		description: self reglasBasicas;
		yourself.!

newRelacionesHistoricas

	^super new
		name: 'Relaciones Históricas';
		description: self relacionesHistoricas;
		yourself.!

newReubicacion

	^super new
		name: 'Reubicación';
		description: self reubicacion;
		yourself.!

newReunionesControlCambios

	^super new
		name: 'Reuniones de Control de Cambios';
		description: self reunionesControlCambios;
		yourself.!

newReunionesPlanificacionAnalisis

	^super new
		name: 'Reuniones de Planificación y Análisis';
		description: self reunionesPlanificacionAnalisis;
		yourself.!

newReunionesSobreEstadoProyecto

	^super new
		name: 'Reuniones sobre el Estado del Proyecto';
		description: self reunionesSobreEstadoProyecto;
		yourself.!

newRevisionesDesempeno

	^super new
		name: 'Revisiones del Desempeño';
		description: self revisionesDesempeno;
		yourself.!

newRevisionesDesempenoAdquisiciones

	^super new
		name: 'Revisiones del Desempeño de las Adquisiciones';
		description: self revisionesDesempenoAdquisiciones;
		yourself.!

newRevisionesDocumentacion

	^super new
		name: 'Revisiones de la Documentación';
		description: self revisionesDocumentacion;
		yourself.!

newSistemaControlCambiosContrato

	^super new
		name: 'Sistema de Control de Cambios del Contrato';
		description: self sistemaControlCambiosContrato;
		yourself.!

newSistemaGestionRegistros

	^super new
		name: 'Sistema de Gestión de Registros';
		description: self sistemaGestionRegistros;
		yourself.!

newSistemaInformacionDireccionProyectos

	^super new
		name: 'Sistema de Información para la Dirección de Proyectos';
		description: self sistemaInformacionDireccionProyectos;
		yourself.!

newSistemasInformes

	^super new
		name: 'Sistemas de Informes';
		description: self sistemasInformes;
		yourself.!

newSistemasPago

	^super new
		name: 'Sistemas de Pago';
		description: self sistemasPago;
		yourself.!

newSoftwareEstimacionCostosDireccionProyectos

	^super new
		name: 'Software de estimación de costos para la dirección de proyectos';
		description: self softwareEstimacionCostosDireccionProyectos;
		yourself.!

newSoftwareGestionProyectos

	^super new
		name: 'Software de Gestión de Proyectos';
		description: self softwareGestionProyectos;
		yourself.!

newSumaCostos

	^super new
		name: 'Suma de Costos';
		description: self sumaCostos;
		yourself.!

newTalleresFacilitados

	^super new
		name: 'Talleres Facilitados';
		description: self talleresFacilitados;
		yourself.!

newTecnicasAnalisisCuantitativoRiesgosModelado

	^super new
		name: 'Técnicas de Análisis Cuantitativo de Riesgos y de Modelado';
		description: self tecnicasAnalisisCuantitativoRiesgosModelado;
		yourself.!

newTecnicasDiagramacion

	^super new
		name: 'Técnicas de Diagramación';
		description: self tecnicasDiagramacion;
		yourself.!

newTecnicasEvaluacionPropuestas

	^super new
		name: 'Técnicas de Evaluación de Propuestas';
		description: self tecnicasEvaluacionPropuestas;
		yourself.!

newTecnicasGrupalesCreatividad

	^super new
		name: 'Técnicas Grupales de Creatividad';
		description: self tecnicasGrupalesCreatividad;
		yourself.!

newTecnicasGrupalesTomaDecisiones

	^super new
		name: 'Técnicas Grupales de Toma de Decisiones';
		description: self tecnicasGrupalesTomaDecisiones;
		yourself.!

newTecnicasRecopilacionInformacion

	^super new
		name: 'Técnicas de Recopilación de Información';
		description: self tecnicasRecopilacionInformacion;
		yourself.!

newTecnicasRecopilacionRepresentacionDatos

	^super new
		name: 'Técnicas de Recopilación y Representación de Datos';
		description: self tecnicasRecopilacionRepresentacionDatos;
		yourself.!

newTecnologiaComunicaciones

	^super new
		name: 'Tecnología de las Comunicaciones';
		description: self tecnologiaComunicaciones;
		yourself.!

newTeoriaOrganizacion

	^super new
		name: 'Teoría de la Organización';
		description: self teoriaOrganizacion;
		yourself.!

newTiposContrato

	^super new
		name: 'Tipos de Contrato';
		description: self tiposContrato;
		yourself.!

nivelacionRecursos
	^'Cualquier forma de análisis de la red del
cronograma en que las decisiones de
planificación (fechas de inicio y de
finalización) se basan en aspectos relativos a
las restricciones de los recursos (p.ej.,
disponibilidad de recursos limitados o cambios
de difícil gestión en los niveles de
disponibilidad de recursos).
--------------------------------------------------------------------
La nivelación de recursos es una técnica de análisis de la red del cronograma que se aplica a un
cronograma que ya ha sido analizado por medio del método de la ruta crítica. La nivelación de
recursos puede utilizarse cuando los recursos compartidos o críticos necesarios sólo están
disponibles en ciertos momentos o en cantidades limitadas, o para mantener la utilización de
recursos en un nivel constante. La nivelación de recursos es necesaria cuando los recursos han
sido sobre asignados, es decir, cuando un recurso se ha asignado a dos o más tareas para el
mismo periodo, o cuando los recursos compartidos o críticos necesarios sólo están disponibles
en ciertos periodos o en cantidades limitadas. La nivelación de recursos provoca a menudo
cambios en la ruta crítica.'!

observacionConversacion
	^'La observación y la conversación se utilizan para mantenerse en contacto con el trabajo y las
actitudes de los miembros del equipo del proyecto. El equipo de dirección del proyecto
monitorea el avance en relación con los entregables del proyecto, los logros que son motivo de
orgullo para los miembros y los problemas interpersonales.'!

observaciones

	^'Las observaciones proporcionan una manera directa de ver a las personas en su ambiente, y el
modo en que realizan sus trabajos o tareas y ejecutan los procesos. Son particularmente útiles
para procesos detallados, cuando las personas que usan el producto tienen dificultades o se
muestran renuentes para articular sus requisitos. La observación, también conocida por el
término en inglés job shadowing, es comúnmente realizada de manera externa por un
observador quien ve al usuario mientras ejecuta su trabajo. También puede hacerla un
“observador participante”, quien lleva a cabo un proceso o procedimiento para experimentar
cómo se hace y descubrir requisitos ocultos.'!

observationConversation

	^'Observation and conversation are used to stay in touch with the work and attitudes of project
team members. The project management team monitors progress toward project deliverables,
accomplishments that are a source of pride for team members, and interpersonal issues.'!

observationConversationNew
		^super new
			name: 'Observation Conversation'; 
			description: self observationConversation;
			yourself.!

observations

	^'Observations provide a direct way of viewing individuals in their environment and how they perform
their jobs or tasks and carry out processes. It is particularly helpful for detailed processes when the
people that use the product have difficulty or are reluctant to articulate their requirements. Observation,
also called “job shadowing,” is usually done externally by the observer viewing the user performing his
or her job. It can also be done by a “participant observer” who actually performs a process or procedure
to experience how it is done to uncover hidden requirements.'!

observationsNew
		^super new
			name: 'Observations'; 
			description: self observations;
			yourself.!

organigramasDescripcionesCargos
	^'Existen formatos diversos para documentar los roles y las responsabilidades de los miembros
del equipo. La mayoría de los formatos se encuadra en alguno de los tres tipos siguientes
(Gráfico 9-4): jerárquico, matricial y de tipo texto. Por otra parte, algunas asignaciones del
proyecto se enumeran en planes subsidiarios para la dirección del proyecto, tales como los
planes de riesgos, de calidad o de comunicación. Independientemente del método utilizado, el
objetivo es asegurar que cada paquete de trabajo tenga un responsable inequívoco y que todos
los miembros del equipo comprendan claramente sus roles y responsabilidades.
• Diagramas jerárquicos. La estructura tradicional de organigrama puede utilizarse
para representar los cargos y relaciones en un formato gráfico descendente. Las
estructuras de desglose del trabajo (EDT) diseñadas para mostrar cómo los
entregables del proyecto se descomponen en paquetes de trabajo, ofrecen un modo de
mostrar áreas de responsabilidad de alto nivel. Mientras que la EDT muestra un
desglose de los entregables del proyecto, la estructura de desglose de la organización
(EDO) está estructurada según los departamentos, unidades o equipos existentes de
una organización, con las actividades del proyecto o los paquetes de trabajo
enumerados para cada departamento. Un departamento operativo, como el de
tecnologías de la información o el de compras, puede ver todas sus responsabilidades
dentro del proyecto consultando la parte que le corresponde en la estructura de
desglose de la organización. La estructura de desglose de recursos es otro diagrama de
tipo jerárquico utilizado para descomponer el proyecto según los tipos de recursos.
Por ejemplo, una estructura de desglose de recursos puede representar todos los
soldadores y equipos de soldadura que se están utilizando en diferentes áreas de un
barco, aunque se encuentren distribuidos en las diferentes ramas de la estructura de
desglose de la organización y la EDT. La estructura de desglose de recursos es útil
para realizar el seguimiento de los costos del proyecto y puede alinearse con el
sistema contable de la organización. Puede contener categorías de recursos que no
sean los recursos humanos.
• Diagramas matriciales. Una matriz de asignación de responsabilidades (RAM) se
utiliza para ilustrar las relaciones entre las actividades o los paquetes de trabajo y los
miembros del equipo del proyecto. En proyectos mayores, las matrices de asignación
de responsabilidades pueden desarrollarse en diferentes niveles. Por ejemplo, una
RAM de alto nivel puede definir qué grupo o unidad del equipo del proyecto es
responsable de cada componente de la EDT, mientras que las RAM de menor nivel se
utilizan dentro del grupo para designar roles, responsabilidades y niveles de autoridad
para actividades específicas. El formato matricial muestra todas las actividades
asociadas con una persona y todas las personas asociadas con una actividad. Esto
también asegura que haya una sola persona encargada de rendir cuentas por una tarea
determinada a fin de evitar confusiones. Un ejemplo de RAM es un diagrama RACI,
que en inglés significa “Responsible (R), Accountable (A), Consulted (C), Informed
(I)” (persona responsable, que rinde cuentas, consultada, informada), como se muestra
en el Gráfico 9-5. El ejemplo de diagrama muestra el trabajo que debe realizarse en la
columna izquierda como “actividades”. Los recursos asignados pueden representarse
como personas o grupos. El diagrama RACI es simplemente un tipo de matriz de
asignación de responsabilidades; el director del proyecto puede elegir otras opciones,
tales como las designaciones “lidera” o “recurso”, u otras, según resulten apropiadas
para el proyecto. El diagrama RACI tiene particular importancia cuando el equipo
está conformado por recursos internos y externos, a fin de asegurar una diferenciación
clara de roles y expectativas.
• Formatos tipo texto. Las responsabilidades de los miembros del equipo que
requieran descripciones detalladas pueden especificarse mediante formatos de tipo
textual. Generalmente en forma de resumen, los documentos suministran información
sobre aspectos tales como responsabilidades, autoridad, competencias y
calificaciones. Los documentos se conocen por nombres diversos, entre ellos
descripciones de cargos y formularios de rol-responsabilidad-autoridad. Estos
documentos se pueden usar como plantillas para proyectos futuros, en particular
cuando la información se actualiza durante todo el proyecto mediante la aplicación de
las lecciones aprendidas.
• Otras secciones del plan para la dirección del proyecto. Algunas responsabilidades
relacionadas con la dirección del proyecto se enumeran y explican en otras secciones
del plan para la dirección del proyecto. Por ejemplo, el registro de riesgos enumera a
los propietarios de los riesgos, el plan de comunicación enumera a los miembros del
equipo responsables de las actividades de comunicación y el plan de calidad designa a
las personas responsables de llevar a cabo el aseguramiento de calidad y las
actividades de control de calidad.'!

organizationalProcessAssetsUpdates!

organizationalProcessAssetsUpdatesNew
		^super new
			name: 'Organizational Process Assets Updates'; 
			description: self organizationalProcessAssetsUpdates;
			yourself.!

organizationalTheory

	^'Organizational theory provides information regarding the way in which people, teams, and
organizational units behave. Effective use of this information can shorten the amount of time, cost,
and effort needed to create the human resource planning outputs and improve the likelihood that the
planning will be effective. It is important to recognize that different organizational structures have
different individual response, individual performance, and personal relationship characteristics.'!

organizationalTheoryNew
		^super new
			name: 'Organizational Theory'; 
			description: self organizationalTheory;
			yourself.!

organizationChartsPositionDescriptions

	^'Various formats exist to document team member roles and responsibilities. Most of the formats
fall into one of three types (Figure 9-4): hierarchical, matrix, and text-oriented. Additionally, some
project assignments are listed in subsidiary project management plans such as the risk, quality, or
communication plans. Regardless of the method utilized, the objective is to ensure that each work
package has an unambiguous owner and that all team members have a clear understanding of their
roles and responsibilities.
• Hierarchical-type charts. The traditional organization chart structure can be used to show
  positions and relationships in a graphic, top-down format. Work breakdown structures (WBS)
  designed to show how project deliverables are broken down into work packages provide
  a way of showing high-level areas of responsibility. While the WBS shows a breakdown of
  project deliverables, the organizational breakdown structure (OBS) is arranged according to an
  organization’s existing departments, units, or teams with the project activities or work packages
  listed under each department. An operational department such as information technology or
  purchasing can see all of its project responsibilities by looking at its portion of the OBS. The
  resource breakdown structure is another hierarchical chart used to break down the project
  by types of resources. For example, a resource breakdown structure can depict all of the
  welders and welding equipment being used in different areas of a ship even though they can be
  scattered among different branches of the OBS and WBS. The resource breakdown structure is
  helpful in tracking project costs and can be aligned with the organization’s accounting system.
  It can contain resource categories other than human resources.
• Matrix-based charts. A responsibility assignment matrix (RAM) is used to illustrate the
  connections between work packages or activities and project team members. On larger projects,
  RAMs can be developed at various levels. For example, a high-level RAM can define what a
  project team group or unit is responsible for within each component of the WBS, while lower-
  level RAMs are used within the group to designate roles, responsibilities, and levels of authority
  for specific activities. The matrix format shows all activities associated with one person and all
  people associated with one activity. This also ensures that there is only one person accountable
  for any one task to avoid confusion. One example of a RAM is a RACI (responsible, accountable,
  consult, and inform) chart, shown in Figure 9-5. The sample chart shows the work to be done
  in the left column as activities. The assigned resources can be shown as individuals or groups.
  The RACI is just one type of RAM; the project manager can select other options such as “lead”
  and “resource” designations or others as appropriate for the project. The RACI is particularly
  important when the team consists of internal and external resources to ensure clear divisions
  of roles and expectations.
• Text-oriented formats. Team member responsibilities that require detailed descriptions can be
  specified in text-oriented formats. Usually in outline form, the documents provide information
  such as responsibilities, authority, competencies, and qualifications. The documents are known
  by various names including position descriptions and role-responsibility-authority forms. These
  documents can be used as templates for future projects, especially when the information is
  updated throughout the current project by applying lessons learned.
• Other sections of the project management plan. Some responsibilities related to managing
  the project are listed and explained in other sections of the project management plan. For
  example, the risk register lists risk owners, the communication plan lists team members
  responsible for communication activities, and the quality plan designates those responsible for
  carrying out quality assurance and quality control activities.'!

organizationChartsPositionDescriptionsNew
		^super new
			name: 'Organization Charts Position Descriptions'; 
			description: self organizationChartsPositionDescriptions;
			yourself.!

parametricEstimating

	^'Parametric estimating uses a statistical relationship between historical data and other variables
(e.g., square footage in construction) to calculate an estimate for activity parameters, such as cost,
budget, and duration. This technique can produce higher levels of accuracy depending upon the
sophistication and underlying data built into the model. Parametric cost estimates can be applied to a
total project or to segments of a project, in conjunction with other estimating methods.'!

parametricEstimatingNew
		^super new
			name: 'Parametric Estimating'; 
			description: self parametricEstimating;
			yourself.!

paretoChart

	^'A Pareto chart, also referred to as a Pareto diagram, is a specific type of histogram, ordered by
frequency of occurrence. It shows how many defects were generated by type or category of identified
cause (Figure 8-15). Rank ordering is used to focus corrective action. The project team should address
the causes creating the greatest number of defects first.
    Pareto diagrams are conceptually related to Pareto’s Law, which holds that a relatively small number
of causes will typically produce a majority of the problems or defects. This is commonly referred to as
the 80/20 principle, where 80% of the problems are due to 20% of the causes. Pareto diagrams can
also be used to summarize various types of data for 80/20 analyses.'!

paretoChartNew
		^super new
			name: 'Pareto Chart'; 
			description: self paretoChart;
			yourself.!

paymentSystems

	^'Payments to the seller are typically processed by the accounts payable system of the buyer after
certification of satisfactory work by an authorized person on the project team. All payments should be
made and documented in strict accordance with the terms of the contract.'!

paymentSystemsNew
		^super new
			name: 'Payment Systems'; 
			description: self paymentSystems;
			yourself.!

performanceReporting

	^'Performance reporting provides management with information about how effectively the seller is
achieving the contractual objectives.'!

performanceReportingNew
		^super new
			name: 'Performance Reporting'; 
			description: self performanceReporting;
			yourself.!

performanceReviews

	^'Performance reviews measure, compare, and analyze schedule performance such as actual start
and finish dates, percent complete, and remaining duration for work in progress. If earned value
management (EVM) is utilized the schedule variance (SV) (Section 7.3.2.1) and schedule performance
index (SPI) (Section 7.3.2.3) are used to assess the magnitude of schedule variations. An important
part of schedule control is to decide if the schedule variation requires corrective action. For example, a
major delay on any activity not on the critical path may have little effect on the overall project schedule,
while a much shorter delay on a critical or near-critical activity may require immediate action.
    If using the critical chain scheduling method (6.5.2.3), comparing the amount of buffer remaining
to the amount of buffer needed to protect the delivery date can help determine schedule status. The
difference between the buffer needed and the buffer remaining can determine whether corrective
action is appropriate.'!

performanceReviews2

	^'Performance reviews compare cost performance over time, schedule activities or work packages
overrunning and under running the budget, and estimated funds needed to complete work in progress.
If EVM is being used, the following information is determined:
    • Variance analysis. Variance analysis as used in EVM compares actual project performance to
       planned or expected performance. Cost and schedule variances are the most frequently analyzed.
    • Trend analysis. Trend analysis examines project performance over time to determine if
       performance is improving or deteriorating. Graphical analysis techniques are valuable for
       understanding performance to date and for comparison to future performance goals in the form
       of BAC versus EAC and completion dates.
    • Earned value performance. Earned value management compares the baseline plan to actual
       schedule and cost performance.'
!

performanceReviews2New
		^super new
			name: 'Performance Reviews2'; 
			description: self performanceReviews2;
			yourself.!

performanceReviewsNew
		^super new
			name: 'Performance Reviews'; 
			description: self performanceReviews;
			yourself.!

planificacionGradual
	^'La planificación gradual es una forma de planificación mediante elaboración gradual, donde se
planifica en detalle el trabajo que debe desarrollarse en el corto plazo y el trabajo futuro se
planifica a un nivel superior de la EDT. Por lo tanto, dependiendo de su ubicación en el ciclo de
vida del proyecto, el trabajo puede existir en diferentes niveles de detalle. Por ejemplo, durante la
planificación estratégica temprana, donde la información está menos definida, los paquetes de
trabajo pueden descomponerse a nivel de hitos. Conforme se conoce más acerca de los próximos
eventos en el corto plazo, pueden descomponerse en actividades.'!

planningMeetingsAnalysis

	^'Project teams hold planning meetings to develop the risk management plan. Attendees at these
meetings may include the project manager, selected project team members and stakeholders, anyone
in the organization with responsibility to manage the risk planning and execution activities, and others,
as needed.
    High-level plans for conducting the risk management activities are defined in these meetings. Risk
management cost elements and schedule activities will be developed for inclusion in the project budget
and schedule, respectively. Risk contingency reserve application approaches may be established or
reviewed. Risk management responsibilities will be assigned. General organizational templates for
risk categories and definitions of terms such as levels of risk, probability by type of risk, impact by
type of objectives, and the probability and impact matrix will be tailored to the specific project. If
templates for other steps in the process do not exist they may be generated in these meetings. The
outputs of these activities will be summarized in the risk management plan.'!

planningMeetingsAnalysisNew
		^super new
			name: 'Planning Meetings Analysis'; 
			description: self planningMeetingsAnalysis;
			yourself.!

planQualityPerformQualityControlToolsTechniques

	^'Tools and techniques from Plan Quality and Perform Quality Control, are discussed in Section 8.1.2.
Section 8.3.2 can also be used for quality assurance activities.'!

planQualityPerformQualityControlToolsTechniquesNew
		^super new
			name: 'Plan Quality Perform Quality Control Tools Techniques'; 
			description: self planQualityPerformQualityControlToolsTechniques;
			yourself.!

plantillas
	^'Una lista de actividades estándar o una parte de una lista de un proyecto previo, puede utilizarse
a menudo como plantilla para un nuevo proyecto. La información relacionada con los atributos
de las actividades de las plantillas también puede incluir otra información descriptiva útil para
la definición de las actividades. Las plantillas también pueden utilizarse para identificar hitos
típicos del cronograma.'!

plantillasRedCronograma
	^'Para acelerar la preparación de las redes de actividades del proyecto, pueden emplearse
plantillas normalizadas del diagrama de red del cronograma del proyecto. Pueden abarcar un
proyecto completo o sólo una parte del mismo. Las partes de un diagrama de red del
cronograma del proyecto se denominan a menudo subred o fragmento de red. Las plantillas de
las subredes son especialmente útiles cuando un proyecto abarca varios entregables idénticos o
casi idénticos, como los pisos de un edificio alto de oficinas, los estudios clínicos de un
proyecto de investigación farmacológica, los módulos de codificación de programas de un
proyecto de software o la fase de lanzamiento de un proyecto de desarrollo.'!

preAssignment

	^'When project team members are selected in advance they are considered pre-assigned.
This situation can occur if the project is the result of specific people being promised as part of a
competitive proposal, if the project is dependent upon the expertise of particular persons, or if some
staff assignments are defined within the project charter.'!

preAssignmentNew
		^super new
			name: 'Pre Assignment'; 
			description: self preAssignment;
			yourself.!

precedenceDiagrammingMethod 

	^'PDM is a method used in Critical Path Methodology (CPM) for constructing a project schedule network
diagram that uses boxes or rectangles, referred to as nodes, to represent activities, and connects them
with arrows that show the logical relationships that exist between them. Figure 6-7 shows a simple
project schedule network diagram drawn using PDM. This technique is also called Activity-On-Node
(AON), and is the method used by most project management software packages.
    PDM includes four types of dependencies or logical relationships:
    • Finish-to-start (FS). The initiation of the successor activity depends upon the completion of
        the predecessor activity.
    • Finish-to-finish (FF). The completion of the successor activity depends upon the completion
        of the predecessor activity.
    • Start-to-start (SS). The initiation of the successor activity depends upon the initiation of the
        predecessor activity.
    • Start-to-finish (SF). The completion of the successor activity depends upon the initiation of the
        predecessor activity.
    In PDM, finish-to-start is the most commonly used type of precedence relationship. The start-to-finish
relationship is rarely used but is included here for a complete list of the PDM relationship types.'!

precedenceDiagrammingMethodNew
		^super new
			name: 'Precedence Diagramming Method'; 
			description: self precedenceDiagrammingMethod;
			yourself.!

probabilityImpactMatrix

	^'Risks can be prioritized for further quantitative analysis and response based on their risk rating.
Usually, these risk-rating rules are specified by the organization in advance of the project and included
in organizational process assets. Risk-rating rules can be tailored to the specific project in the Plan
Risk Management process (Section 11.1). Evaluation of each risk’s importance and, hence, priority
for attention, is typically conducted using a look-up table or a probability and impact matrix (Figure
11-10). Such a matrix specifies combinations of probability and impact that lead to rating the risks
as low, moderate, or high priority. The dark gray area (with the largest numbers) represents high risk,
the medium gray area (with the smallest numbers) represents low risk, and the light gray area (with
in-between numbers) represents moderate risk.

     As illustrated in Figure 11-5, an organization can rate a risk separately for each objective
(e.g., cost, time, and scope). In addition, it can develop ways to determine one overall rating for each
risk. An overall project rating scheme can be developed to reflect the organization’s preference for
one objective over another and using those preferences to develop a weighting of the risks that are
assessed by objective. Finally, opportunities and threats can be handled in the same matrix using
definitions of the different levels of impact that are appropriate for each.
     The risk rating helps guide risk responses. For example, risks that have a negative impact on objectives
if they occur (threats), and that are in the high-risk (dark gray) zone of the matrix, may require priority
action and aggressive response strategies. Threats in the low-risk (medium gray) zone may not require
proactive management action beyond being placed on a watchlist or adding a contingency reserve.
     Similarly, opportunities in the high-risk (dark gray) zone that can be obtained most easily and offer
the greatest benefit should be targeted first. Opportunities in the low-risk (medium gray) zone should
be monitored. The values provided in Figure 11-10 are representative. The number of steps in the
scale is organizationally determined and organizationally dependent.'!

probabilityImpactMatrixNew
		^super new
			name: 'Probability Impact Matrix'; 
			description: self probabilityImpactMatrix;
			yourself.!

processAnalysis

	^'Process analysis follows the steps outlined in the process improvement plan to identify needed
improvements. This analysis also examines problems experienced, constraints experienced, and
non-value-added activities identified during process operation. Process analysis includes root cause
analysis—a specific technique to identify a problem, discover the underlying causes that lead to it,
and develop preventive actions.'!

processAnalysisNew
		^super new
			name: 'Process Analysis'; 
			description: self processAnalysis;
			yourself.!

procurementAudits

	^'A procurement audit is a structured review of the procurement process originating from the
Plan Procurements process (Section 12.1) through Administer Procurements (Section 12.3). The
objective of a procurement audit is to identify successes and failures that warrant recognition in the
preparation or administration of other procurement contracts on the project, or on other projects
within the performing organization.'!

procurementAuditsNew
		^super new
			name: 'Procurement Audits'; 
			description: self procurementAudits;
			yourself.!

procurementNegotiations

	^'Negotiations clarify the structure, requirements and other terms of the purchases so that mutual
agreement can be reached prior to signing the contract. Final contract language reflects all agreements
reached. Subjects covered should include responsibilities, authority to make changes, applicable terms
and governing law, technical, and business management approaches, proprietary rights, contract
financing, technical solutions, overall schedule, payments, and price. Negotiations conclude with a
contract document that can be executed by both buyer and seller.
    For complex procurement items, contract negotiation can be an independent process with inputs
(e.g., issues or an open items listing) and outputs (e.g., documented decisions) of its own. For simple
procurement items, the terms and conditions of the contract can be previously set and non-negotiable,
and only need to be accepted by the seller.
    The project manager may not be the lead negotiator on procurements. The project manager and
other members of the project management team may be present during negotiations to provide
assistance, and if needed to add clarification of the project’s technical, quality, and management
requirements.
'!

procurementNegotiationsNew
		^super new
			name: 'Procurement Negotiations'; 
			description: self procurementNegotiations;
			yourself.!

procurementPerformanceReviews

	^'A procurement performance review is a structured review of the seller’s progress to deliver project
scope and quality, within cost and on schedule, as compared to the contract. It can include a review of
seller-prepared documentation and buyer inspections, as well as quality audits conducted during seller’s
execution of the work. The objective of a performance review is to identify performance successes or
failures, progress with respect to the procurement statement of work, and contract non-compliance,
which allow the buyer to quantify the seller’s demonstrated ability or inability to perform work. Such
reviews may take place as a part of project status reviews which would include key suppliers.'!

procurementPerformanceReviewsNew
		^super new
			name: 'Procurement Performance Reviews'; 
			description: self procurementPerformanceReviews;
			yourself.!

productAnalysis

	^'For projects that have a product as a deliverable, as opposed to a service or result, product
analysis can be an effective tool. Each application area has one or more generally accepted methods
for translating high-level product descriptions into tangible deliverables. Product analysis includes
techniques such as product breakdown, systems analysis, requirements analysis, systems engineering,
value engineering, and value analysis.'!

productAnalysisNew
		^super new
			name: 'Product Analysis'; 
			description: self productAnalysis;
			yourself.!

projectManagementEstimatingSoftware

	^'Project management cost estimating software applications, computerized spreadsheets, simulation,
and statistical tools are becoming more widely accepted to assist with cost estimating. Such tools can
simplify the use of some cost estimating techniques and thereby facilitate rapid consideration of cost
estimate alternatives.'!

projectManagementEstimatingSoftwareNew
		^super new
			name: 'Project Management Estimating Software'; 
			description: self projectManagementEstimatingSoftware;
			yourself.!

projectManagementInformationSystem

	^'The project management information system, part of the enterprise environmental factors, provides
access to an automated tool, such as a scheduling software tool, a configuration management system,
an information collection and distribution system, or web interfaces to other online automated systems
used during the Direct and Manage Project Execution effort.'!

projectManagementInformationSystemNew
		^super new
			name: 'Project Management Information System'; 
			description: self projectManagementInformationSystem;
			yourself.!

projectManagementSoftware

	^'Project management software has the capability to help plan, organize, and manage resource
pools and develop resource estimates. Depending on the sophistication of the software, resource
breakdown structures, resource availability, resource rates and various resource calendars can be
defined to assist in optimizing resource utilization.'
!

projectManagementSoftwareNew
		^super new
			name: 'Project Management Software'; 
			description: self projectManagementSoftware;
			yourself.!

projectPerformanceAppraisals

	^'Objectives for conducting performance appraisals during the course of a project can include
clarification of roles and responsibilities, constructive feedback to team members, discovery of
unknown or unresolved issues, development of individual training plans, and the establishment of
specific goals for future time periods.
    The need for formal or informal project performance appraisals depends on the length of the
project, complexity of the project, organizational policy, labor contract requirements, and the amount
and quality of regular communication.'!

projectPerformanceAppraisalsNew
		^super new
			name: 'Project Performance Appraisals'; 
			description: self projectPerformanceAppraisals;
			yourself.!

proposalEvaluationTechniques

	^'On complex procurements, where source selection will be made based on seller responses to
previously defined weighted criteria, a formal evaluation review process will be defined by the buyer’s
procurement policies. The evaluation committee will make their selection for approval by management
prior to the award.'!

proposalEvaluationTechniquesNew
		^super new
			name: 'Proposal Evaluation Techniques'; 
			description: self proposalEvaluationTechniques;
			yourself.!

prototipos

	^'La elaboración de prototipos es un método para obtener una retroalimentación rápida respecto
de los requisitos, proporcionando un modelo operativo del producto esperado antes de
construirlo realmente. Puesto que los prototipos son tangibles, permiten a los interesados
experimentar con un modelo de su producto final, en lugar de sólo debatir en forma abstracta
sobre sus requisitos. Los prototipos sustentan el concepto de elaboración gradual debido a que
se usan en ciclos iterativos para la creación de maquetas o modelos, la experimentación por
parte del usuario, la generación de retroalimentación y la revisión del prototipo. Una vez que se
han efectuado los ciclos de retroalimentación necesarios, los requisitos obtenidos a partir del
prototipo están lo suficientemente completos para pasar a la fase de diseño o construcción.'!

prototypes

	^'Prototyping is a method of obtaining early feedback on requirements by providing a working model
of the expected product before actually building it. Since prototypes are tangible, it allows stakeholders
to experiment with a model of their final product rather than only discussing abstract representations
of their requirements. Prototypes support the concept of progressive elaboration because they are
used in iterative cycles of mock-up creation, user experimentation, feedback generation, and prototype
revision. When enough feedback cycles have been performed, the requirements obtained from the
prototype are sufficiently complete to move to a design or build phase.'!

prototypesNew
		^super new
			name: 'Prototypes'; 
			description: self prototypes;
			yourself.!

proyecciones
	^'Conforme avanza el proyecto y en función del desempeño del mismo, el equipo del proyecto
puede desarrollar una proyección de la estimación a la conclusión (EAC) que puede diferir del
presupuesto hasta la conclusión (BAC). Si resulta evidente que el BAC ya no es viable, el
director del proyecto debe proyectar una EAC. La proyección de una EAC implica hacer
estimaciones o predicciones de condiciones y eventos futuros para el proyecto, basadas en la
información y el conocimiento disponibles en el momento de realizar la proyección. Las
proyecciones se generan, se actualizan y se emiten nuevamente basándose en la información
sobre el desempeño del trabajo (Sección 4.3.3.2) suministrada conforme el proyecto se ejecuta.
La información sobre el desempeño del trabajo trata sobre el desempeño anterior del proyecto y
cualquier información que pudiera causar un impacto sobre el proyecto en el futuro.
Las EAC se basan normalmente en los costos reales en los que se ha incurrido para
completar el trabajo, más una estimación hasta la conclusión (ETC) para el trabajo restante.
Es responsabilidad del equipo del proyecto predecir las situaciones que pueden presentarse al
realizar la ETC, en función de su experiencia a la fecha. El método de la EVM funciona bien
junto con las proyecciones manuales de los costos requeridos según la EAC. El método más
común de proyección de la EAC es una suma ascendente manual, efectuada por el director
del proyecto y su equipo.
El método ascendente de EAC utilizado por el director del proyecto se basa en los costos
reales y la experiencia adquirida a partir del trabajo completado y requiere que se realice una
nueva estimación para el trabajo restante del proyecto. Este método puede ser problemático
en el sentido de que interfiere con la ejecución del trabajo del proyecto. El personal
encargado de la ejecución del trabajo del proyecto debe hacer una interrupción para
proporcionar una ETC ascendente detallada para el trabajo restante. Habitualmente, no existe
un presupuesto separado para realizar la ETC, por lo que se incurre en costos adicionales para
el proyecto. Ecuación: EAC = AC + ETC ascendente.
La EAC realizada manualmente por el director del proyecto puede compararse
rápidamente con varias EAC calculadas según diferentes escenarios de riesgo. Mientras que
los datos de la EVM pueden proporcionar rápidamente varias EAC estadísticas, a
continuación sólo se describen tres de las más comunes:
• Proyección de la EAC basada en el trabajo correspondiente a la ETC, realizado
según la proporción presupuestada. Este método de EAC toma en cuenta el desempeño
real del proyecto a la fecha (ya sea favorable o desfavorable), como lo representan los
costos reales, y prevé que el trabajo según la ETC se llevará a cabo de acuerdo con el
ratio presupuestado. Cuando el desempeño real es desfavorable, el supuesto de que el
desempeño futuro mejorará debe aceptarse únicamente cuando está sustentado por un
análisis de riesgo del proyecto. Ecuación: EAC = AC + BAC – EV.
• Proyección de la EAC basada en el trabajo correspondiente a la ETC, realizado
según el CPI actual. Este método supone que se espera que lo que el proyecto ha
experimentado a la fecha continúe en el futuro. Se supone que el trabajo correspondiente
a la ETC se realizará según el mismo índice del desempeño de costo (CPI) acumulativo
en el que el proyecto ha incurrido a la fecha. Ecuación: EAC = BAC / CPI acumulativo.
• Proyección de la EAC basada en el trabajo correspondiente a la ETC, realizado
considerando ambos factores (SPI y CPI). En esta proyección, el trabajo
correspondiente a la ETC se realizará según una proporción de eficiencia que toma en
cuenta tanto el índice del desempeño de costos como el índice de desempeño del
cronograma. Supone un desempeño de costos negativo a la fecha y la necesidad de que el
proyecto se comprometa firmemente a respetar el cronograma. Este método es tanto más
útil cuanto el cronograma del proyecto es un factor que afecta el esfuerzo de la ETC. Las
variaciones de este método miden el CPI y el SPI según diferentes valores (p.ej., 80/20,
50/50 o alguna otra proporción), de acuerdo con el juicio del director del proyecto.
Ecuación: AC + [(BAC – EV) / (CPI acumulativo x SPI acumulativo)].
Cada uno de estos métodos puede ser adecuado para cualquier proyecto dado y
proporcionará al equipo de dirección del proyecto una señal de “advertencia temprana?” si las
proyecciones para la EAC no están dentro de las tolerancias aceptables.'!

publicidad
	^'Las listas existentes de vendedores potenciales a menudo pueden ser ampliadas si se colocan
anuncios en publicaciones de amplia difusión, tales como periódicos selectos, o en
publicaciones profesionales especializadas. Algunas jurisdicciones gubernamentales requieren
la difusión pública de ciertos tipos de artículos para adquirir, mientras que la mayoría exige la
publicidad de los contratos gubernamentales pendientes.'!

publishedEstimatingData

	^'Several companies routinely publish updated production rates and unit costs of resources for
an extensive array of labor trades, material, and equipment for different countries and geographical
locations within countries.'!

publishedEstimatingDataNew
		^super new
			name: 'Published Estimating Data'; 
			description: self publishedEstimatingData;
			yourself.!

qualityAudits

	^'A quality audit is a structured, independent review to determine whether project activities comply with
organizational and project policies, processes, and procedures. The objectives of a quality audit are:
    • Identify all the good/best practices being implemented,
    • Identify all the gaps/shortcomings,
    • Share the good practices introduced or implemented in similar projects in the organization and/
       or industry,
    • Proactively offer assistance in a positive manner to improve implementation of processes to
       help the team raise productivity, and
    • Highlight contributions of each audit in the lessons learned repository of the organization.
    The subsequent effort to correct any deficiencies should result in a reduced cost of quality and an
increase in sponsor or customer acceptance of the project’s product. Quality audits may be scheduled
or random and may be conducted by internal or external auditors.
    Quality audits can confirm the implementation of approved change requests including corrective
actions, defect repairs, and preventive actions.'!

qualityAuditsNew
		^super new
			name: 'Quality Audits'; 
			description: self qualityAudits;
			yourself.!

qualityManagementMethodologies

	^'These include Six Sigma, Lean Six Sigma, Quality Function Deployment, CMMI®, etc. Many other
methodologies exist—this is not intended to be a recommended or complete list of examples.'
!

qualityManagementMethodologiesNew
		^super new
			name: 'Quality Management Methodologies'; 
			description: self qualityManagementMethodologies;
			yourself.!

quantitativeRiskAnalysisModelingTechniques

	^'Commonly used techniques include both event-oriented and project-oriented analysis
approaches including:
• Sensitivity analysis. Sensitivity analysis helps to determine which risks have the most
potential impact on the project. It examines the extent to which the uncertainty of each project
element affects the objective being examined when all other uncertain elements are held at
their baseline values. One typical display of sensitivity analysis is the tornado diagram, which
is useful for comparing relative importance and impact of variables that have a high degree of
uncertainty to those that are more stable.
• Expected monetary value analysis. Expected monetary value (EMV) analysis is a statistical
concept that calculates the average outcome when the future includes scenarios that may
or may not happen (i.e., analysis under uncertainty). The EMV of opportunities will generally
be expressed as positive values, while those of threats will be negative. EMV requires a risk-
neutral assumption, neither risk averse, nor risk seeking. EMV for a project is calculated by
multiplying the value of each possible outcome by its probability of occurrence and adding
the products together. A common use of this type of analysis is in decision tree analysis
(Figure 11-15).
• Modeling and simulation. A project simulation uses a model that translates the specified
  detailed uncertainties of the project into their potential impact on project objectives. Iterative
  simulations are typically performed using the Monte Carlo technique. In a simulation, the
  project model is computed many times (iterated), with the input values (e.g., cost estimates
  or activity durations) chosen at random for each iteration from the probability distributions
  of these variables. A probability distribution (e.g., total cost or completion date) is calculated
  from the iterations. For a cost risk analysis, a simulation uses cost estimates. For a schedule
  risk analysis, the schedule network diagram and duration estimates are used. The output
  from a cost risk simulation is shown in Figure 11-16. It illustrates the respective likelihood
  of achieving specific cost targets. Similar curves can be developed for schedule outcomes.'
!

quantitativeRiskAnalysisModelingTechniquesNew
		^super new
			name: 'Quantitative Risk Analysis Modeling Techniques'; 
			description: self quantitativeRiskAnalysisModelingTechniques;
			yourself.!

questionnairesAndSurveys

	^'Questionnaires and surveys are written sets of questions designed to quickly accumulate information
from a wide number of respondents. Questionnaires and/or surveys are most appropriate with broad
audiences, when quick turnaround is needed, and where statistical analysis is appropriate.'!

questionnairesAndSurveysNew
		^super new
			name: 'Questionnaires And Surveys'; 
			description: self questionnairesAndSurveys;
			yourself.!

recognitionRewards

	^'Part of the team development process involves recognizing and rewarding desirable behavior. The
original plans concerning ways in which to reward people are developed during the Develop Human
Resource Plan process. It is important to recognize that a particular reward given to any individual will
only be effective if it satisfies a need which is valued by that individual. Award decisions are made,
formally or informally, during the process of managing the project team through project performance
appraisals (Section 9.4.2.2). Cultural differences should be considered when determining recognition
and rewards. For example, developing appropriate team rewards in a culture that encourages
individualism can be difficult.
    Only desirable behavior should be rewarded. For example, the willingness to work overtime to meet
an aggressive schedule objective should be rewarded or recognized; needing to work overtime as the
result of poor planning by the team member should not be rewarded. However, the team members
should not be punished for poor planning and consistently unrealistic expectations imposed by senior
management. Win-lose (zero sum) rewards that only a limited number of project team members can
achieve, such as team member of the month, can hurt team cohesiveness. Rewarding behavior that
everyone can achieve, such as turning in progress reports on time, tends to increase support among
team members.
    People are motivated if they feel they are valued in the organization and this value is demonstrated
by the rewards given to them. Generally, money is viewed by most as a very tangible aspect of any
reward system, but other intangible rewards are also effective. Most project team members are
motivated by an opportunity to grow, accomplish, and apply their professional skills to meet new
challenges. Public recognition of good performance creates positive reinforcement. A good strategy for
project managers is to give the team all possible recognition during the life cycle of the project rather
than after the project is completed.'!

recognitionRewardsNew
		^super new
			name: 'Recognition Rewards'; 
			description: self recognitionRewards;
			yourself.!

reconocimientoRecompensas
	^'Parte del proceso de desarrollo del equipo implica reconocer y recompensar el comportamiento
deseable. Los planes originales relativos a las maneras de recompensar a las personas se
desarrollan durante el proceso Desarrollar el Plan de Recursos Humanos. Es importante
comprender que una recompensa particular otorgada a una persona sólo será eficaz si satisface
una necesidad importante para dicha persona. Las decisiones de otorgamiento de premios se
toman, de manera formal o informal, durante el proceso Dirigir el Equipo del Proyecto
mediante evaluaciones del desempeño del proyecto (Sección 9.4.2.2). Las diferencias culturales
deberían considerarse al determinar el reconocimiento y las recompensas. Por ejemplo, elaborar
recompensas colectivas apropiadas en una cultura que fomenta el individualismo puede resultar
difícil.
Sólo debe recompensarse el comportamiento deseable. Por ejemplo, debería
recompensarse o reconocerse la buena disposición para trabajar horas extra a fin de alcanzar
un objetivo ambicioso del cronograma; en cambio, si un miembro del equipo necesita trabajar
horas extra como resultado de una planificación deficiente, no debería ser recompensado. Sin
embargo, los miembros del equipo no deben ser castigados por causa de una planificación
deficiente y de expectativas que de manera sistemática son poco realistas, impuestas por los
directivos. Las recompensas de tipo ganar-perder (suma cero) a las que sólo una cantidad
limitada de miembros del equipo del proyecto puede acceder, tales como el miembro del
equipo del mes, pueden perjudicar la cohesión del equipo. Recompensar comportamientos
que todos pueden lograr, como por ejemplo presentar puntualmente los informes de avance,
tiende a aumentar el respaldo entre los miembros del equipo.
Las personas están motivadas cuando se sienten valoradas dentro de la organización, y
esta valoración se demuestra mediante las recompensas que reciben. En general, el dinero es
para la mayoría un aspecto muy tangible dentro de cualquier sistema de recompensas, pero
otras recompensas intangibles también resultan eficaces. La mayoría de los miembros del
equipo del proyecto se motivan ante la oportunidad de progresar, lograr y aplicar sus
habilidades profesionales para hacer frente a nuevos desafíos. El reconocimiento público del
buen desempeño crea un refuerzo positivo. Una buena estrategia para los directores del
proyecto consiste en otorgar al equipo todo el reconocimiento posible durante el ciclo de vida
del proyecto, en vez de hacerlo una vez finalizado el proyecto.'!

recordsManagementSystem

	^'A records management system is used by the project manager to manage contract and procurement
documentation and records. It consists of a specific set of processes, related control functions,
and automation tools that are consolidated and combined as part of the project management
information system (Section 4.3.2.2). The system contains a retrievable archive of contract documents
and correspondence.'!

recordsManagementSystemNew
		^super new
			name: 'Records Management System'; 
			description: self recordsManagementSystem;
			yourself.!

reevaluacionRiesgos
	^'Monitorear y Controlar los Riesgos a menudo trae como resultado la identificación de nuevos
riesgos, la reevaluación de los riesgos actuales y el cierre de riesgos obsoletos. Deben
programarse periódicamente reevaluaciones de los riesgos del proyecto. La cantidad y el nivel
de detalle de las repeticiones que corresponda hacer dependerán de la manera en que el
proyecto avanza con relación a sus objetivos.'!

registroAsuntos
	^'Los asuntos surgen durante la dirección del equipo del proyecto. Un registro escrito documenta
y ayuda a monitorear quién es responsable de la resolución de los asuntos específicos antes de
una fecha límite. La resolución de problemas aborda los obstáculos que pueden impedir al
equipo alcanzar sus objetivos.'!

reglasBasicas
	^'Las reglas básicas establecen expectativas claras acerca del comportamiento aceptable por parte
de los miembros del equipo del proyecto. El compromiso con pautas claras desde el comienzo reduce los malentendidos y aumenta la productividad. Discutir las reglas básicas permite a los
miembros del equipo descubrir valores que son importantes para unos y otros. Todos los
miembros del equipo del proyecto comparten la responsabilidad de implementar estas reglas
una vez que han sido fijadas.'!

relacionesHistoricas

	^'Cualquier relación histórica que dé como resultado estimaciones paramétricas o análogas
implica el uso de características (parámetros) del proyecto para desarrollar modelos
matemáticos que permitan predecir los costos totales del proyecto. Estos modelos pueden ser
simples (p.ej., la construcción de una vivienda residencial costará una cierta cantidad por metro
cuadrado de espacio útil) o complejas (p.ej., un modelo de costo de desarrollo de software
utiliza varios factores de ajuste separados, donde cada uno de estos factores comporta
numerosos criterios).
Tanto el costo como la exactitud de los modelos análogos y paramétricos pueden variar
ampliamente. Es más probable que sean confiables cuando:
• la información histórica utilizada para desarrollar el modelo es exacta
• los parámetros utilizados en el modelo son fácilmente cuantificables
• los modelos son escalables, de modo que funcionan tanto para un proyecto grande como
para uno pequeño, y para las fases de un proyecto'!

reportingSystems

	^'A reporting system provides a standard tool for the project manager to capture, store, and distribute
information to stakeholders about the project cost, schedule progress, and performance. Software
packages allow the project manager to consolidate reports from several systems and facilitate
report distribution to the project stakeholders. Examples of distribution formats may include table
reporting, spreadsheet analysis, and presentations. Graphic capabilities can be used to create visual
representations of project performance information.'!

reportingSystemsNew
		^super new
			name: 'Reporting Systems'; 
			description: self reportingSystems;
			yourself.!

reserveAnalysis

	^'Duration estimates may include contingency reserves, (sometimes referred to as time reserves or
buffers) into the overall project schedule to account for schedule uncertainty. The contingency reserve
may be a percentage of the estimated activity duration, a fixed number of work periods, or may be
developed by using quantitative analysis methods.
   As more precise information about the project becomes available, the contingency reserve may be
used, reduced, or eliminated. Contingency should be clearly identified in schedule documentation.'!

reserveAnalysisNew
		^super new
			name: 'Reserve Analysis'; 
			description: self reserveAnalysis;
			yourself.!

resourceLeveling

	^'Resource leveling is a schedule network analysis technique applied to a schedule that has already
been analyzed by the critical path method. Resource leveling can be used when shared or critical
required resources are only available at certain times, are only available in limited quantities, or to
keep resource usage at a constant level. Resource leveling is necessary when resources have been
over-allocated, such as when a resource has been assigned to two or more activities during the same
time period, when shared or critical required resources are only available at certain times or are only
available in limited quantities. Resource leveling can often cause the original critical path to change.'!

resourceLevelingNew
		^super new
			name: 'Resource Leveling'; 
			description: self resourceLeveling;
			yourself.!

reubicacion
	^'La reubicación implica colocar a varios o a todos los miembros del equipo del proyecto más
activos en la misma ubicación física para mejorar su capacidad de trabajar en equipo. La
reubicación puede ser temporal, como por ejemplo en ocasiones de importancia estratégica
durante el proyecto, o a lo largo de todo el proyecto. Las estrategias de reubicación incluyen
una sala de reuniones para el equipo, lugares para publicar cronogramas y otras comodidades
que mejoran la comunicación y fomentan un sentido de comunidad. Si bien la reubicación se
considera una buena estrategia, el uso de equipos virtuales a veces resulta inevitable.'!

reunionesControlCambios
	^'Un comité de control de cambios es responsable de reunirse y revisar la solicitudes de cambio,
y de aprobar o rechazar dichas solicitudes. Los roles y responsabilidades de estos comités están
claramente definidos y son acordados por los interesados apropiados. Todas las decisiones del
comité de control de cambios se documentan y se comunican a los interesados para su
información y la implementación de acciones de seguimiento.'!

reunionesPlanificacionAnalisis
	^'Los equipos del proyecto celebran reuniones de planificación para desarrollar el plan de gestión
de riesgos. Los participantes de estas reuniones pueden ser, entre otros, el director del proyecto,
miembros del equipo del proyecto e interesados seleccionados, cualquier persona de la
organización con la responsabilidad de gestionar la planificación y ejecución de actividades
relacionadas con los riesgos, así como otras personas, según sea necesario.
En estas reuniones, se definen los planes a alto nivel para efectuar las actividades de
gestión de riesgos. Se desarrollarán los elementos de costo de la gestión de riesgos y las
actividades del cronograma, para incluirlos en el presupuesto y el cronograma del proyecto,
respectivamente. Se establecerán o se revisarán las metodologías para la aplicación de las
reservas para contingencias en materia de riesgos. Se asignarán las responsabilidades de
gestión de riesgos. Se adaptarán para su uso en el proyecto específico las plantillas generales
de la organización para las categorías de riesgo y las definiciones de términos, tales como los
niveles de riesgo, la probabilidad por tipo de riesgo, el impacto por tipo de objetivo y la
matriz de probabilidad e impacto. Si no existen plantillas para otras etapas del proceso,
podrán generarse durante estas reuniones. Las salidas de estas actividades se resumirán en el
plan de gestión de riesgos.'!

reunionesSobreEstadoProyecto
	^'La gestión de los riesgos del proyecto debe ser un punto del orden del día en las reuniones
periódicas sobre el estado del proyecto. El tiempo requerido para tratar este asunto variará
dependiendo de los riesgos que se hayan identificado, de su prioridad y dificultad de respuesta.
La gestión de riesgos se vuelve más sencilla conforme se practica más a menudo. Los debates
frecuentes sobre los riesgos aumentan las posibilidades de que las personas identifiquen los
riesgos y las oportunidades.'!

revisionesDesempeno
	^'Las revisiones del desempeño comparan el desempeño del costo a lo largo del tiempo, las
actividades del cronograma o los paquetes de trabajo que exceden el presupuesto o que
están por debajo de éste, y los fondos estimados para completar el trabajo en ejecución. Si
se utiliza la EVM, se puede determinar la siguiente información:
• Análisis de variación. El análisis de variación utilizado en la EVM compara el
desempeño real del proyecto con respecto al desempeño planificado o esperado. Las
variaciones que se analizan más frecuentemente son las relativas al costo y al
cronograma.
• Análisis de tendencias. El análisis de tendencias analiza el desempeño del proyecto a lo
largo del tiempo para determinar si está mejorando o se está deteriorando. Las técnicas de
análisis gráfico son valiosas pues permiten comprender el desempeño a la fecha y
compararlo con las metas de desempeño futuras, en forma de BAC con respecto a la EAC
y de fechas de finalización.
• Desempeño del valor ganado. La gestión del valor ganado compara la línea base del
plan con respecto al desempeño real del cronograma y del costo.
----------------------------------------------------
Las revisiones del desempeño permiten medir, comparar y analizar el desempeño del
cronograma, en aspectos como las fechas reales de inicio y finalización, el porcentaje
completado y la duración restante para el trabajo en ejecución. Si se utiliza la gestión del valor
ganado, se usan la variación del cronograma (SV) (Sección 7.3.2.1) y el índice de desempeño
del cronograma (SPI) (Sección 7.3.2.3) para evaluar la magnitud de las variaciones del
cronograma. Una parte importante del control del cronograma es decidir si la variación del
cronograma requiere acciones correctivas. Por ejemplo, un retraso importante en una actividad
que está fuera de la ruta crítica puede tener un efecto mínimo en el cronograma total del
proyecto, mientras que un retraso menor en una actividad crítica o casi crítica puede requerir
una acción inmediata.
Si se usa el método de planificación de la cadena crítica (Sección 6.5.2.3), la comparación
entre la cantidad de colchón restante y la cantidad de colchón necesario para proteger la
entrega de datos puede ayudar a determinar el estado del cronograma. La diferencia entre el
colchón requerido y el colchón restante puede determinar si es apropiado implementar una
acción correctiva.'!

revisionesDesempenoAdquisiciones
	^'La revisión del desempeño de las adquisiciones es una revisión estructurada del avance del
vendedor para cumplir con el alcance y la calidad del proyecto, dentro del costo y en el plazo
acordado, tomando el contrato como referencia. Puede incluir una revisión de la documentación
elaborada por el vendedor y las inspecciones por parte del comprador, así como auditorías de
calidad realizadas durante la ejecución del trabajo por parte del vendedor. El objetivo de una
revisión del desempeño es identificar los éxitos o fracasos en cuanto al desempeño, el avance
con respecto al enunciado del trabajo relativo a adquisiciones y el incumplimiento del contrato,
lo cual permite al comprador cuantificar la capacidad o incapacidad demostrada por el
vendedor para realizar el trabajo. Dichas revisiones pueden tener lugar como parte de las
revisiones del estado del proyecto que podrían incluir a proveedores clave.'!

revisionesDocumentacion
	^'Puede efectuarse una revisión estructurada de la documentación del proyecto, incluyendo los
planes, los supuestos, los archivos de proyectos anteriores, los contratos y otra información. La
calidad de los planes, así como la consistencia entre dichos planes y los requisitos y supuestos
del proyecto, pueden ser indicadores de riesgo en el proyecto.'!

riskAudits

	^'Risk audits examine and document the effectiveness of risk responses in dealing with identified
risks and their root causes, as well as the effectiveness of the risk management process. The project
manager is responsible for ensuring that risk audits are performed at an appropriate frequency, as
defined in the project’s risk management plan. Risk audits may be included during routine project
review meetings, or separate risk audit meetings may be held. The format for the audit and its
objectives should be clearly defined before the audit is conducted.'!

riskAuditsNew
		^super new
			name: 'Risk Audits'; 
			description: self riskAudits;
			yourself.!

riskCategorization

	^'Risks to the project can be categorized by sources of risk (e.g., using the RBS), the area of the
project affected (e.g., using the WBS), or other useful category (e.g., project phase) to determine areas
of the project most exposed to the effects of uncertainty. Grouping risks by common root causes can
lead to developing effective risk responses.'!

riskCategorizationNew
		^super new
			name: 'Risk Categorization'; 
			description: self riskCategorization;
			yourself.!

riskDataQualityAssessment

	^'A qualitative risk analysis requires accurate and unbiased data if it is to be credible. Analysis of the
quality of risk data is a technique to evaluate the degree to which the data about risks are useful for
risk management. It involves examining the degree to which the risk is understood and the accuracy,
quality, reliability, and integrity of the data regarding the risk. If data quality is unacceptable, it may be
necessary to gather higher-quality data.'!

riskDataQualityAssessmentNew
		^super new
			name: 'Risk Data Quality Assessment'; 
			description: self riskDataQualityAssessment;
			yourself.!

riskProbabilityImpactAssessment

	^'Risk probability assessment investigates the likelihood that each specific risk will occur. Risk impact
assessment investigates the potential effect on a project objective such as schedule, cost, quality, or
performance, including both negative effects for threats and positive effects for opportunities.
    Probability and impact are assessed for each identified risk. Risks can be assessed in interviews or
meetings with participants selected for their familiarity with the risk categories on the agenda. Project
team members and, perhaps, knowledgeable persons from outside the project, are included.
    The level of probability for each risk and its impact on each objective is evaluated during the
interview or meeting. Explanatory detail, including assumptions justifying the levels assigned, is
also recorded. Risk probabilities and impacts are rated according to the definitions given in the risk
management plan (Section 11.1.3.1). Risks with low ratings of probability and impact will be included
on a watchlist for future monitoring.'!

riskProbabilityImpactAssessmentNew
		^super new
			name: 'Risk Probability Impact Assessment'; 
			description: self riskProbabilityImpactAssessment;
			yourself.!

riskReassessment

	^'Monitor and Control Risks often results in identification of new risks, reassessment of current risks,
and the closing of risks that are outdated. Project risk reassessments should be regularly scheduled.
The amount and detail of repetition that is appropriate depends on how the project progresses relative
to its objectives.'!

riskReassessmentNew
		^super new
			name: 'Risk Reassessment'; 
			description: self riskReassessment;
			yourself.!

riskUrgencyAssessment

	^'Risks requiring near-term responses may be considered more urgent to address. Indicators of
priority can include time to affect a risk response, symptoms and warning signs, and the risk rating.
In some qualitative analyses the assessment of risk urgency can be combined with the risk ranking
determined from the probability and impact matrix to give a final risk severity rating.'!

riskUrgencyAssessmentNew
		^super new
			name: 'Risk Urgency Assessment'; 
			description: self riskUrgencyAssessment;
			yourself.!

rollingWavePlanning

	^'Rolling wave planning is a form of progressive elaboration planning where the work to be accomplished
in the near term is planned in detail and future work is planned at a higher level of the WBS. Therefore,
work can exist at various levels of detail depending on where it is in the project life cycle. For example,
during early strategic planning, when information is less defined, work packages may be decomposed to
the milestone level. As more is known about the upcoming events in the near term it can be decomposed
into activities.'!

rollingWavePlanningNew
		^super new
			name: 'Rolling Wave Planning'; 
			description: self rollingWavePlanning;
			yourself.!

runChart

	^'Similar to a control chart without displayed limits, a run chart shows the history and pattern of
variation. A run chart is a line graph that shows data points plotted in the order in which they occur.
Run charts show trends in a process over time, variation over time, or declines or improvements in a
process over time. Trend analysis is performed using run charts and involves mathematical techniques
to forecast future outcomes based on historical results. Trend analysis is often used to monitor:
• Technical performance. How many errors or defects have been identified, and how many
  remain uncorrected?
• Cost and schedule performance. How many activities per period were completed with
  significant variances?'!

runChartNew
		^super new
			name: 'Run Chart'; 
			description: self runChart;
			yourself.!

scatterDiagram

	^'A scatter diagram (Figure 8-16) shows the relationship between two variables. This tool allows
the quality team to study and identify the possible relationship between changes observed in two
variables. Dependent variables versus independent variables are plotted. The closer the points are
to a diagonal line, the more closely they are related. Figure 8-16 shows the correlation between the
timecard submission date and the number of days traveling per month.'!

scatterDiagramNew
		^super new
			name: 'Scatter Diagram'; 
			description: self scatterDiagram;
			yourself.!

scheduleCompression

	^'Schedule compression shortens the project schedule without changing the project scope, to
meet schedule constraints, imposed dates, or other schedule objectives. Schedule compression
techniques include:
   • Crashing. A schedule compression technique in which cost and schedule tradeoffs are analyzed
      to determine how to obtain the greatest amount of compression for the least incremental cost.
      Examples of crashing could include approving overtime, bringing in additional resources, or
      paying to expedite delivery to activities on the critical path. Crashing only works for activities
      where additional resources will shorten the duration. Crashing does not always produce a viable
      alternative and may result in increased risk and/or cost.
   • Fast tracking. A schedule compression technique in which phases or activities normally
      performed in sequence are performed in parallel. An example is constructing the foundation
      for a building before completing all of the architectural drawings. Fast tracking may result in
      rework and increased risk. Fast tracking only works if activities can be overlapped to shorten
     the duration.'!

scheduleCompressionNew
		^super new
			name: 'Schedule Compression'; 
			description: self scheduleCompression;
			yourself.!

scheduleNetworkAnalysis

	^'Schedule network analysis is a technique that generates the project schedule. It employs various
analytical techniques, such as critical path method, critical chain method, what-if analysis, and
resource leveling to calculate the early and late start and finish dates for the uncompleted portions of
project activities. Some network paths may have points of path convergence or path divergence that
can be identified and used in schedule compression analysis or other analyses.'!

scheduleNetworkAnalysisNew
		^super new
			name: 'Schedule Network Analysis'; 
			description: self scheduleNetworkAnalysis;
			yourself.!

scheduleNetworkTemplates

	^'Standardized schedule network diagram templates can be used to expedite the preparation of
networks of project activities. They can include an entire project or only a portion of it. Portions of a project
schedule network diagram are often referred to as a subnetwork or a fragment network. Subnetwork
templates are especially useful when a project includes several identical or nearly identical deliverables,
such as floors on a high-rise office building, clinical trials on a pharmaceutical research project, coding
program modules on a software project, or the start-up phase of a development project.'!

scheduleNetworkTemplatesNew
		^super new
			name: 'Schedule Network Templates'; 
			description: self scheduleNetworkTemplates;
			yourself.!

schedulingTool

	^'Automated scheduling tools expedite the scheduling process by generating start and finish dates based
on the inputs of activities, network diagrams, resources and activity durations. A scheduling tool can be
used in conjunction with other project management software applications as well as manual methods.'!

schedulingToolNew
		^super new
			name: 'Scheduling Tool'; 
			description: self schedulingTool;
			yourself.!

sistemaControlCambiosContrato
	^'Un sistema de control de cambios del contrato define el proceso por el cual la adquisición
puede ser modificada. Incluye los formularios, los sistemas de rastreo, los procedimientos de
resolución de disputas y los niveles de aprobación necesarios para autorizar los cambios. El
sistema de control de cambios del contrato está integrado con el sistema de control integrado de
cambios.'!

sistemaGestionRegistros
	^'Un sistema de gestión de registros es utilizado por el director del proyecto para gestionar la
documentación y los registros del contrato y de las adquisiciones. Está compuesto por un
conjunto específico de procesos, funciones de control relacionadas y herramientas de
automatización que se consolidan y combinan en un todo, como parte del sistema de
información de la dirección del proyecto (Sección 4.3.2.2). El sistema contiene un registro
recuperable de los documentos contractuales y de la correspondencia.'!

sistemaInformacionDireccionProyectos
	^'El sistema de información para la dirección de proyectos (PMIS), que forma parte de los
factores ambientales de la empresa, proporciona acceso a una herramienta automática, tal como
una herramienta de software para definir cronogramas, un sistema de gestión de la
configuración, un sistema de recopilación y distribución de la información o interfaces de red a
otros sistemas automáticos en línea, utilizados durante el esfuerzo de Dirigir y Gestionar la
Ejecución del Proyecto.'!

sistemasInformes
	^'Un sistema de informes suministra una herramienta estándar para que el director del proyecto
registre, almacene y distribuya a los interesados información relativa a los costos, al avance del
cronograma y al desempeño del proyecto. Los paquetes de software permiten al director del
proyecto consolidar informes provenientes de varios sistemas y facilitan la distribución de
informes a los interesados en el proyecto. Entre los ejemplos de formatos de distribución, se
encuentran los informes mediante cuadros, el análisis en hoja de cálculo y las presentaciones.
Las herramientas gráficas pueden utilizarse para crear representaciones visuales de información
sobre el desempeño del proyecto.'!

sistemasPago
	^'Por lo general, los pagos al vendedor son procesados por el sistema de cuentas por pagar del
comprador luego de que una persona autorizada del equipo del proyecto certifique que el
trabajo es satisfactorio. Todos los pagos deben ser efectuados y documentados en estricta
observancia de los términos del contrato.'!

softwareEstimacionCostosDireccionProyectos
	^'Las aplicaciones de software de estimación de costos, las hojas de cálculo computarizadas, y
las herramientas de simulación y estadísticas son cada vez más utilizadas para asistir en el
proceso de estimación de costos. Estas herramientas pueden simplificar el uso de algunas de las
técnicas de estimación de costos y, de esta manera, facilitar la consideración rápida de las
alternativas para la estimación de costos.'!

softwareGestionProyectos

	^'El software de gestión de proyectos tiene la capacidad de ayudar a planificar, organizar y
gestionar los grupos de recursos, y de desarrollar estimados de los mismos. En función de la
complejidad del software, pueden definirse las estructuras de desglose de recursos, su
disponibilidad y sus costos, así como diversos calendarios, para ayudar en la optimización del
uso de recursos.
--------------------------------------------------------------------------------------------------
El software de gestión de proyectos para la elaboración de cronogramas permite hacer un
seguimiento de las fechas planificadas en comparación con las fechas reales, y de proyectar los
efectos de los cambios al cronograma del proyecto.
--------------------------------------------------------------------------------------------------
A menudo se utiliza el software de gestión de proyectos para monitorear las tres dimensiones
de la gestión del valor ganado, EVM (PV, EV y AC) para representar gráficamente tendencias
y proyectar un rango de resultados finales posibles para el proyecto.
'!

stakeholderAnalysis

	^'Stakeholder analysis is a technique of systematically gathering and analyzing quantitative and
qualitative information to determine whose interests should be taken into account throughout the project.
It identifies the interests, expectations, and influence of the stakeholders and relates them to the purpose
of the project. It also helps identify stakeholder relationships that can be leveraged to build coalitions and
potential partnerships to enhance the project’s chance of success.
     Stakeholder analysis generally follows the steps described below:
• Step 1: Identify all potential project stakeholders and relevant information, such as their roles,
   departments, interests, knowledge levels, expectations, and influence levels. Key stakeholders
   are usually easy to identify. They include anyone in a decision-making or management role
   who is impacted by the project outcome, such as the sponsor, the project manager, and the
   primary customer.
    ? Identifying other stakeholders is usually done by interviewing identified stakeholders and
        expanding the list until all potential stakeholders are included.
• Step 2: Identify the potential impact or support each stakeholder could generate, and classify
    them so as to define an approach strategy. In large stakeholder communities, it is important
    to prioritize the key stakeholders to ensure the efficient use of effort to communicate and
    manage their expectations. There are multiple classification models available including, but
    not limited to:
    ? Power/interest grid, grouping the stakeholders based on their level of authority (“power”)
        and their level or concern (“interest”) regarding the project outcomes;
    ? Power/influence grid, grouping the stakeholders based on their level of authority (“power”)
        and their active involvement (“influence”) in the project;
    ? Influence/impact grid, grouping the stakeholders based on their active involvement
        (“influence”) in the project and their ability to effect changes to the project’s planning
        or execution (“impact”); and
    ? Salience model, describing classes of stakeholders based on their power (ability to impose
        their will), urgency (need for immediate attention), and legitimacy (their involvement is
        appropriate).
    Figure 10-4 presents an example of a power/interest grid with A-H representing the placement
of generic stakeholders.
• Step 3: Assess how key stakeholders are likely to react or respond in various situations, in order
  to plan how to influence them to enhance their support and mitigate potential negative impacts.'
!

stakeholderAnalysisNew
		^super new
			name: 'Stakeholder Analysis'; 
			description: self stakeholderAnalysis;
			yourself.!

statisticalSampling

	^'Statistical sampling involves choosing part of a population of interest for inspection (for example,
selecting ten engineering drawings at random from a list of seventy-five). Sample frequency and sizes
should be determined during the Plan Quality process so the cost of quality will include the number
of tests, expected scrap, etc.
    There is a substantial body of knowledge on statistical sampling. In some application areas it may
be necessary for the project management team to be familiar with a variety of sampling techniques
to assure the sample selected actually represents the population of interest.'
!

statisticalSamplingNew
		^super new
			name: 'Statistical Sampling'; 
			description: self statisticalSampling;
			yourself.!

statusMeetings

	^'Project risk management should be an agenda item at periodic status meetings. The amount of
time required for that item will vary, depending upon the risks that have been identified, their priority,
and difficulty of response. Risk management becomes easier the more often it is practiced. Frequent
discussions about risk makes it more likely that people will identify risks and opportunities.'!

statusMeetingsNew
		^super new
			name: 'Status Meetings'; 
			description: self statusMeetings;
			yourself.!

strategiesForNegativeRisksThreats

	^'Three of the following strategies typically deal with threats or risks that may have negative impacts
on project objectives if they occur. The fourth strategy, accept, can be used for negative risks or threats
as well as positive risks or opportunities. These strategies, described below, are to avoid, transfer,
mitigate, or accept.
• Avoid. Risk avoidance involves changing the project management plan to eliminate the threat
  entirely. The project manager may also isolate the project objectives from the risk’s impact
  or change the objective that is in jeopardy. Examples of this include extending the schedule,
  changing the strategy, or reducing scope. The most radical avoidance strategy is to shut down
  the project entirely. Some risks that arise early in the project can be avoided by clarifying
  requirements, obtaining information, improving communication, or acquiring expertise.
• Transfer. Risk transfer requires shifting some or all of the negative impact of a threat, along
  with ownership of the response, to a third party. Transferring the risk simply gives another
  party responsibility for its management—it does not eliminate it. Transferring liability for risk is
  most effective in dealing with financial risk exposure. Risk transference nearly always involves
  payment of a risk premium to the party taking on the risk. Transference tools can be quite
  diverse and include, but are not limited to, the use of insurance, performance bonds, warranties,
  guarantees, etc. Contracts may be used to transfer liability for specified risks to another party.
  For example, when a buyer has capabilities that the seller does not possess, it may be prudent
  to transfer some work and its concurrent risk contractually back to the buyer. In many cases,
  use of a cost-plus contract may transfer the cost risk to the buyer, while a fixed-price contract
  may transfer risk to the seller.
• Mitigate. Risk mitigation implies a reduction in the probability and/or impact of an adverse
  risk event to be within acceptable threshold limits. Taking early action to reduce the probability
  and/or impact of a risk occurring on the project is often more effective than trying to repair the
  damage after the risk has occurred. Adopting less complex processes, conducting more tests,
  or choosing a more stable supplier are examples of mitigation actions. Mitigation may require
  prototype development to reduce the risk of scaling up from a bench-scale model of a process
  or product. Where it is not possible to reduce probability, a mitigation response might address
  the risk impact by targeting linkages that determine the severity. For example, designing
  redundancy into a system may reduce the impact from a failure of the original component.
• Accept. This strategy is adopted because it is seldom possible to eliminate all threats from
  a project. This strategy indicates that the project team has decided not to change the project
  management plan to deal with a risk, or is unable to identify any other suitable response strategy.
  This strategy can be either passive or active. Passive acceptance requires no action except to
  document the strategy, leaving the project team to deal with the risks as they occur. The most
  common active acceptance strategy is to establish a contingency reserve, including amounts of
  time, money, or resources to handle the risks.'!

strategiesForNegativeRisksThreatsNew
		^super new
			name: 'Strategies For Negative Risks Threats'; 
			description: self strategiesForNegativeRisksThreats;
			yourself.!

strategiesForPositiveRisksOpportunities

	^'Three of the four responses are suggested to deal with risks with potentially positive impacts on
project objectives. The fourth strategy, accept, can be used for negative risks or threats as well as positive
risks or opportunities. These strategies, described below, are to exploit, share, enhance, or accept.
• Exploit. This strategy may be selected for risks with positive impacts where the organization
  wishes to ensure that the opportunity is realized. This strategy seeks to eliminate the uncertainty
  associated with a particular upside risk by ensuring the opportunity definitely happens. Examples
  of directly exploiting responses include assigning an organization’s most talented resources to
  the project to reduce the time to completion or to provide lower cost than originally planned.
• Share. Sharing a positive risk involves allocating some or all of the ownership of the opportunity
  to a third party who is best able to capture the opportunity for the benefit of the project.
  Examples of sharing actions include forming risk-sharing partnerships, teams, special-purpose
  companies, or joint ventures, which can be established with the express purpose of taking
  advantage of the opportunity so that all parties gain from their actions.
• Enhance. This strategy is used to increase the probability and/or the positive impacts of an
  opportunity. Identifying and maximizing key drivers of these positive-impact risks may increase
  the probability of their occurrence. Examples of enhancing opportunities include adding more
  resources to an activity to finish early.
• Accept. Accepting an opportunity is being willing to take advantage of it if it comes along, but
  not actively pursuing it.'
!

strategiesForPositiveRisksOpportunitiesNew
		^super new
			name: 'Strategies For Positive Risks Opportunities'; 
			description: self strategiesForPositiveRisksOpportunities;
			yourself.!

sumaCostos

	^'Las estimaciones de costos se suman por paquetes de trabajo, de acuerdo con la EDT. Las
estimaciones de costos de los paquetes de trabajo luego se suman para los niveles superiores de
componentes de la EDT, tales como las cuentas de control, y finalmente para todo el proyecto.'!

swtoAnalysis

	^'This technique examines the project from each of the SWOT (strengths, weaknesses, opportunities,
and threats) perspectives to increase the breadth of identified risks by including internally generated
risks. The technique starts with identification of strengths and weaknesses of the organization,
focusing on either the project organization or the wider business. These factors are often identified
using brainstorming. SWOT analysis then identifies any opportunities for the project that arise from
organizational strengths, and any threats arising from organizational weaknesses. SWOT analysis also
examines the degree to which organizational strengths offset threats and opportunities that may serve
to overcome weaknesses.'!

swtoAnalysisNew
		^super new
			name: 'Swto Analysis'; 
			description: self swtoAnalysis;
			yourself.!

talleresFacilitados

	^'Los talleres orientados hacia los requisitos son sesiones en donde se reúne a los interesados
inter-funcionales clave para definir los requisitos del producto. Estos talleres se consideran una
técnica primordial para definir rápidamente los requisitos de funcionalidad compartida y
conciliar las diferencias entre los interesados. Debido a su naturaleza interactiva, los talleres
facilitados, bien dirigidos pueden desarrollar la confianza, fomentar las relaciones, y mejorar la
comunicación entre los participantes, lo que puede llevar a un mayor consenso entre los
interesados. Otro beneficio de esta técnica es que los problemas pueden identificarse y
resolverse más rápidamente que en sesiones individuales.
Por ejemplo, los talleres facilitados conocidos como sesiones conjuntas de desarrollo (o
diseño) de aplicaciones (JAD, Joint Application Development) se utilizan en la industria de
desarrollo de software. Estas sesiones dirigidas se enfocan en reunir a los usuarios y al equipo
de desarrollo para mejorar el proceso de desarrollo de software. En la industria
manufacturera, el Despliegue de Funciones de Calidad (QFD, Quality Function Deployment)
es un ejemplo de otra técnica de talleres facilitados que ayuda a determinar las características
esenciales para el desarrollo de nuevos productos. El QFD comienza por la recopilación de
las necesidades del cliente, lo que también se conoce como la opinión del cliente (VOC,
Voice of the
Customer). Estas necesidades se clasifican y se ordenan por prioridad, y se establecen
objetivos que permitan cumplir con ellas.'!

teamBuildingActivities

	^'Team-building activities can vary from a five-minute agenda item in a status review meeting to
an off-site, professionally facilitated experience designed to improve interpersonal relationships. The
objective of team-building activities is to help individual team members work together effectively.
Team-building strategies are particularly valuable when team members operate from remote locations
without the benefit of face-to-face contact. Informal communication and activities can help in building
trust and establishing good working relationships.
    One of the most important skills in developing a team environment involves handling project
team problems and discussing these as team issues. The entire team should be encouraged to work
collaboratively to resolve these issues. To build effective project teams, project managers should obtain
top management support, obtain commitment of team members, introduce appropriate rewards and
recognition, create a team identity, manage conflicts effectively, promote trust and open communication
among team members, and, above all, provide good team leadership.
   As an ongoing process, team building is crucial to project success. While team building is essential
during the front end of a project, it is a never-ending process. Changes in a project environment are
inevitable, and to manage them effectively, a continued or a renewed team-building effort should
be applied. The project manager should continually monitor team functioning and performance to
determine if any actions are needed to prevent or correct various team problems.
   One theory states that there are five stages of development that teams may go through. Usually
these stages occur in order. However, it’s not uncommon for a team to get stuck in a particular stage
or slip to an earlier stage. Also, projects with team members who have worked together in the past
could skip a stage.
   • Forming. This phase is where the team meets and learns about the project and what their
       formal roles and responsibilities are. Team members tend to be independent and not as open in
       this phase. For more information, refer to the Tuckman ladder of team development [6].
   • Storming. During this phase, the team begins to address the project work, technical decisions,
       and the project management approach. If team members are not collaborative and open to
       differing ideas and perspectives the environment can become destructive.
   • Norming. In the norming phase, team members begin to work together and adjust work habits
       and behaviors that support the team. The team begins to trust each other.
   • Performing. Teams that reach the performing stage function as a well-organized unit. They are
       interdependent and work through issues smoothly and effectively.
   • Adjourning. In the adjourning phase, the team completes the work and moves on from
       the project.
    The duration of a particular stage depends upon team dynamics, team size, and team leadership.
Project managers should have a good understanding of team dynamics in order to move their team
members through all stages in an effective manner.'!

teamBuildingActivitiesNew
		^super new
			name: 'Team Building Activities'; 
			description: self teamBuildingActivities;
			yourself.!

technicalPerformanceMeasurement

	^'Technical performance measurement compares technical accomplishments during project
execution to the project management plan’s schedule of technical achievement. It requires definition
of objective quantifiable measures of technical performance which can be used to compare actual
results against targets. Such technical performance measures might include weight, transaction
times, number of delivered defects, storage capacity, etc. Deviation, such as demonstrating more or
less functionality than planned at a milestone, can help to forecast the degree of success in achieving
the project’s scope, and it may expose the degree of technical risk faced by the project.'!

technicalPerformanceMeasurementNew
		^super new
			name: 'Technical Performance Measurement'; 
			description: self technicalPerformanceMeasurement;
			yourself.!

tecnicasAnalisisCuantitativoRiesgosModelado
	^'Las técnicas comúnmente usadas abarcan tanto los análisis orientados a eventos como a los
orientados a proyectos, e incluyen:
• Análisis de sensibilidad. El análisis de sensibilidad ayuda a determinar qué riesgos
tienen un mayor impacto potencial en el proyecto. Este método evalúa el grado en que
la incertidumbre de cada elemento del proyecto afecta el objetivo que está siendo
examinado, cuando todos los demás elementos inciertos se mantienen en sus valores
de línea base. Una representación típica del análisis de sensibilidad es el diagrama con
forma de tornado, que es útil para comparar la importancia y el impacto relativos de
las variables que tienen un alto grado de incertidumbre con respecto a las que son más
estables.
• Análisis del valor monetario esperado. El análisis del valor monetario esperado
(EMV) es un concepto estadístico que calcula el resultado promedio cuando el futuro
incluye escenarios que pueden ocurrir o no (es decir, análisis bajo incertidumbre). El
valor monetario esperado de las oportunidades se expresará por lo general con valores
positivos, mientras que el de los riesgos será negativo. El valor monetario esperado
requiere una suposición de neutralidad del riesgo, que no se trate ni de una aversión al
riesgo ni de una atracción por éste. El valor monetario esperado para un proyecto se
calcula multiplicando el valor de cada posible resultado por su probabilidad de
ocurrencia, y sumando luego los resultados. Este tipo de análisis se utiliza
comúnmente en el análisis mediante árbol de decisiones (Gráfico 11-15).
• Modelado y simulación. Una simulación de proyecto utiliza un modelo que traduce
las incertidumbres detalladas especificadas del proyecto en su impacto potencial sobre
los objetivos del mismo. Las simulaciones iterativas se realizan habitualmente
utilizando la técnica Monte Carlo. En una simulación, el modelo del proyecto se
calcula muchas veces (mediante iteración) utilizando valores de entrada (p.ej.,
estimaciones de costos o duraciones de las actividades) seleccionados al azar para
cada iteración a partir de las distribuciones de probabilidad para estas variables. A
partir de las iteraciones, se calcula una distribución de probabilidad (p.ej., el costo
total o la fecha de conclusión). Para un análisis de riesgos de costos, una simulación
emplea estimaciones de costos. Para un análisis de los riesgos relativos al
cronograma, se emplean el diagrama de red del cronograma y las estimaciones de la
duración. El Gráfico 11-16 muestra la salida de una simulación de riesgos relativos a
los costos e ilustra la probabilidad respectiva de alcanzar una meta específica en
materia de costos. Pueden desarrollarse curvas similares para los resultados del
cronograma.'!

tecnicasDiagramacion
	^'Las técnicas de diagramación de riesgos pueden incluir:
• Diagramas de causa y efecto (Sección 8.3.2.1). Estos diagramas también se conocen
como diagramas de Ishikawa o diagramas de espina de pescado y son útiles para
identificar las causas de los riesgos.
• Diagramas de flujo o de sistemas. Estos diagramas muestran cómo se
interrelacionan los diferentes elementos de un sistema, y el mecanismo de causalidad
(Sección 8.3.2.3).
• Diagramas de influencias. Estos diagramas son representaciones gráficas de
situaciones que muestran las influencias causales, la cronología de eventos y otras
relaciones entre las variables y los resultados.'!

tecnicasEvaluacionPropuestas
	^'En el caso de adquisiciones complejas, en las que la selección del proveedor se basará en las
respuestas de los vendedores a criterios de ponderación definidos previamente, se definirá un
proceso formal de revisión de la evaluación, de acuerdo con las políticas de adquisición del
comprador. El comité de evaluación realizará su selección, que deberá ser aprobada por la
dirección antes de la adjudicación.'!

tecnicasGrupalesCreatividad
	^'Pueden organizarse diferentes actividades en grupo para identificar los requisitos del proyecto y
del producto. Algunas de las técnicas grupales de creatividad que pueden usarse, son:
• Tormenta de ideas. Una técnica usada para generar y recopilar numerosas ideas
relacionadas con los requisitos del proyecto y del producto.
• Técnicas de grupo nominal. Esta técnica mejora la tormenta de ideas, mediante un
proceso de votación que se usa para jerarquizar las ideas más útiles, para realizar una
tormenta de ideas adicional, o para asignarles prioridades.
• La técnica Delphi. Un grupo seleccionado de expertos contesta de manera anónima
cuestionarios y proporciona retroalimentación respecto de las respuestas de cada ronda de
recopilación de requisitos. Para conservar el anonimato, estas respuestas sólo están a
disposición del moderador.
• Mapa conceptual/mental. Las ideas que surgen durante las sesiones de tormentas de
ideas individuales se consolidan en un esquema único para reflejar los puntos en común y
las diferencias de entendimiento, y generar nuevas ideas.
• Diagrama de afinidad. Esta técnica permite clasificar en grupos un gran número de ideas
para su revisión y análisis.'!

tecnicasGrupalesTomaDecisiones

	^'La toma de decisiones en grupo es un proceso de evaluación de múltiples alternativas con
relación a un resultado esperado, en forma de acuerdo para acciones futuras. Estas técnicas
pueden usarse para generar, clasificar y dar prioridades a los requisitos del producto.
Existen muchos métodos para llegar a una decisión en grupo, por ejemplo:
• Unanimidad. Todos están de acuerdo en seguir una única línea de acción.
• Mayoría. Se cuenta con el apoyo de más del 50% de los miembros del grupo.
• Pluralidad. El bloque más grande del grupo toma la decisión, aun cuando no se alcance
la mayoría.
• Dictadura. Una persona toma la decisión en nombre del grupo.
Casi todos los métodos de toma de decisiones descritos anteriormente pueden aplicarse a
las técnicas en grupo que se usan en el proceso Recopilar Requisitos.'!

tecnicasRecopilacionInformacion
	^'Algunos ejemplos de técnicas de recopilación de información utilizadas en la identificación de
riesgos son:
• Tormenta de ideas. La meta de la tormenta de ideas es obtener una lista completa de
los riesgos del proyecto. Por lo general, el equipo del proyecto efectúa tormentas de
ideas, a menudo con un grupo multidisciplinario de expertos que no forman parte del
equipo. Bajo el liderazgo de un facilitador, se generan ideas acerca de los riesgos del
proyecto, ya sea por medio de una sesión tradicional y abierta de tormenta de ideas,
con ideas que aportan los participantes, o en una sesión estructurada donde se utilizan
técnicas de entrevista masiva, tales como las técnicas de grupo nominal. Como marco
de referencia, pueden utilizarse categorías de riesgo, tales como una Estructura de
Desglose de Riesgos. Luego, los riesgos son identificados y categorizados según su
tipo, y sus definiciones son refinadas.
• Técnica Delphi. La técnica Delphi es una manera de lograr un consenso de expertos.
Los expertos en riesgos del proyecto participan en esta técnica de forma anónima. Un
facilitador utiliza un cuestionario para solicitar ideas acerca de los riesgos importantes
del proyecto. Las respuestas son resumidas y luego enviadas nuevamente a los expertos para
que realicen comentarios adicionales. En pocas rondas, mediante este proceso se puede
lograr el consenso. La técnica Delphi ayuda a reducir parcialidades en los datos y
evita que cualquier persona ejerza influencias inapropiadas en el resultado.
• Entrevistas. La realización de entrevistas a los participantes experimentados del
proyecto, a los interesados y a los expertos en la materia puede ayudar a identificar los
riesgos.
• Análisis causal. El análisis causal es una técnica específica para identificar un
problema, determinar las causas subyacentes que lo ocasionan y desarrollar acciones
preventivas.'!

tecnicasRecopilacionRepresentacionDatos
	^'• Entrevistas. Las técnicas de entrevistas se basan en la experiencia y en datos
históricos para cuantificar la probabilidad y el impacto de los riesgos sobre los
objetivos del proyecto. La información necesaria depende del tipo de distribuciones
de probabilidad que se vayan a utilizar. Por ejemplo, para algunas distribuciones
comúnmente usadas, la información se podría recopilar agrupándola en escenarios
optimistas (bajo), pesimistas (alto) y más probables. El Gráfico 11-13 muestra
ejemplos de estimaciones por tres valores. También se encuentra información
adicional sobre las estimaciones por tres valores en el proceso Estimar la Duración de
las Actividades (Sección 6.4.2.4) y en el proceso Estimar los Costos (Sección 7.1.2.5).
La documentación de la lógica de los rangos de riesgo y de los supuestos que
subyacen a éstos es un componente importante de la entrevista de riesgos, ya que
puede suministrar información sobre la fiabilidad y la credibilidad del análisis.
• Distribuciones de probabilidad. Las distribuciones continuas de probabilidad,
utilizadas ampliamente en el modelado y la simulación (Sección 11.4.2.2),
representan la incertidumbre de los valores tales como las duraciones de las
actividades del cronograma y los costos de los componentes del proyecto. Las
distribuciones diferenciadas pueden emplearse para representar eventos inciertos,
como el resultado de una prueba o un posible escenario en un árbol de decisiones. El
Gráfico 11-14 muestra dos ejemplos de distribuciones continuas ampliamente usadas.
Estas distribuciones describen formas que son compatibles con los datos que se
compilan habitualmente durante el análisis cuantitativo de riesgos. Las distribuciones
uniformes pueden emplearse únicamente cuando no hay un valor obvio que sea más
probable que cualquier otro entre los límites alto y bajo especificados, como en la
etapa inicial de la concepción de un diseño.'!

tecnologiaComunicaciones
	^'Los métodos utilizados para transferir información entre los interesados en el proyecto pueden
variar considerablemente. Por ejemplo, un equipo del proyecto puede usar como métodos de
comunicación técnicas que van desde conversaciones breves hasta reuniones prolongadas, o
desde simples documentos escritos hasta material (p.ej., cronogramas y bases de datos) al que
se pueda acceder en línea.
Entre los factores que pueden afectar al proyecto, se incluyen:
• La urgencia de la necesidad de información. ¿El éxito del proyecto depende de
contar con información actualizada frecuentemente y disponible de inmediato, o
bastaría con emitir periódicamente informes escritos?
• La disponibilidad de la tecnología. ¿Los sistemas con los que ya se cuenta son
apropiados o las necesidades del proyecto justifican un cambio? Por ejemplo, ¿el o los
interesados previstos tienen acceso a la tecnología de comunicaciones seleccionada?
• El personal previsto para el proyecto. ¿Los sistemas de comunicación propuestos
son compatibles con la experiencia y conocimientos de los participantes del proyecto
o se requiere una capacitación y un aprendizaje exhaustivos?
• La duración del proyecto. ¿Es probable que la tecnología disponible cambie antes de
la finalización del proyecto?
• El entorno del proyecto. ¿El equipo se reúne y trabaja cara a cara o en un entorno
virtual?'!

templates

	^'A standard activity list or a portion of an activity list from a previous project is often usable as a
template for a new project. The related activity attributes information in the templates can also contain
other descriptive information useful in defining activities. Templates can also be used to identify typical
schedule milestones.'!

templatesNew
		^super new
			name: 'Templates'; 
			description: self templates;
			yourself.!

teoriaOrganizacion
	^'La teoría de la organización suministra información relativa a la manera en que se comportan
las personas, los equipos y las unidades de la organización. El uso eficaz de esta información
puede disminuir la cantidad de tiempo, el costo y el esfuerzo necesarios para crear las salidas de
la planificación de los recursos humanos, así como mejorar la probabilidad de que la
planificación resulte eficaz. Es importante considerar que las respuestas individuales, el
desempeño individual y las características de las relaciones personales varían en función de las
diferentes estructuras organizacionales.'!

threePointEstimates

	^'The accuracy of activity duration estimates can be improved by considering estimation uncertainty
and risk. This concept originated with the Program Evaluation and Review Technique (PERT). PERT
uses three estimates to define an approximate range for an activity’s duration:
   • Most likely (tM). The duration of the activity, given the resources likely to be assigned, their
       productivity, realistic expectations of availability for the activity, dependencies on other
       participants, and interruptions.
   • Optimistic (tO). The activity duration is based on analysis of the best-case scenario for
       the activity.
   • Pessimistic (tP). The activity duration is based on analysis of the worst-case scenario for
       the activity.
   PERT analysis calculates an Expected (tE) activity duration using a weighted average of these
three estimates:
                                        tE = (tO + 4tM + tP) /6
   Duration estimates based on this equation (or even on a simple average of the three points) may
provide more accuracy, and the three points clarify the range of uncertainty of the duration estimates.'!

threePointEstimatesNew
		^super new
			name: 'Three Point Estimates'; 
			description: self threePointEstimates;
			yourself.!

tiposContrato
	^'El riesgo compartido entre el comprador y el vendedor está determinado por el tipo de contrato.
Aunque el contrato de precio fijo cerrado es, por lo general, el tipo de acuerdo contractual
preferido, fomentado y a menudo exigido por la mayoría de las organizaciones, en
determinadas ocasiones, otra forma de contrato puede ser más conveniente para el proyecto. Si
se prevé utilizar un tipo de contrato diferente al de precio fijo, corresponde al equipo del
proyecto justificar su uso. El tipo de contrato que se utilizará, así como los términos y
condiciones específicos del contrato, determinan el grado de riesgo asumido por el comprador y
el vendedor.
De manera general, todas las relaciones legales contractuales se encuadran en una de las
siguientes dos grandes categorías: los contratos de precio fijo o los contratos de costo
reembolsable. Asimismo, existe un tercer tipo híbrido utilizado frecuentemente y que se
denomina contrato por tiempo y materiales. Los tipos de contrato más difundidos se abordan
a continuación como tipos diferenciados, pero en la práctica no es inusual combinar uno o
más tipos en el marco de una misma adquisición.
• Contratos de precio fijo. Esta categoría de contrato implica establecer un precio total
fijo para un producto o servicio definido que se va a prestar. Los contratos de precio
fijo también pueden incluir incentivos financieros para quienes alcancen o superen
objetivos seleccionados del proyecto, tales como las fechas de entrega programadas,
el desempeño de costos y técnico, o todo aquello que pueda ser cuantificado y
posteriormente medido. En el caso de los contratos de precio fijo, los vendedores se
encuentran obligados por ley a cumplir dichos contratos, bajo el riesgo de afrontar
eventuales daños y perjuicios financieros si no lo hicieran. En el marco de un contrato
de precio fijo, los compradores deben definir con exactitud el producto o los servicios
que son objeto de la adquisición. Puede haber lugar a cambios en el alcance, pero
generalmente estarán acompañados de un aumento en el precio del contrato.
o Contratos de precio fijo cerrado. El tipo de contrato de uso más común es el
de precio fijo cerrado. Es el preferido por la mayoría de las organizaciones
dado que el precio de los bienes se fija al comienzo y no está sujeto a cambios,
salvo que se modifique el alcance del trabajo. Cualquier aumento de costos
por causa de un desempeño adverso es responsabilidad del vendedor, quien
está obligado a completar el esfuerzo. En el marco de un contrato de precio
fijo cerrado, el comprador debe especificar con precisión el producto o
servicios que se adquirirán, y cualquier cambio a las especificaciones de la
adquisición puede derivar en un aumento de costos para el comprador.
o Contratos de precio fijo más honorarios con incentivos. Este acuerdo de
precio fijo confiere cierta flexibilidad al comprador y al vendedor ya que
permite desviaciones en el desempeño, con incentivos financieros
relacionados con el cumplimiento de las métricas establecidas. Por lo general,
estos incentivos financieros se relacionan con los costos, el cronograma o el
desempeño técnico del vendedor. Los objetivos de desempeño se establecen al
principio, y el precio final del contrato se determina luego de completar todo
el trabajo sobre la base del desempeño del vendedor. En los contratos de
precio fijo más honorarios con incentivos, se fija un precio tope y todos los
costos que superen dicho precio tope son asumidos por el vendedor, quien está
obligado a completar el trabajo.
o Contratos de precio fijo con ajuste económico de precio. Este tipo de
contrato se utiliza cuando el período de desempeño del vendedor abarca un
período considerable de años, tal como se desea en muchas de las relaciones a
largo plazo. Se trata de un contrato de precio fijo pero con una disposición
especial que permite ajustes finales predefinidos al precio del contrato debido
a cambios en las condiciones, tales como cambios inflacionarios o aumentos
(o disminuciones) del costo de las materias primas específicas. La cláusula
sobre ajuste económico de precio debe tomar como referencia algún índice
financiero confiable, que se utilizará para ajustar con precisión el precio final.
Este tipo de contrato procura proteger tanto al comprador como al vendedor de
factores externos que están fuera de su control.
• Contratos de costos reembolsables. Esta categoría de contrato implica efectuar
pagos (reembolsos de costos) al vendedor por todos los costos legítimos y reales en
que incurriera para completar el trabajo, más los honorarios que representen la
ganancia del vendedor. Los contratos de costos reembolsables también pueden incluir
cláusulas de incentivos financieros para los casos en que el vendedor supere o no
cumpla determinados objetivos definidos, tales como los relativos a los costos, al
cronograma o a los objetivos de desempeño técnico. Tres de los tipos de contratos de
costos reembolsables utilizados más comunes son los contratos de costo más
honorarios fijos, los contratos de costo más honorarios con incentivos y los contratos
de costo más honorarios por cumplimiento de objetivos.
Un contrato de costos reembolsables proporciona al proyecto flexibilidad para
reorientar a un vendedor si el alcance del trabajo no puede definirse con precisión al
inicio y requiere modificaciones, o cuando el esfuerzo puede implicar riesgos
elevados.
o Contrato de costo más honorarios fijos. Al vendedor se le reembolsan todos
los costos autorizados para realizar el trabajo del contrato, a la vez que recibe
el pago de sus honorarios fijos calculados como un porcentaje de los costos
del proyecto estimados al inicio. Los honorarios se pagan únicamente por el
trabajo completado y no varían en función del desempeño del vendedor. El
monto de los honorarios no cambia, a menos que se modifique el alcance del
proyecto.
o Contrato de costo más honorarios con incentivos. Al vendedor se le
reembolsan todos los costos autorizados para realizar el trabajo del contrato, y
recibe honorarios con incentivos predeterminados, basados en el logro de
objetivos específicos de desempeño establecidos en el contrato. En este tipo de
contratos, si los costos finales son inferiores o superiores a los costos
originales estimados, entonces el comprador y el vendedor comparten las
desviaciones de costos de acuerdo con una fórmula prenegociada. Por
ejemplo, un porcentaje de 80/20 por encima o por debajo de los costos
objetivo basándose en el desempeño real del vendedor.
o Contrato de costo más honorarios por cumplimiento de objetivos. Al
vendedor se le reembolsan todos los costos legítimos, pero la mayor parte de
los honorarios es obtenida basándose sólo en la satisfacción de cierto criterio
subjetivo general de desempeño definido e incorporado dentro del contrato.
Los honorarios se establecen basándose únicamente en la determinación
subjetiva del desempeño del vendedor por parte del comprador y, por lo
general, no es sujeto de apelación.
• Contrato por tiempo y materiales. Los contratos por tiempo y materiales son un tipo
híbrido de acuerdo contractual que contiene aspectos tanto de los contratos de costos
reembolsables como de los contratos de precio fijo. A menudo, se les utiliza para
aumentar personal, la adquisición de expertos y cualquier tipo de apoyo externo
cuando no es posible establecer con rapidez un enunciado preciso del trabajo.
Estos tipos de contratos se asemejan a los contratos de costos reembolsables en que
son abiertos y pueden estar sujetos a un aumento de costos para el comprador. El
valor total del acuerdo y la cantidad exacta de elementos por entregar pueden no estar
definidos por el comprador en el momento de la adjudicación del contrato. Por lo
tanto, los contratos por tiempo y materiales pueden aumentar en cuanto a su valor
contractual como si fueran contratos de costos reembolsables. Muchas organizaciones
requieren que se establezcan valores máximos y plazos límites en todos los contratos
por tiempo y materiales para evitar el aumento desmedido de costos. Por otro lado,
este tipo de contratos también puede asemejarse a los acuerdos de precio fijo por
unidad cuando ciertos parámetros se especifican en el contrato. Las tarifas por unidad
de mano de obra o de materiales pueden establecerse por anticipado por el comprador
y el vendedor, incluyendo las ganancias del vendedor, cuando ambas partes acuerdan
los valores para categorías específicas de recursos, tales como tarifas por hora
específicas para ingenieros expertos o, en el caso de categorías de materiales, tarifas
específicas por unidad.'!

toCompletePerformanceIndex

	^'The to-complete performance index (TCPI) is the calculated projection of cost performance that
must be achieved on the remaining work to meet a specified management goal, such as the BAC
or the EAC. If it becomes obvious that the BAC is no longer viable, the project manager develops a
forecasted estimate at completion (EAC). Once approved, the EAC effectively supersedes the BAC as
the cost performance goal. Equation for the TCPI based on the BAC: (BAC – EV) / (BAC – AC).
    The TCPI is conceptually displayed in Figure 7-10. The equation for the TCPI is shown in the lower
left as the work remaining (defined as the BAC minus the EV) divided by the funds remaining (which
can be either the BAC minus the AC, or the EAC minus the AC).
    If the cumulative CPI falls below the baseline plan (as shown in Figure 7-10), all future work of
the project will need to immediately be performed in the range of the TCPI (BAC) (as reflected in
the top line of Figure 7-10) to stay within the authorized BAC. Whether this level of performance is
achievable is a judgment call based on a number of considerations, including risks, schedule, and
technical performance. Once management acknowledges that the BAC is no longer attainable, the
project manager will prepare a new estimate at completion (EAC) for the work, and once approved, the
project will work to the new EAC value. This level of performance is displayed as the TCPI (EAC) line.
The equation for the TCPI based on the EAC: (BAC – EV) / (EAC – AC).'!

toCompletePerformanceIndexNew
		^super new
			name: 'To Complete Performance Index'; 
			description: self toCompletePerformanceIndex;
			yourself.!

training

	^'Training includes all activities designed to enhance the competencies of the project team members.
Training can be formal or informal. Examples of training methods include classroom, online, computer-
based, on-the-job training from another project team member, mentoring, and coaching. If project
team members lack necessary management or technical skills, such skills can be developed as part
of the project work. Scheduled training takes place as stated in the human resource plan. Unplanned
training takes place as a result of observation, conversation, and project performance appraisals
conducted during the controlling process of managing the project team.'!

trainingNew
		^super new
			name: 'Training'; 
			description: self training;
			yourself.!

varianceAnalysis

	^'Project performance measurements are used to assess the magnitude of variation from the original
scope baseline. Important aspects of project scope control include determining the cause and degree of
variance relative to the scope baseline (Section 5.3.3.3) and deciding whether corrective or preventive
action is required.'
!

varianceAnalysis2

	^'Cost performance measurements (CV, CPI) are used to assess the magnitude of variation to the
original cost baseline. Important aspects of project cost control include determining the cause and
degree of variance relative to the cost performance baseline (Section 7.2.3.1) and deciding whether
corrective or preventive action is required. The percentage range of acceptable variances will tend to
decrease as more work is accomplished. The larger percentage variances allowed at the start of the
project can decrease as the project nears completion.
'
!

varianceAnalysis2New
		^super new
			name: 'Variance Analysis2'; 
			description: self varianceAnalysis2;
			yourself.!

varianceAnalysisNew
		^super new
			name: 'Variance Analysis'; 
			description: self varianceAnalysis;
			yourself.!

varianceTrendAnalysis

	^'Many control processes employ variance analysis to compare the planned results to the actual
results. For the purposes of monitoring and controlling risk events, trends in the project’s execution
should be reviewed using performance information. Earned value analysis (Section 7.3.2.1) and other
methods of project variance and trend analysis may be used for monitoring overall project performance.
Outcomes from these analyses may forecast potential deviation of the project at completion from
cost and schedule targets. Deviation from the baseline plan may indicate the potential impact of
threats or opportunities.'!

varianceTrendAnalysisNew
		^super new
			name: 'Variance Trend Analysis'; 
			description: self varianceTrendAnalysis;
			yourself.!

vendorBidAnalysis

	^'Cost estimating methods may include analysis of what the project should cost, based on the
responsive bids from qualified vendors. Where projects are awarded to a vendor under competitive
processes, additional cost estimating work can be required of the project team to examine the price of
individual deliverables and to derive a cost that supports the final total project cost.'!

vendorBidAnalysisNew
		^super new
			name: 'Vendor Bid Analysis'; 
			description: self vendorBidAnalysis;
			yourself.!

virtualTeams

	^'The use of virtual teams creates new possibilities when acquiring project team members. Virtual
teams can be defined as groups of people with a shared goal who fulfill their roles with little or no
time spent meeting face to face. The availability of electronic communication such as e-mail, audio
conferencing, web-based meetings and video conferencing has made such teams feasible. The virtual
team format makes it possible to:
   • Form teams of people from the same company who live in widespread geographic areas,
   • Add special expertise to a project team even though the expert is not in the same
       geographic area,
   • Incorporate employees who work from home offices,
   • Form teams of people who work different shifts or hours,
   • Include people with mobility limitations or disabilities, and
   • Move forward with projects that would have been ignored due to travel expenses.
   Communication planning becomes increasingly important in a virtual team environment. Additional
time may be needed to set clear expectations, facilitate communications, develop protocols for
resolving conflict, include people in decision-making, and share credit in successes.'!

virtualTeamsNew
		^super new
			name: 'Virtual Teams'; 
			description: self virtualTeams;
			yourself.!

whatIfScenarioAnalysis

	^'This is an analysis of the question “What if the situation represented by scenario ‘X’ happens?”
A schedule network analysis is performed using the schedule to compute the different scenarios,
such as delaying a major component delivery, extending specific engineering durations, or introducing
external factors, such as a strike or a change in the permitting process. The outcome of the what-
if scenario analysis can be used to assess the feasibility of the project schedule under adverse
conditions, and in preparing contingency and response plans to overcome or mitigate the impact of
unexpected situations. Simulation involves calculating multiple project durations with different sets
of activity assumptions. The most common technique is Monte Carlo Analysis (Section 11.4.2.2), in
which a distribution of possible activity durations is defined for each activity and used to calculate a
distribution of possible outcomes for the total project.'!

whatIfScenarioAnalysisNew
		^super new
			name: 'What If Scenario Analysis'; 
			description: self whatIfScenarioAnalysis;
			yourself.! !
!PMIToolOrTechnique class categoriesFor: #acquisition!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #acquisitionNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #actividadesDesarrolloEspirituEquipo!integration!public! !
!PMIToolOrTechnique class categoriesFor: #acuerdosNegociados!integration!public! !
!PMIToolOrTechnique class categoriesFor: #acuerdosTrabajarEquipo!integration!public! !
!PMIToolOrTechnique class categoriesFor: #additionalQualityPlanningTools!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #additionalQualityPlanningToolsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #adjustingLeadsLags!public! !
!PMIToolOrTechnique class categoriesFor: #adjustingLeadsLagsNew!public! !
!PMIToolOrTechnique class categoriesFor: #administracionReclamaciones!integration!public! !
!PMIToolOrTechnique class categoriesFor: #adquisicion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #advertising!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #advertisingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #ajusteAdelantosRetrasos!public! !
!PMIToolOrTechnique class categoriesFor: #alternativesAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #alternativesAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #alternativesIdentification!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #alternativesIdentificationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #analisisAlternativas!public! !
!PMIToolOrTechnique class categoriesFor: #analisisCostoBeneficio!public! !
!PMIToolOrTechnique class categoriesFor: #analisisHacerComprar!public! !
!PMIToolOrTechnique class categoriesFor: #analisisInteresados!public! !
!PMIToolOrTechnique class categoriesFor: #analisisListasControl!public! !
!PMIToolOrTechnique class categoriesFor: #analisisProcesos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #analisisProducto!integration!public! !
!PMIToolOrTechnique class categoriesFor: #analisisPropuestasLicitaciones!public! !
!PMIToolOrTechnique class categoriesFor: #analisisQuePasaSi!public! !
!PMIToolOrTechnique class categoriesFor: #analisisRedCronograma!public! !
!PMIToolOrTechnique class categoriesFor: #analisisRequisitosComunicaciones!integration!public! !
!PMIToolOrTechnique class categoriesFor: #analisisReserva!public! !
!PMIToolOrTechnique class categoriesFor: #analisisSupuestos!public! !
!PMIToolOrTechnique class categoriesFor: #analisisSWOT!integration!public! !
!PMIToolOrTechnique class categoriesFor: #analisisVariacion!public! !
!PMIToolOrTechnique class categoriesFor: #analisisVariacionTendencias!integration!public! !
!PMIToolOrTechnique class categoriesFor: #analogousEstimating!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #analogousEstimatingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #aplicacionAdelantosRetrasos!public! !
!PMIToolOrTechnique class categoriesFor: #applyingLeadsAndLags!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #applyingLeadsAndLagsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #approvedChangeRequestsReview!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #approvedChangeRequestsReviewNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #asignacionPrevia!integration!public! !
!PMIToolOrTechnique class categoriesFor: #assumptionsAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #assumptionsAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #auditoriasAdquisicion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #auditoriasCalidad!integration!public! !
!PMIToolOrTechnique class categoriesFor: #auditoriasRiesgos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #benchmarking!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #benchmarkingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #bidderConferences!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #bidderConferencesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #bottomUpEstimating!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #bottomUpEstimatingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #busquedaInternet!integration!public! !
!PMIToolOrTechnique class categoriesFor: #capacitacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #categorizacionRiesgos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #causeEffectDiagrams!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #causeEffectDiagramsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #changeControlMeetings!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #changeControlMeetingsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #checklistAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #checklistAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #claimsAdministration!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #claimsAdministrationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #colocation!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #colocationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationMethods!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationMethodsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationModels!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationModelsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationRequirementsAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationRequirementsAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationTechnology!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #communicationTechnologyNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #compresionCronograma!public! !
!PMIToolOrTechnique class categoriesFor: #conciliacionLimiteFinanciamiento!public! !
!PMIToolOrTechnique class categoriesFor: #conferenciasOferentes!public! !
!PMIToolOrTechnique class categoriesFor: #conflictManagement!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #conflictManagementNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #contingentResponseStrategies!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #contingentResponseStrategiesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #contractChangeControlSystem!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #contractChangeControlSystemNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #contractTypes!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #contractTypesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #controlCharts!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #controlCharts2!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #controlCharts2New!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #controlChartsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #costAggregation!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #costAggregationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #costBenefitAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #costBenefitAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #costoCalidad!public! !
!PMIToolOrTechnique class categoriesFor: #costOfQuality!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #costOfQualityNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #creacionRelacionesTrabajo!integration!public! !
!PMIToolOrTechnique class categoriesFor: #criticalChainMethod!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #criticalChainMethodNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #criticalPathMethod!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #criticalPathMethodNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #cuestionariosEncuestas!public! !
!PMIToolOrTechnique class categoriesFor: #datosEstimacionPublicados!public! !
!PMIToolOrTechnique class categoriesFor: #decomposition!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #decomposition2!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #decomposition2New!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #decompositionNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #dependencyDetermination!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #dependencyDeterminationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #descomposicion!public! !
!PMIToolOrTechnique class categoriesFor: #descomposicionActividades!public! !
!PMIToolOrTechnique class categoriesFor: #designOfExperiments!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #designOfExperimentsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #determinacionDependencias!public! !
!PMIToolOrTechnique class categoriesFor: #diagramaComportamiento!integration!public! !
!PMIToolOrTechnique class categoriesFor: #diagramaDispersion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #diagramaPareto!integration!public! !
!PMIToolOrTechnique class categoriesFor: #diagramasCausaEfecto!integration!public! !
!PMIToolOrTechnique class categoriesFor: #diagramasControl!public! !
!PMIToolOrTechnique class categoriesFor: #diagramasFlujo!public! !
!PMIToolOrTechnique class categoriesFor: #diagrammingTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #diagrammingTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #disenoExperimentos!public! !
!PMIToolOrTechnique class categoriesFor: #documentationReviews!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #documentationReviewsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #earnedValueManagement!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #earnedValueManagementNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #entrevistas!public! !
!PMIToolOrTechnique class categoriesFor: #equiposVirtuales!integration!public! !
!PMIToolOrTechnique class categoriesFor: #estimacionAnaloga!public! !
!PMIToolOrTechnique class categoriesFor: #estimacionAscendente!public! !
!PMIToolOrTechnique class categoriesFor: #estimacionesIndependientes!integration!public! !
!PMIToolOrTechnique class categoriesFor: #estimacionParametrica!public! !
!PMIToolOrTechnique class categoriesFor: #estimacionTresValores!public! !
!PMIToolOrTechnique class categoriesFor: #estrategiasRespuestaContingencias!integration!public! !
!PMIToolOrTechnique class categoriesFor: #estrategiasRiesgosNegativosAmenazas!integration!public! !
!PMIToolOrTechnique class categoriesFor: #estrategiasRiesgosPositivosOportunidades!integration!public! !
!PMIToolOrTechnique class categoriesFor: #estudiosComparativos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #evaluacionCalidadDatosSobreRiesgos!public! !
!PMIToolOrTechnique class categoriesFor: #evaluacionesDesempenoProyecto!public! !
!PMIToolOrTechnique class categoriesFor: #evaluacionProbabilidadImpactoRiesgos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #evaluacionUrgenciaRiesgos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #expertJudgment!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #expertJudgmentNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #facilitatedWorkshops!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #facilitatedWorkshopsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #flowcharting!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #flowchartingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #focusGroups!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #focusGroupsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #forecasting!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #forecastingMethods!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #forecastingMethodsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #forecastingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #fundingLimitReconciliation!public! !
!PMIToolOrTechnique class categoriesFor: #fundingLimitReconciliationNew!public! !
!PMIToolOrTechnique class categoriesFor: #gatheringRepresentationTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #gatheringRepresentationTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #gestionConflictos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #gestionValorGanado!public! !
!PMIToolOrTechnique class categoriesFor: #groundRules!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #groundRulesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #groupCreativityTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #groupCreativityTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #groupDecisionMakingTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #groupDecisionMakingTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #gruposOpinion!public! !
!PMIToolOrTechnique class categoriesFor: #habilidadesGestion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #habilidadesInterpersonales!integration!public! !
!PMIToolOrTechnique class categoriesFor: #herramientaPlanificacion!public! !
!PMIToolOrTechnique class categoriesFor: #herramientasAdicionalesPlanificacionCalidad!public! !
!PMIToolOrTechnique class categoriesFor: #herramientasDistribucionInformacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #herramientasTecnicasPlanificarCalidadRealizarControlCalidad!integration!public! !
!PMIToolOrTechnique class categoriesFor: #histogram!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #histograma!integration!public! !
!PMIToolOrTechnique class categoriesFor: #histogramNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #historicalRelationships!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #historicalRelationshipsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #icon!public! !
!PMIToolOrTechnique class categoriesFor: #identificacionAlternativas!public! !
!PMIToolOrTechnique class categoriesFor: #independentEstimates!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #independentEstimatesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #indiceDesempenoTrabajoCompletar!public! !
!PMIToolOrTechnique class categoriesFor: #informationDistributionTools!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #informationDistributionToolsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #informationGatheringTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #informationGatheringTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #informesDesempeno!integration!public! !
!PMIToolOrTechnique class categoriesFor: #inspeccion!public! !
!PMIToolOrTechnique class categoriesFor: #inspeccionesAuditorias!integration!public! !
!PMIToolOrTechnique class categoriesFor: #inspection!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #inspection2!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #inspection2New!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #inspectionNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #inspectionsAudits!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #inspectionsAuditsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #internetSearch!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #internetSearchNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #interpersonalSkills!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #interpersonalSkills2!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #interpersonalSkills2New!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #interpersonalSkillsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #interviews!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #interviewsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #issueLog!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #issueLogNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #juicioDeExpertos!public! !
!PMIToolOrTechnique class categoriesFor: #makeOrBuyAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #makeOrBuyAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #managementSkills!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #managementSkillsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #matrizProbabilidadImpacto!integration!public! !
!PMIToolOrTechnique class categoriesFor: #medicionDesempenoTecnico!integration!public! !
!PMIToolOrTechnique class categoriesFor: #metodoCadenaCritica!public! !
!PMIToolOrTechnique class categoriesFor: #metodoDiagramacionPrecedencia!public! !
!PMIToolOrTechnique class categoriesFor: #metodologiasPropietariasGestionCalidad!public! !
!PMIToolOrTechnique class categoriesFor: #metodoRutaCritica!public! !
!PMIToolOrTechnique class categoriesFor: #metodosComunicacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #metodosProyeccion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #modelosComunicacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #muestreoEstadistico!public! !
!PMIToolOrTechnique class categoriesFor: #negociacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #negociacionAdquisiciones!integration!public! !
!PMIToolOrTechnique class categoriesFor: #negotiatedSettlements!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #negotiatedSettlementsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #negotiation!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #negotiationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #networking!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #networkingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #newActividadesDesarrolloEspirituEquipo!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAcuerdosNegociados!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAdministracionReclamaciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAdquisicion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAjusteAdelantosRetrasos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisAlternativas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisCostoBeneficio!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisHacerComprar!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisInteresados!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisListasControl!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisProcesos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisProducto!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisPropuestasLicitaciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisQuePasaSi!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisRedCronograma!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisRequisitosComunicaciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisReserva!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisSupuestos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisSWOT!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisVariacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAnalisisVariacionTendencias!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAplicacionAdelantosRetrasos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAsignacionPrevia!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAuditoriasAdquisicion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAuditoriasCalidad!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newAuditoriasRiesgos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newBusquedaInternet!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newCapacitacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newCategorizacionRiesgos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newCompresionCronograma!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newConciliacionLimiteFinanciamiento!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newConferenciasOferentes!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newCostoCalidad!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newCreacionRelacionesTrabajo!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newCuestionariosEncuestas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDatosEstimacionPublicados!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDescomposicion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDescomposicionActividades!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDeterminacionDependencias!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDiagramaComportamiento!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDiagramaDispersion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDiagramaPareto!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDiagramasCausaEfecto!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDiagramasControl!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDiagramasFlujo!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newDisenoExperimentos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEntrevistas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEquiposVirtuales!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstimacionAnaloga!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstimacionAscendente!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstimacionesIndependientes!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstimacionParametrica!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstimacionTresValores!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstrategiasRespuestaContingencias!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstrategiasRiesgosNegativosAmenazas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstrategiasRiesgosPositivosOportunidades!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEstudiosComparativos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEvaluacionCalidadDatosSobreRiesgos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEvaluacionesDesempenoProyecto!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEvaluacionProbabilidadImpactoRiesgos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newEvaluacionUrgenciaRiesgos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newGestionConflictos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newGestionValorGanado!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newGruposOpinion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newHabilidadesGestion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newHabilidadesInterpersonales!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newHerramientaPlanificacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newHerramientasAdicionalesPlanificacionCalidad!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newHerramientasDistribucionInformacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newHerramientasTecnicasPlanificarCalidadRealizarControlCalidad!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newHistograma!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newIdentificacionAlternativas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newIndiceDesempenoTrabajoCompletar!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newInformesDesempeno!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newInspeccion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newInspeccionesAuditorias!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newJuicioDeExpertos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMatrizProbabilidadImpacto!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMedicionDesempenoTecnico!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMetodoCadenaCritica!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMetodoDiagramacionPrecedencia!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMetodologiasPropietariasGestionCalidad!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMetodoRutaCritica!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMetodosComunicacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMetodosProyeccion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newModelosComunicacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newMuestreoEstadistico!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newNegociacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newNegociacionAdquisiciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newNivelacionRecursos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newObservacionConversacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newObservaciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newOrganigramasDescripcionesCargos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newPlanificacionGradual!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newPlantillas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newPlantillasRedCronograma!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newPrototipos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newProyecciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newPublicidad!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newReconocimientoRecompensas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newReevaluacionRiesgos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newRegistroAsuntos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newReglasBasicas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newRelacionesHistoricas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newReubicacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newReunionesControlCambios!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newReunionesPlanificacionAnalisis!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newReunionesSobreEstadoProyecto!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newRevisionesDesempeno!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newRevisionesDesempenoAdquisiciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newRevisionesDocumentacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSistemaControlCambiosContrato!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSistemaGestionRegistros!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSistemaInformacionDireccionProyectos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSistemasInformes!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSistemasPago!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSoftwareEstimacionCostosDireccionProyectos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSoftwareGestionProyectos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newSumaCostos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTalleresFacilitados!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnicasAnalisisCuantitativoRiesgosModelado!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnicasDiagramacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnicasEvaluacionPropuestas!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnicasGrupalesCreatividad!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnicasGrupalesTomaDecisiones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnicasRecopilacionInformacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnicasRecopilacionRepresentacionDatos!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTecnologiaComunicaciones!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTeoriaOrganizacion!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #newTiposContrato!instance creation!public! !
!PMIToolOrTechnique class categoriesFor: #nivelacionRecursos!public! !
!PMIToolOrTechnique class categoriesFor: #observacionConversacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #observaciones!public! !
!PMIToolOrTechnique class categoriesFor: #observationConversation!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #observationConversationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #observations!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #observationsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #organigramasDescripcionesCargos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #organizationalProcessAssetsUpdates!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #organizationalProcessAssetsUpdatesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #organizationalTheory!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #organizationalTheoryNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #organizationChartsPositionDescriptions!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #organizationChartsPositionDescriptionsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #parametricEstimating!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #parametricEstimatingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #paretoChart!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #paretoChartNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #paymentSystems!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #paymentSystemsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #performanceReporting!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #performanceReportingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #performanceReviews!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #performanceReviews2!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #performanceReviews2New!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #performanceReviewsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #planificacionGradual!public! !
!PMIToolOrTechnique class categoriesFor: #planningMeetingsAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #planningMeetingsAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #planQualityPerformQualityControlToolsTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #planQualityPerformQualityControlToolsTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #plantillas!public! !
!PMIToolOrTechnique class categoriesFor: #plantillasRedCronograma!public! !
!PMIToolOrTechnique class categoriesFor: #preAssignment!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #preAssignmentNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #precedenceDiagrammingMethod!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #precedenceDiagrammingMethodNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #probabilityImpactMatrix!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #probabilityImpactMatrixNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #processAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #processAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #procurementAudits!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #procurementAuditsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #procurementNegotiations!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #procurementNegotiationsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #procurementPerformanceReviews!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #procurementPerformanceReviewsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #productAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #productAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectManagementEstimatingSoftware!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectManagementEstimatingSoftwareNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectManagementInformationSystem!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectManagementInformationSystemNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectManagementSoftware!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectManagementSoftwareNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectPerformanceAppraisals!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #projectPerformanceAppraisalsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #proposalEvaluationTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #proposalEvaluationTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #prototipos!public! !
!PMIToolOrTechnique class categoriesFor: #prototypes!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #prototypesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #proyecciones!public! !
!PMIToolOrTechnique class categoriesFor: #publicidad!integration!public! !
!PMIToolOrTechnique class categoriesFor: #publishedEstimatingData!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #publishedEstimatingDataNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #qualityAudits!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #qualityAuditsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #qualityManagementMethodologies!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #qualityManagementMethodologiesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #quantitativeRiskAnalysisModelingTechniques!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #quantitativeRiskAnalysisModelingTechniquesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #questionnairesAndSurveys!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #questionnairesAndSurveysNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #recognitionRewards!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #recognitionRewardsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #reconocimientoRecompensas!integration!public! !
!PMIToolOrTechnique class categoriesFor: #recordsManagementSystem!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #recordsManagementSystemNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #reevaluacionRiesgos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #registroAsuntos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #reglasBasicas!integration!public! !
!PMIToolOrTechnique class categoriesFor: #relacionesHistoricas!integration!public! !
!PMIToolOrTechnique class categoriesFor: #reportingSystems!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #reportingSystemsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #reserveAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #reserveAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #resourceLeveling!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #resourceLevelingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #reubicacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #reunionesControlCambios!integration!public! !
!PMIToolOrTechnique class categoriesFor: #reunionesPlanificacionAnalisis!integration!public! !
!PMIToolOrTechnique class categoriesFor: #reunionesSobreEstadoProyecto!integration!public! !
!PMIToolOrTechnique class categoriesFor: #revisionesDesempeno!public! !
!PMIToolOrTechnique class categoriesFor: #revisionesDesempenoAdquisiciones!integration!public! !
!PMIToolOrTechnique class categoriesFor: #revisionesDocumentacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #riskAudits!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskAuditsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskCategorization!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskCategorizationNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskDataQualityAssessment!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskDataQualityAssessmentNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskProbabilityImpactAssessment!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskProbabilityImpactAssessmentNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskReassessment!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskReassessmentNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskUrgencyAssessment!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #riskUrgencyAssessmentNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #rollingWavePlanning!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #rollingWavePlanningNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #runChart!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #runChartNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scatterDiagram!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scatterDiagramNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scheduleCompression!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scheduleCompressionNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scheduleNetworkAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scheduleNetworkAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scheduleNetworkTemplates!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #scheduleNetworkTemplatesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #schedulingTool!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #schedulingToolNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #sistemaControlCambiosContrato!integration!public! !
!PMIToolOrTechnique class categoriesFor: #sistemaGestionRegistros!integration!public! !
!PMIToolOrTechnique class categoriesFor: #sistemaInformacionDireccionProyectos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #sistemasInformes!integration!public! !
!PMIToolOrTechnique class categoriesFor: #sistemasPago!integration!public! !
!PMIToolOrTechnique class categoriesFor: #softwareEstimacionCostosDireccionProyectos!public! !
!PMIToolOrTechnique class categoriesFor: #softwareGestionProyectos!public! !
!PMIToolOrTechnique class categoriesFor: #stakeholderAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #stakeholderAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #statisticalSampling!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #statisticalSamplingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #statusMeetings!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #statusMeetingsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #strategiesForNegativeRisksThreats!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #strategiesForNegativeRisksThreatsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #strategiesForPositiveRisksOpportunities!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #strategiesForPositiveRisksOpportunitiesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #sumaCostos!public! !
!PMIToolOrTechnique class categoriesFor: #swtoAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #swtoAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #talleresFacilitados!public! !
!PMIToolOrTechnique class categoriesFor: #teamBuildingActivities!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #teamBuildingActivitiesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #technicalPerformanceMeasurement!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #technicalPerformanceMeasurementNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #tecnicasAnalisisCuantitativoRiesgosModelado!integration!public! !
!PMIToolOrTechnique class categoriesFor: #tecnicasDiagramacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #tecnicasEvaluacionPropuestas!integration!public! !
!PMIToolOrTechnique class categoriesFor: #tecnicasGrupalesCreatividad!integration!public! !
!PMIToolOrTechnique class categoriesFor: #tecnicasGrupalesTomaDecisiones!public! !
!PMIToolOrTechnique class categoriesFor: #tecnicasRecopilacionInformacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #tecnicasRecopilacionRepresentacionDatos!integration!public! !
!PMIToolOrTechnique class categoriesFor: #tecnologiaComunicaciones!integration!public! !
!PMIToolOrTechnique class categoriesFor: #templates!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #templatesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #teoriaOrganizacion!integration!public! !
!PMIToolOrTechnique class categoriesFor: #threePointEstimates!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #threePointEstimatesNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #tiposContrato!integration!public! !
!PMIToolOrTechnique class categoriesFor: #toCompletePerformanceIndex!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #toCompletePerformanceIndexNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #training!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #trainingNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #varianceAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #varianceAnalysis2!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #varianceAnalysis2New!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #varianceAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #varianceTrendAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #varianceTrendAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #vendorBidAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #vendorBidAnalysisNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #virtualTeams!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #virtualTeamsNew!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #whatIfScenarioAnalysis!pmi english!public! !
!PMIToolOrTechnique class categoriesFor: #whatIfScenarioAnalysisNew!pmi english!public! !

