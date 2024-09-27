# Resources Profile: ProcedureEHRrunner
| URL Canônica: http://ehrrunner.com/fhir/StructureDefinition/ProcedureEhrRunner | Versão: 1.0 |
|------------------------------------------------------------------------------------------------|-------------|
| Ativo desde: 2023-02-10                                                                        | Nome computável: ProcedureEhrruner |


This profile represents the constraints applied to the Procedure resource, specifying an entry for the Procedure History for the iPeS Patient Summary based on the FHIR R4 standard.

## Scope/Usage

This resource is used to record the details of current and historical procedures performed on or for a patient. A procedure is an activity performed on, with, or for a patient as part of care delivery. Examples include:

- Surgical procedures
- Diagnostic procedures
- Endoscopic procedures
- Biopsies
- Counseling
- Physical therapy
- Personal support services

This resource provides summarized information about the occurrence of the procedure and is not intended to provide real-time snapshots of a procedure as it unfolds. However, for long-term procedures such as psychotherapy, it may represent summarized information on overall progress. The creation of a resource to support detailed real-time procedure information awaits identification of a specific use case for sharing such information.

### Misuse

The Procedure resource should not be used to capture an event if a more specific resource already exists—e.g., immunizations, medication administrations, and communications. The boundary between determining if an action is a Procedure (training or counseling) versus Communication is based on the existence of a specific intent to change the patient’s mindset.

### Use Case

The procedures stored in relevant documents of the RNDS of Health Supplementary and other parties that are in "completed" status, recorded up to a year before the request for generating the patient summary, will be displayed in the Patient Summary.

## Extensions

This profile has no extensions.

## Structure Mapping

[http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProcedimentoRealizado-1.0](http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProcedimentoRealizado-1.0) mapped to ProcedureBRIPS.

| **Element**                         | **Card.** | **Description**                                             | **Domain**                            | **Mapping (FHIRPath)**     | **Note** |
|-------------------------------------|-----------|-------------------------------------------------------------|---------------------------------------|----------------------------|----------|
| Procedure.identifier                | 1..1      | Authorization code for the procedure                         | BRTipoIdentificadorProcedimento-1.0   | Fixed at ‘AUTH’             |          |
| Procedure.status                    | 1..1      | Status of the procedure                                      | BREstadoEvento-1.0                   |                            |          |
| Procedure.code                      | 1..1      | Code of the performed procedure                              | BRProcedimentosNacionais-1.0          |                            |          |
| Procedure.patient.reference         | 1..1      | Reference to the individual                                  | Reference:Patient                    |                            |          |
| Procedure.performedDateTime         | 1..1      | Date or datetime the procedure was performed                 |                                       |                            |          |
| Procedure.practitioner.function     | 0..1      | Role performed by the practitioner                           | BROcupacao-1.0                       |                            |          |
| Procedure.practitioner.actor        | 1..1      | Reference to the Practitioner Location, Health Facility, etc |                                       |                            |          |
| Procedure.practitioner.onBehalfOf   | 0..1      | Professional/Institution performing the procedure on behalf  |                                       |                            |          |
| Procedure.note.text                 | 1..1      | Notes on the outcome and observations of the procedure       |                                       |                            |          |

For more information, visit: [https://terminologia.saude.gov.br/#/orgs/MS/collections/BREstadoEvento-1.0/](https://terminologia.saude.gov.br/#/orgs/MS/collections/BREstadoEvento-1.0/).
