/*Por un bug o falta de desarrollo en la versión no permite más de un contexto, debería permitirse en un futuro*/
Extension: IdentidadDeGenero
Id: IdentidadDeGenero
Title: "Identidad De Genero"
Description: "Identidad De Genero"
//Context: CorePacienteCl, PrestadorCL
//Context: Patient, RelatedPerson, Person, Practitioner, FamilyMemberHistory
* ^context[0].type = #element
* ^context[=].expression = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl#Patient"
* ^context[+].type = #element
* ^context[=].expression = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl#Practitioner"
* valueCodeableConcept ^short = "Identidad De Genero"
* valueCodeableConcept from  VSIdentidaddeGenero

Extension: SexoBiologico
Id: SexoBiologico
Title: "Sexo Biologico del paciente"
Description: "Sexo Biologico del paciente"
//Context: CorePacienteCl
Context: CorePacienteCl, PrestadorCL
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "SexoBiologico"
* valueCodeableConcept from VSadministrative-gender

// Extension: SexoRegistral
// Id: SexoRegistral
// Title: "Sexo Registral del paciente"
// Description: "Sexo Registral del paciente"

// * value[x] only CodeableConcept
// * valueCodeableConcept ^short = "SexoRegistral"
// * valueCodeableConcept from http://hl7.org/fhir/ValueSet/administrative-gender

Extension:   PaisOrigenNacionalidadCl
Id:          CodigoPaises
Title:       "Codigo de Identificación de países"
Description: "Esta extensión incluye códigos de paises de origen"
//Context: CorePacienteCl, ClAddress.country.extension.paises, Location, Organization
* value[x] only CodeableConcept
* value[x] ^short = "Código de País"
//* url 1..1 MS
* valueCodeableConcept from CodPais
* valueCodeableConcept.coding 0..1 MS
  * code 0..1 MS

  * system 0..1 MS
  * display 0..1 MS

* url ^short = "Extensión de Nacionalidad para pacientes extranjeros"
//* valueCodeableConcept.coding.system from CodPaises (extensible)

/* 		Extension 		*/
/*	Comunas Chile	*/
Extension:   ComunasCl
Id:          ComunasCl
Title:       "Códigos para Comunas en Chile"
Description: "Esta extensión que permite codiificar las Comunas en Chile en el campo de Dirección"
Context: Address.city
* value[x] only CodeableConcept
* value[x] ^short = "Código de Comunas"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSCodigosComunaCL
  * system 0..1 MS
  * display 0..1 MS
//* valueCodeableConcept.coding.system from VSCodigosComunaCL (extensible)

/* 		Extension 		*/
/*	Provincias Chile	*/
Extension:   ProvinciasCl
Id:          ProvinciasCl
Title:       "Códigos para Provincias en Chile"
Description: "Esta extensión que permite codificar las Provincias en Chile en el campo de Dirección"
Context: Address.district
* value[x] only CodeableConcept
* value[x] ^short = "Código de Provincias"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSCodigosProvinciasCL
  * system 0..1 MS
  * display 0..1 MS
//* valueCodeableConcept.coding.system  from CSCodProvinciasCL (extensible)

/* 		Extension 		*/
/*	Regiones Chile	*/
Extension:   RegionesCl
Id:          RegionesCl
Title:       "Códigos para Regiones en Chile"
Description: "Esta extensión que permite codificar las Regiones en Chile en el campo de Dirección"
Context: Address.state
* value[x] only CodeableConcept
* value[x] ^short = "Código de Provincias"
* url 1..1 MS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code from VSCodigosRegionesCL
  * system 0..1 MS
  * display 0..1 MS
//* valueCodeableConcept.coding.system  from CSCodRegionCL (required)

Extension:   IdentificacionContactoCl
Id:          IdContacto
Title:       "Identificación del Contacto de un Paciente"
Description: "Identificación de contacto de paciente en especial para casos en los cuales este actúa como Tutor Legal"
Context: CorePacienteCl.contact
* extension contains
	tutId 1..* MS and
	docProc 0..1 MS
* url MS

//* extension[tutId].url = "tutId"
* extension[tutId] ^short = "Identificación del Tutor"
* extension[tutId] ^definition = "Identificación del Tutor"
* extension[tutId] 1..1 MS
* extension[tutId].url MS
* extension[tutId].value[x] only Identifier
* extension[tutId].valueIdentifier 1..1 MS
* extension[tutId].valueIdentifier.type 1..1 MS
* extension[tutId].valueIdentifier.type.coding.code 1..1 MS
* extension[tutId].valueIdentifier.type.coding.system 1..1 MS
* extension[tutId].valueIdentifier.type.coding.display 0..1 MS
* extension[tutId].valueIdentifier.system 1..1 MS
* extension[tutId].valueIdentifier.value 1..1 MS

