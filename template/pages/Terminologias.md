

# Terminologias

Vários valores codificados que são usados para descrever conceitos clínicos dentro de registros de saúde, bem omo códigos usados dentro de mensagens para atender aos requisitos estruturais das interfaces. Consulte Terminologia para obter informações sobre a terminologia usada neste IG.

Essas terminologias se restringem as criadas ou utilizadas para o fim específico desse IG e usam as terminologias usadas pela RNDS  e outras específicas da Regulação Assistencial, que utilizam terminologias do FHIR canônico sempre que possível.

## Terminologias: Conjunto de valores

| **Conjunto de valores**          | **Descrição**                                                                 | **Perfil**                               | **Força de Ligação** |
| **BROcupacao-1.0**               | Define códigos que indicam a função de um Practitioner                         | Regulação Assistencial (MIRA)            | Required            |
| **Especialidade**                | Define especialidade médica                                                   | Regulação Assistencial (MIRA)            | Preferred           |
| **Área de atuação**              | Define área de atuação médica                                                 | Regulação Assistencial (MIRA)            | Preferred           |
| **Motivo da solicitação**        | Código que indica o motivo da solicitação ou tarefa (CID 10)                  | Regulação Assistencial (MIRA)            | Required            |
| **Modalidade Assistencial (MIRA)**| Define a modalidade assistencial da regulação                                 | Regulação Assistencial (MIRA)            | Required            |
| **Request-status**               | Código que indica o estágio do ciclo de vida de uma solicitação               | ServiceRequest.status                    | Required            |
| **Request-intent**               | Código que indica o grau de autoridade/intencionalidade de uma solicitação    | ServiceRequest.intent                    | Required            |
| **ServiceRequestCategoryCodes**  | Classificação da Solicitação de Exames, Procedimentos ou Referência           | ServiceRequest.category                  | Example             |
| **Request-priority**             | Define a prioridade clínica de uma solicitação                                | ServiceRequest.priority                  | Required            |
| **BRProcedimentosNacionais-1.0** | Código do serviço solicitado                                                  | ServiceRequest.code, Procedure.code      | Preferred           |
| **ServiceRequest-orderdetail**   | Exemplo de conceito de detalhes de solicitação, como solicitação de ventilação | ServiceRequest.orderDetail               | Example             |
| **Encounter-participant-type**   | Define códigos que indicam como um indivíduo participa de um contato assistencial | Appointment.participant                  | Required            |
| **ParticipationStatus**          | O estado de participação de um ator em um agendamento                         | Appointment.participant.status           | Required            |
| **Participantrequired**          | Profissional de saúde que deve estar presente no agendamento                  | Appointment.participant.required         | Required            |
| **Event-status**                 | Código que identifica o estágio do ciclo de vida de um evento                 | Procedure.status                         | Required            |
| **BRParentesco-1.0**             | Define o parentesco e grau de parentesco de um indivíduo                      | Patient.extension:parents                | Required            |
| **BRRacaCor-1.0**                | Raça ou cor autorreferenciada por um indivíduo                                | Patient.extension:raceEthnicity          | Required            |
| **BREtniaIndigena-1.0**          | Etnia indígena atribuída a um indivíduo                                       | Patient.extension:raceEthnicity          | Required            |
| **BirthCountry-1.0**             | País de nascimento                                                            | Patient.extension:citizenship            | Preferred           |
| **Gender-identity**              | Define códigos que indicam a identidade de gênero de um paciente              | Patient.extension:genderIdentity         | Example             |
| **BRMunicipio-1.0**              | Município de nascimento (apenas para nascidos no Brasil)                      | Patient.extension:raceEthnicity          | Required            |
| **Bundle Type**                  | Indica a finalidade de um pacote                                               | Bundle.type                              | Required            |
| **ConditionCategory**            | Categoria atribuída à condição                                                | Condition.category                       | Extensible          |
| **ConditionClinicalStatus**      | Estado clínico da condição                                                    | Condition.clinicalStatus                 | Required            |
| **ProblemaDiagnóstico**          | Representa problemas clínicos, condições, diagnósticos, sintomas, etc.        | Condition.code                           | Extensible          |
| **ConditionVerificationStatus**  | Status de verificação do estado clínico                                       | Condition.verificationStatus             | Required            |
| **ContactEntityType**            | Indica a finalidade de um contato                                             | Organization.contact.purpose             | Extensible          |
| **ContactPoint:system**          | Formulário de telecomunicações para ponto de contato                          | MessageHeader.source.contact.system      | Required            |
| **ContactPointUse**              | Utilização do ponto de contato                                                | MessageHeader.source.contact.use         | Required            |
| **IdentifierType**               | Códigos suportados para determinar qual identificador usar para uma finalidade | Patient.identifier.type                  | Extensible          |
| **IdentifierUse**                | Códigos suportados para identificar a finalidade de um identificador           | HealthcareService.identifier.use         | Extensible          |
| **Idioma**                       | Idiomas compreendidos ou suportados                                           | Patient.communication.language           | Preferred           |
| **MaritalStatus**                | Estado civil de uma pessoa                                                    | Patient.maritalStatus                    | Extensible          |
| **Status narrativo**             | Status da narrativa gerada                                                    | Appointment.text.status                  | Required            |
| **Tipo de organização**          | Códigos que indicam o tipo de organização                                     | Organization.type                        | Example             |
| **Status de Participação**       | Status de participação do ator                                                | Appointment.participant.status           | Required            |
| **PacienteContatoRelacionamento**| Relação entre paciente e pessoa de contato                                    | Patient.contact.relationship             | Extensible          |
| **PractitionerQualification**    | Qualificação do profissional de saúde                                         | Practitioner.qualification.code          | Preferred           |
| **Especialidade**                | Especialidade clínica do clínico                                              | PractitionerRole.specialty               | Required            |
| **BROcupacao-1.0**               | Define códigos que indicam a função de um Practitioner                        | Practitioner.qualification:cbo.code      | Required            |
| **AreaAtuacao**                  | Representação codificada da qualificação do profissional                      | Practitioner.qualification:fieldOfPractice| Required            |
| **ehrrunner-role**               | Funções autorizadas para o profissional na organização                        | PractitionerRole.code:ehrrunnerRole      | Required            |
| **ReferralSourceTypes**          | Identificação do Tipo de Fonte de Referência                                  | ServiceRequest.extension-RoutingOptions  | Extensible          |
| **RequestIntent**                | Grau de autoridade/intencionalidade de uma solicitação                        | ServiceRequest.intent                    | Required            |
| **RequesPriority**               | Nível de importância de uma solicitação                                       | ServiceRequest.priority                  | Required            |
| **Requeststatus**                | Estágio do ciclo de vida de uma solicitação                                   | ServiceRequest.status                    | Required            |
| **ServiceRequestCategory**       | Classificação do serviço                                                      | ServiceRequest.category                  | Example             |
| **BRProcedimentosNacionais-1.0** | Código do procedimento                                                        | Procedure.code                           | Required            |
| **TaskBusinessStatus**           | Estado de negócio de uma tarefa                                               | Task.businessStatus.coding.code          | Required            |

## Terminologia: Sistemas de códigos