//* extension[docProc].url = "docProc"
* extension[docProc] ^short = "País de procedencia del documento"
* extension[docProc].value[x] only CodeableConcept
* extension[docProc].url MS
* extension[docProc].valueCodeableConcept from CodPaises (required)
* extension[docProc].valueCodeableConcept 1..1 MS
* extension[docProc].valueCodeableConcept.coding 1..1 MS
* extension[docProc].valueCodeableConcept.coding.code 1..1 MS
* extension[docProc].valueCodeableConcept.coding.system 1..1 MS
* extension[docProc].valueCodeableConcept.coding.display 0..1 MS
/*
Extension: TiposEncuentroRemotoCL
Id: TiposEncuentro
Title: "Código de tipos de encuentro remoto"
Description: "Esta extensión incluye códigos de los tipos de encuentro que se realizan de forma remota"
Context: EncounterCL.type
* valueCode from VSTiposEncuentroCL (extensible)

Extension: TiposdeservicioCL
Id: TiposServicio
Title: "Código de los tipos de servicio que se atiende"
Description: "Esta extensión incluye códigos de servicios que se entregan de forma remota"
Context: EncounterCL.serviceType
* value[x] only code
* value[x] ^short = "Códigos de Tipos de Servicios de Salud"
* valueCode from VSTiposServicio (extensible)
*/
Extension: EspecialidadCL
Id: VSEspecialidadesDeisCL
Title: "Especialidad del médico principal"
Description: "Esta extensión incluye los códigos de las especialidades que puede tener el medico principal"
Context: EncounterCL.participant

// * ^context.type = #element
// * ^context.expression = "EncounterCL.participant"
* valueCoding from VSEspecialidadesDeisCL (extensible)

Extension: ContactopartCL
Id: ContactoParticipantes
Title: "Contacto de los participantes secundarios del encuentro"
Description: "Esta extensión incluye los códigos de los medios de contacto que se tiene para los participantes secundarios"
Context: EncounterCL.participant
// * ^context[0].type = #element
// * ^context[=].expression = "EncounterCL.participant"

* value[x] only ContactPoint
* value[x] ^short = "Códigos de contactos"
* valueContactPoint.system from VSContactosec 

Extension: RazonNOTatencionCL
Id: RazonNOrealizarse
Title: "Código de las razones por la cual no se pudo realizar la atención"
Description: "Esta extensión incluye códigos de razones por la cuales no pudo llevarse a cabo el encuentro remoto"
Context: EncounterCL.reasonCode, ImmunizationCL.statusReason
// * ^context[0].type = #element
// * ^context[=].expression = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/EncounterCL#Encounter.reasonCode"
// * ^context[+].type = #element
// * ^context[=].expression = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ImmunizationCL#Immunization.statusReason"
* value[x] only code
* value[x] ^short = "Códigos de razones por la cual el encuentro remoto no se pudo realizar"
* valueCode from VSRazonNOT (extensible)

Extension: NotasCL
Id: NotasEncuentro
Title: "Notas realizadas en un encuentro por Comité"
Description: "Esta extensión incluye los códigos de los medios de contacto que se tiene para los participantes secundarios"
Context: EncounterCL

// * ^context.type = #element
// * ^context.expression = "EncounterCL"
* value[x] only string
* value[x] ^short = "Notas realizadas en un encuentro por Comité"

Extension: ObservacionesNotas
Id: ObservacionesDiagnostico
Title: "Observaciones o comentarios simples respecto a un diagnóstico"
Description: "Esta extensión sirve para insertar comentarios acerca a un diagnóstico médico realizado en un encuentro remoto"
Context: EncounterCL.diagnosis
// * ^context.type = #element
// * ^context.expression = "EncounterCL.diagnosis"

* value[x] only string 

Extension: TiposVacunaCL
Id: TiposVacunaRNI
Title: "Código de tipos de Vacunas en Chile"
Description: "Esta extensión incluye códigos de los tipos de vacunas que existe en el Registro Nacional de Inmunizaciones RNI"
Context: ImmunizationCL.vaccineCode

// * ^context.type = #element
// * ^context.expression = "ImmunizationCL.vaccineCode"
* valueCode ^short = "Valor de la extensión"
* valueCode from VSTiposVacunas (extensible)

Extension:  NombreCampanaCL
Id: NombreCampana
Title: "Nombre de la Campaña de vacunación establecida por el RNI (Registro Nacional de Inmunizaciones)"
Description: "Esta extensión incluye los nombres de las distintas Campañas que se realizan y estan registradas en el RNI"
Context: ImmunizationCL

// * ^context.type = #element
// * ^context.expression = "ImmunizationCL"
* valueCoding ^short = "Valor de la extensión"
* valueCoding from VSNombreCampana (extensible)

Extension: RazonNOTinmunizacionCL
Id: RazonNOrealizarseInm
Title: "Razones por las cuales no se pudo realizar la inmunización"
Description: "Esta extensión incluye las razones por la cuales no pudo llevarse a cabo la inmunización" 
Context: ImmunizationCL.statusReason
* value[x] only code
* value[x] ^short = "Códigos de razones por la cual la inmunización no se pudo realizar"
* valueCode from VSRazonNOTinm (extensible)

Extension: ServicioSaludCL
Id: ServicioSalud 
Title: "Sistema Nacional de Servicios de Salud"
Description: "Esta extensión incluye los códigos de los Servicios de Salud que existen en el país"
Context: ImmunizationCL.location

// * ^context.type = #element
// * ^context.expression = "ImmunizationCL.location"
* valueCoding ^short = "Servicios de Salud de Chile"
* valueCoding from VSCodigosServiciosSalud (extensible)

Extension: SegundoApellido
Id: SegundoApellido
Title: "Segundo Apellido"
Description: "Segundo Apellido"
Context: HumanName.family
* value[x] only string



