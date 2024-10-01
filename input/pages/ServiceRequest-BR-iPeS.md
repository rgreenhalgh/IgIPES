# Perfil FHIR: Solicitação de Serviço - Exames e Procedimentos
| URL Canônica: http://ehrrunner.com/fhir/StructureDefinition/ServiceRequest-BR-iPeS | Versão: 1.0 |
| Ativo desde: 2023-02-10| Nome computável: ServiceRequestEhrRunner |
## Introdução
O recurso `ServiceRequest` é utilizado para representar uma solicitação de serviço clínico ou administrativo. Este perfil é essencial para a comunicação entre diferentes sistemas de saúde, garantindo que as solicitações sejam compreendidas e processadas corretamente. O Perfil `Solicitação de Serviço - Exames e Procedimentos` da plataforma iPeS é uma especialização desse recurso, criada para atender casos de uso específicos do cenário brasileiro

## Escopo
O `ServiceRequest` abrange solicitações de serviços clínicos, como exames laboratoriais, procedimentos de imagem, consultas médicas, mas podeser utilizado para serviços administrativos, como transferências de pacientes e solicitações de documentos. Ele é utilizado tanto em contextos ambulatoriais quanto hospitalares.ServiceRequest representa uma ordem ou proposta ou plano, como distinguido por ServiceRequest.intent para executar um diagnóstico ou outro serviço em ou para um paciente. ServiceRequest representa uma proposta ou plano ou ordem para um serviço a ser executado que resultaria em um Procedure ou DiagnosticReport , que por sua vez pode referenciar uma ou mais Observations , que resumem o desempenho dos procedimentos e documentação associada, como observações, imagens, descobertas que são relevantes para o tratamento/gerenciamento do sujeito. Este recurso pode ser usado para compartilhar informações relevantes necessárias para dar suporte a uma referência ou uma transferência de solicitação de atendimento de um profissional ou organização para outro quando um paciente precisa ser encaminhado a outro provedor para uma consulta/segunda opinião e/ou para gerenciamento de curto ou longo prazo de um ou mais problemas ou questões de saúde.

## Casos de Uso do Perfil Solicitações de Exames e Procedimentos
**Solicitação de Exames e Procedimentos**
###**Exemplos**
- Testes/estudos de diagnóstico
- procedimentos endoscópicos
- aconselhamento
- biópsias
- terapias (por exemplo, fisio-, social-, psicológica-)
- cirurgias ou procedimentos (exploratórios)
- exercícios
- consulta e avaliações especializadas
- serviços comunitários
- serviços de enfermagem
- revisão de medicamentos farmacêuticos e
- outras intervenções clínicas.
Os procedimentos podem ser realizados por um profissional de saúde, um amigo ou parente ou, em alguns casos, pelo próprio paciente.
A principal intenção do `ServiceRequest` é dar suporte a procedimentos de pedidos para um paciente (o que inclui pacientes não humanos em medicina veterinária). No entanto, em muitos contextos, os processos relacionados à assistência médica incluem a realização de investigações diagnósticas em grupos de indivíduos, dispositivos envolvidos na prestação de assistência médica e até mesmo locais ambientais, como dutos, corpos d'água, etc. O `ServiceRequest` dá suporte a todos esses usos. A solicitação de serviço pode representar um pedido inserido por um profissional em um sistema de prescrição, bem como uma proposta feita por um sistema de suporte à decisão clínica (CDS) com base no registro clínico de um paciente e no contexto de atendimento. Procedimentos planejados referenciados por um `CarePlan` também podem ser representados por este recurso.

O fluxo de trabalho geral que este recurso facilita é que um sistema clínico cria uma solicitação de serviço. A solicitação de serviço é então acessada ou trocada com um sistema, talvez por meio de intermediários, que representa uma organização (por exemplo, serviço de diagnóstico ou imagem, equipe cirúrgica, departamento de fisioterapia) que pode executar o procedimento. A organização que recebe a solicitação de serviço, após aceitar a solicitação, atualizará a solicitação conforme o trabalho for executado e, finalmente, emitirá um relatório que faz referência às solicitações que ela atendeu.

O recurso`ServiceRequest` permite solicitar apenas um único procedimento. Se um fluxo de trabalho exigir a solicitação de vários procedimentos simultaneamente, isso será feito usando várias instâncias desse recurso. Essas instâncias podem ser vinculadas de diferentes maneiras, dependendo das necessidades do fluxo de trabalho. Para obter orientação, consulte o Padrão de solicitação
## Uso Indevido
- **Solicitações Não Clínicas**: Não deve ser utilizado para solicitações que não estejam relacionadas a serviços de saúde, como pedidos de informações gerais.
- **Solicitações Duplicadas**: Evitar a criação de solicitações duplicadas para o mesmo serviço, a menos que haja uma justificativa clínica clara.

## Limites e Fronteiras com Outros Recursos
ServiceRequest é um registro de uma proposta/plano ou ordem para um serviço a ser executado que resultaria em um Procedimento , Observação , Laudo Diagnóstico , Exame de Imagem ou recurso similar.
 Enquanto o `ServiceRequest` representa a solicitação de um serviço, o recurso `Task` é utilizado para acompanhar e gerenciar a execução dessa solicitação. Um ServiceRequest pode ser uma autorização de nível superior que acionou a criação de Task ou pode ser o recurso de "solicitação" que Task está buscando atender. Para obter mais informações sobre essa separação de responsabilidades entre ServiceRequest e Task, consulte a seção Fulfillment/Execution do padrão Request.

ServiceRequest e `CommunicationRequest` estão relacionados. Um CommunicationRequest é uma solicitação para meramente divulgar informações. Enquanto um ServiceRequest seria usado para solicitar informações como parte de treinamento ou aconselhamento - ou seja, quando o processo envolverá a verificação da compreensão do paciente ou uma tentativa de mudar o estado mental do paciente. Em alguns fluxos de trabalho, ambos podem existir. Por exemplo, ao receber um CommunicationRequest, um profissional pode iniciar um ServiceRequest.
O `Procedure` documenta a realização de um procedimento solicitado por um `ServiceRequest`.
 O `DiagnosticReport` é utilizado para relatar os resultados de exames solicitados por um `ServiceRequest`.
 O `Appointment` é utilizado para agendar serviços solicitados por um `ServiceRequest`.

**Elementos**

- **Descrição**: Um identificador único para a solicitação de serviço.
- **Tipo de Dados**: `Identifier`
- **Cardinalidade**: `0..*`
- **Must Support**: Sim
- **Exemplo**: `12345`

### Status
- **Descrição**: O estado atual da solicitação.
- **Tipo de Dados**: `code`
- **Cardinalidade**: `1..1`
- **Must Support**: Sim
- **Valores Possíveis**: `active`, `completed`, `entered-in-error`, `cancelled`
- **Exemplo**: `active`

### Intent
- **Descrição**: A intenção da solicitação.
- **Tipo de Dados**: `code`
- **Cardinalidade**: `1..1`
- **Must Support**: Sim
- **Valores Possíveis**: `order`, `plan`, `proposal`
- **Exemplo**: `order`

### Category
**Descrição**: A categoria da solicitação.
- **Tipo de Dados**: `CodeableConcept`
- **Cardinalidade**: `1..1`
- **Must Support**: Sim
- **Exemplo**: `Ambulatorial`
- **Link de Referência**: CodeableConcept

### Código
- **Descrição**: O código que especifica o serviço solicitado.
- **Tipo de Dados**: `CodeableConcept`
- **Cardinalidade**: `0..1`
- **Must Support**: Sim
- **Exemplo**: `Hemograma`
- **Link de Referência**: CodeableConcept

### Subject
- **Descrição**: O paciente ou entidade para quem o serviço é solicitado.
- **Tipo de Dados**: `Reference(Patient)`
- **Cardinalidade**: `1..1`
- **Must Support**: Sim
- **Exemplo**: `Patient/123`
- **Link de Referência**: Reference

### Solicitante
- **Descrição**: A pessoa ou organização que solicita o serviço.
- **Tipo de Dados**: `Reference(Practitioner|Organization)`
- **Cardinalidade**: `0..1`
- **Must Support**: Sim
- **Exemplo**: `Practitioner/456`
- **Link de Referência**: Reference

### Motivo
- **Descrição**: A razão pela qual o serviço é solicitado.
- **Tipo de Dados**: `CodeableConcept`
- **Cardinalidade**: `0..*`
- **Must Support**: Sim
- **Exemplo**: `Suspeita de Dengue`
- **Link de Referência**: CodeableConcept

### Specimen
 **Descrição**: O paciente ou entidade para quem o serviço é solicitado.
- **Tipo de Dados**: `Reference(Specimen)`
- **Cardinalidade**: `1..1`
- **Must Support**: Sim
- **Exemplo**: `Sangue`
- **Link de Referência**: Reference


## Structure Definition

```json
{
    "resourceType": "StructureDefinition",
    "url": "https://ehrrunner.com/fhir/StructureDefinition/ServiceRequest",
    "version": "1.0",
    "name": "ServiceRequest",
    "title": "Solicitação de Serviço - Exames e Procedimentos",
    "status": "draft",
    "date": "2023-11-04T17:46:04.4163856+00:00",
    "fhirVersion": "4.0.1",
    "kind": "resource",
    "abstract": false,
    "type": "ServiceRequest",
    "baseDefinition": "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
    "derivation": "constraint",
    "differential": {
        "element":  [
            {
                "id": "ServiceRequest.contained",
                "path": "ServiceRequest.contained",
                "slicing": {
                    "discriminator":  [
                        {
                            "type": "pattern",
                            "path": "$this"
                        }
                    ],
                    "rules": "open"
                },
                "max": "1"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained",
                "path": "ServiceRequest.contained",
                "sliceName": "practitionerContained",
                "short": "Profissional",
                "definition": "Profissional requisitante, identificado pelo seu CPF, CNS ou Registro em Conselho Profissional.",
                "max": "1",
                "type":  [
                    {
                        "code": "Resource",
                        "profile":  [
                            "http://hl7.org/fhir/StructureDefinition/Practitioner"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.id",
                "path": "ServiceRequest.contained.id",
                "fixedString": "practitioner"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.meta",
                "path": "ServiceRequest.contained.meta",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.implicitRules",
                "path": "ServiceRequest.contained.implicitRules",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.language",
                "path": "ServiceRequest.contained.language",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.text",
                "path": "ServiceRequest.contained.text",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.contained",
                "path": "ServiceRequest.contained.contained",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier",
                "path": "ServiceRequest.contained.identifier",
                "slicing": {
                    "discriminator":  [
                        {
                            "type": "pattern",
                            "path": "$this"
                        }
                    ],
                    "rules": "open"
                }
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cns",
                "path": "ServiceRequest.contained.identifier",
                "sliceName": "cns",
                "max": "1"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cns.use",
                "path": "ServiceRequest.contained.identifier.use",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cns.type",
                "path": "ServiceRequest.contained.identifier.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cns.system",
                "path": "ServiceRequest.contained.identifier.system",
                "min": 1,
                "fixedUri": "urn:oid:2.16.840.1.113883.13.236"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cns.value",
                "path": "ServiceRequest.contained.identifier.value",
                "short": "CNS do profissional",
                "min": 1
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cns.period",
                "path": "ServiceRequest.contained.identifier.period",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cns.assigner",
                "path": "ServiceRequest.contained.identifier.assigner",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cpf",
                "path": "ServiceRequest.contained.identifier",
                "sliceName": "cpf",
                "max": "1"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cpf.use",
                "path": "ServiceRequest.contained.identifier.use",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cpf.type",
                "path": "ServiceRequest.contained.identifier.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cpf.system",
                "path": "ServiceRequest.contained.identifier.system",
                "min": 1,
                "fixedUri": "urn:oid:2.16.840.1.113883.13.237"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cpf.value",
                "path": "ServiceRequest.contained.identifier.value",
                "short": "CPF do profissional",
                "min": 1
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cpf.period",
                "path": "ServiceRequest.contained.identifier.period",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:cpf.assigner",
                "path": "ServiceRequest.contained.identifier.assigner",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional",
                "path": "ServiceRequest.contained.identifier",
                "sliceName": "registroProfissional"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional.use",
                "path": "ServiceRequest.contained.identifier.use",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional.type",
                "path": "ServiceRequest.contained.identifier.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional.system",
                "path": "ServiceRequest.contained.identifier.system",
                "short": "Namespace para registros de identificação civil",
                "definition": "Namespace para registros de identificação civil.",
                "min": 1,
                "fixedUri": "urn:oid:2.16.840.1.113883.13.243"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional.value",
                "path": "ServiceRequest.contained.identifier.value",
                "short": "Número do registro",
                "min": 1
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional.period",
                "path": "ServiceRequest.contained.identifier.period",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional.assigner",
                "path": "ServiceRequest.contained.identifier.assigner"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.identifier:registroProfissional.assigner.display",
                "path": "ServiceRequest.contained.identifier.assigner.display",
                "min": 1
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.active",
                "path": "ServiceRequest.contained.active",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.telecom",
                "path": "ServiceRequest.contained.telecom",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.address",
                "path": "ServiceRequest.contained.address",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.gender",
                "path": "ServiceRequest.contained.gender",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.birthDate",
                "path": "ServiceRequest.contained.birthDate",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.photo",
                "path": "ServiceRequest.contained.photo",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.qualification",
                "path": "ServiceRequest.contained.qualification",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:practitionerContained.communication",
                "path": "ServiceRequest.contained.communication",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained",
                "path": "ServiceRequest.contained",
                "sliceName": "organizationContained",
                "short": "Organização",
                "definition": "Organização requisitante, identificada pelo seu CNES.",
                "max": "1",
                "type":  [
                    {
                        "code": "Resource",
                        "profile":  [
                            "http://hl7.org/fhir/StructureDefinition/Organization"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.contained:organizationContained.id",
                "path": "ServiceRequest.contained.id",
                "fixedString": "organization"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.meta",
                "path": "ServiceRequest.contained.meta",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.implicitRules",
                "path": "ServiceRequest.contained.implicitRules",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.language",
                "path": "ServiceRequest.contained.language",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.text",
                "path": "ServiceRequest.contained.text",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.contained",
                "path": "ServiceRequest.contained.contained",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier",
                "path": "ServiceRequest.contained.identifier",
                "slicing": {
                    "discriminator":  [
                        {
                            "type": "pattern",
                            "path": "$this"
                        }
                    ],
                    "rules": "open"
                }
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier:cnes",
                "path": "ServiceRequest.contained.identifier",
                "sliceName": "cnes",
                "max": "1"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier:cnes.use",
                "path": "ServiceRequest.contained.identifier.use",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier:cnes.type",
                "path": "ServiceRequest.contained.identifier.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier:cnes.system",
                "path": "ServiceRequest.contained.identifier.system",
                "min": 1,
                "fixedUri": "urn:oid:2.16.840.1.113883.13.36"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier:cnes.value",
                "path": "ServiceRequest.contained.identifier.value",
                "short": "CNES da organização",
                "min": 1
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier:cnes.period",
                "path": "ServiceRequest.contained.identifier.period",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.identifier:cnes.assigner",
                "path": "ServiceRequest.contained.identifier.assigner",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.active",
                "path": "ServiceRequest.contained.active",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.type",
                "path": "ServiceRequest.contained.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.telecom",
                "path": "ServiceRequest.contained.telecom",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.address",
                "path": "ServiceRequest.contained.address",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.partOf",
                "path": "ServiceRequest.contained.partOf",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.contact",
                "path": "ServiceRequest.contained.contact",
                "max": "0"
            },
            {
                "id": "ServiceRequest.contained:organizationContained.endpoint",
                "path": "ServiceRequest.contained.endpoint",
                "max": "0"
            },
            {
                "id": "ServiceRequest.identifier",
                "path": "ServiceRequest.identifier",
                "slicing": {
                    "discriminator":  [
                        {
                            "type": "pattern",
                            "path": "system"
                        }
                    ],
                    "rules": "open"
                },
                "max": "1"
            },
            {
                "id": "ServiceRequest.identifier:localIdentifier",
                "path": "ServiceRequest.identifier",
                "sliceName": "localIdentifier",
                "short": "Identificador do registro no sistema de origem",
                "min": 1,
                "max": "1"
            },
            {
                "id": "ServiceRequest.identifier:localIdentifier.use",
                "path": "ServiceRequest.identifier.use",
                "max": "0"
            },
            {
                "id": "ServiceRequest.identifier:localIdentifier.type",
                "path": "ServiceRequest.identifier.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.identifier:localIdentifier.system",
                "path": "ServiceRequest.identifier.system",
                "short": "Identificador único do sistema de origem",
                "definition": "URL ou OID da instância/sistema de origem - fornecido pela plataforma.",
                "min": 1
            },
            {
                "id": "ServiceRequest.identifier:localIdentifier.value",
                "path": "ServiceRequest.identifier.value",
                "short": "Identificador do registro no sistema de origem",
                "definition": "Identificador do registro no sistema de origem",
                "min": 1
            },
            {
                "id": "ServiceRequest.identifier:localIdentifier.period",
                "path": "ServiceRequest.identifier.period",
                "max": "0"
            },
            {
                "id": "ServiceRequest.identifier:localIdentifier.assigner",
                "path": "ServiceRequest.identifier.assigner",
                "max": "0"
            },
            {
                "id": "ServiceRequest.instantiatesCanonical",
                "path": "ServiceRequest.instantiatesCanonical",
                "max": "0"
            },
            {
                "id": "ServiceRequest.instantiatesUri",
                "path": "ServiceRequest.instantiatesUri",
                "max": "0"
            },
            {
                "id": "ServiceRequest.basedOn",
                "path": "ServiceRequest.basedOn",
                "max": "0"
            },
            {
                "id": "ServiceRequest.replaces",
                "path": "ServiceRequest.replaces",
                "max": "0"
            },
            {
                "id": "ServiceRequest.category",
                "path": "ServiceRequest.category",
                "slicing": {
                    "discriminator":  [
                        {
                            "type": "pattern",
                            "path": "$this"
                        }
                    ],
                    "rules": "open"
                }
            },
            {
                "id": "ServiceRequest.category:category",
                "path": "ServiceRequest.category",
                "sliceName": "category",
                "max": "1"
            },
            {
                "id": "ServiceRequest.category:category.coding",
                "path": "ServiceRequest.category.coding",
                "min": 1,
                "max": "1"
            },
            {
                "id": "ServiceRequest.category:category.coding.system",
                "path": "ServiceRequest.category.coding.system",
                "min": 1,
                "fixedUri": "http://ehrrunner.com/fhir/CodeSystem/ServiceRequestCategory"
            },
            {
                "id": "ServiceRequest.category:category.coding.version",
                "path": "ServiceRequest.category.coding.version",
                "max": "0"
            },
            {
                "id": "ServiceRequest.category:category.coding.code",
                "path": "ServiceRequest.category.coding.code",
                "min": 1,
                "fixedCode": "SADT"
            },
            {
                "id": "ServiceRequest.category:category.coding.display",
                "path": "ServiceRequest.category.coding.display",
                "fixedString": "Serviço Auxiliar de Diagnóstico ou Terapia"
            },
            {
                "id": "ServiceRequest.category:category.coding.userSelected",
                "path": "ServiceRequest.category.coding.userSelected",
                "max": "0"
            },
            {
                "id": "ServiceRequest.category:category.text",
                "path": "ServiceRequest.category.text",
                "max": "0"
            },
            {
                "id": "ServiceRequest.doNotPerform",
                "path": "ServiceRequest.doNotPerform",
                "max": "0"
            },
            {
                "id": "ServiceRequest.code",
                "path": "ServiceRequest.code",
                "short": "Código(s) do(s) exame(s) solicitado(s)",
                "definition": "Contém o código do exame solicitado, se disponível (um único código) ou a concatenação de códigos (tipicamente, mneumônicos) para identificação rápida dos exames solicitados.",
                "binding": {
                    "strength": "preferred",
                    "valueSet": "http://www.saude.gov.br/fhir/r4/ValueSet/BRProcedimentosNacionais-1.0"
                }
            },
            {
                "id": "ServiceRequest.orderDetail",
                "path": "ServiceRequest.orderDetail",
                "short": "Código dos exames solicitados",
                "definition": "Códigos dos exames solicitados (listados um a um). Pode incluir códigos padronizados (tabela SUS ou TUSS) ou códigos locais, usados nos sistemas S-RES ou LIS/RIS/PACS.",
                "binding": {
                    "strength": "preferred",
                    "valueSet": "http://www.saude.gov.br/fhir/r4/ValueSet/BRProcedimentosNacionais-1.0"
                }
            },
            {
                "id": "ServiceRequest.orderDetail.coding",
                "path": "ServiceRequest.orderDetail.coding",
                "slicing": {
                    "discriminator":  [
                        {
                            "type": "type",
                            "path": "$this"
                        }
                    ],
                    "rules": "open"
                }
            },
            {
                "id": "ServiceRequest.orderDetail.coding:referenceCode",
                "path": "ServiceRequest.orderDetail.coding",
                "sliceName": "referenceCode",
                "short": "Código nas terminologias do SUS (Tabela SUS ou TUSS)",
                "max": "1",
                "binding": {
                    "strength": "preferred",
                    "valueSet": "http://www.saude.gov.br/fhir/r4/ValueSet/BRProcedimentosNacionais-1.0"
                }
            },
            {
                "id": "ServiceRequest.orderDetail.coding:referenceCode.userSelected",
                "path": "ServiceRequest.orderDetail.coding.userSelected",
                "max": "0"
            },
            {
                "id": "ServiceRequest.orderDetail.coding:localCode",
                "path": "ServiceRequest.orderDetail.coding",
                "sliceName": "localCode",
                "short": "Código local do exame (procedimento)"
            },
            {
                "id": "ServiceRequest.quantity[x]",
                "path": "ServiceRequest.quantity[x]",
                "max": "0"
            },
            {
                "id": "ServiceRequest.subject",
                "path": "ServiceRequest.subject",
                "type":  [
                    {
                        "code": "Reference",
                        "targetProfile":  [
                            "http://ehrrunner.com/fhir/StructureDefinition/Patient"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.subject.reference",
                "path": "ServiceRequest.subject.reference",
                "min": 1
            },
            {
                "id": "ServiceRequest.subject.type",
                "path": "ServiceRequest.subject.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.subject.identifier",
                "path": "ServiceRequest.subject.identifier",
                "max": "0"
            },
            {
                "id": "ServiceRequest.subject.display",
                "path": "ServiceRequest.subject.display",
                "max": "0"
            },
            {
                "id": "ServiceRequest.encounter",
                "path": "ServiceRequest.encounter",
                "type":  [
                    {
                        "code": "Reference",
                        "targetProfile":  [
                            "http://ehrrunner.com/fhir/StructureDefinition/Encounter"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.requester",
                "path": "ServiceRequest.requester",
                "slicing": {
                    "discriminator":  [
                        {
                            "type": "pattern",
                            "path": "$this"
                        }
                    ],
                    "rules": "open"
                },
                "type":  [
                    {
                        "code": "Reference",
                        "targetProfile":  [
                            "http://hl7.org/fhir/StructureDefinition/Practitioner",
                            "http://hl7.org/fhir/StructureDefinition/Organization"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.requester:practitioner",
                "path": "ServiceRequest.requester",
                "sliceName": "practitioner",
                "short": "Requisitante",
                "definition": "Profissional requisitante, identificado pelo seu CPF ou CNS.",
                "type":  [
                    {
                        "code": "Reference",
                        "targetProfile":  [
                            "http://hl7.org/fhir/StructureDefinition/Practitioner"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.requester:practitioner.reference",
                "path": "ServiceRequest.requester.reference",
                "short": "Profissional requisitante",
                "definition": "Referência literal e relativa para o profissional. A referência é feita no formato: \"reference\":\"Practitioner/2.16.840.1.113883.13.237-{{cpf}}\" ou \"reference\":\"Practitioner/2.16.840.1.113883.13.236-{{cns}}\"."
            },
            {
                "id": "ServiceRequest.requester:practitioner.type",
                "path": "ServiceRequest.requester.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:practitioner.identifier",
                "path": "ServiceRequest.requester.identifier",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:practitioner.display",
                "path": "ServiceRequest.requester.display",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:practitionerContained",
                "path": "ServiceRequest.requester",
                "sliceName": "practitionerContained",
                "type":  [
                    {
                        "code": "Reference",
                        "targetProfile":  [
                            "http://hl7.org/fhir/StructureDefinition/Practitioner"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.requester:practitionerContained.reference",
                "path": "ServiceRequest.requester.reference",
                "min": 1,
                "fixedString": "#practitioner"
            },
            {
                "id": "ServiceRequest.requester:practitionerContained.type",
                "path": "ServiceRequest.requester.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:practitionerContained.identifier",
                "path": "ServiceRequest.requester.identifier",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:practitionerContained.display",
                "path": "ServiceRequest.requester.display",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:organization",
                "path": "ServiceRequest.requester",
                "sliceName": "organization",
                "short": "Requisitante",
                "definition": "Organização requisitante, identificada pelo seu CNES.",
                "type":  [
                    {
                        "code": "Reference",
                        "targetProfile":  [
                            "http://hl7.org/fhir/StructureDefinition/Organization"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.requester:organization.reference",
                "path": "ServiceRequest.requester.reference",
                "short": "Organização requisitante",
                "definition": "Referência literal e relativa para a organização. A referência é feita no formato: \"reference\":\"Organization/2.16.840.1.113883.13.36-{{cnes}}\"."
            },
            {
                "id": "ServiceRequest.requester:organization.type",
                "path": "ServiceRequest.requester.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:organization.identifier",
                "path": "ServiceRequest.requester.identifier",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:organization.display",
                "path": "ServiceRequest.requester.display",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:organizationContained",
                "path": "ServiceRequest.requester",
                "sliceName": "organizationContained",
                "type":  [
                    {
                        "code": "Reference",
                        "targetProfile":  [
                            "http://hl7.org/fhir/StructureDefinition/Organization"
                        ]
                    }
                ]
            },
            {
                "id": "ServiceRequest.requester:organizationContained.reference",
                "path": "ServiceRequest.requester.reference",
                "min": 1,
                "fixedString": "#organization"
            },
            {
                "id": "ServiceRequest.requester:organizationContained.type",
                "path": "ServiceRequest.requester.type",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:organizationContained.identifier",
                "path": "ServiceRequest.requester.identifier",
                "max": "0"
            },
            {
                "id": "ServiceRequest.requester:organizationContained.display",
                "path": "ServiceRequest.requester.display",
                "max": "0"
            },
            {
                "id": "ServiceRequest.performerType",
                "path": "ServiceRequest.performerType",
                "max": "0"
            },
            {
                "id": "ServiceRequest.performer",
                "path": "ServiceRequest.performer",
                "max": "0"
            },
            {
                "id": "ServiceRequest.locationCode",
                "path": "ServiceRequest.locationCode",
                "max": "0"
            },
            {
                "id": "ServiceRequest.locationReference",
                "path": "ServiceRequest.locationReference",
                "max": "0"
            },
            {
                "id": "ServiceRequest.reasonCode",
                "path": "ServiceRequest.reasonCode",
                "binding": {
                    "strength": "required",
                    "valueSet": "http://www.saude.gov.br/fhir/r4/ValueSet/BRCID10-1.0"
                }
            },
            {
                "id": "ServiceRequest.reasonReference",
                "path": "ServiceRequest.reasonReference",
                "max": "0"
            },
            {
                "id": "ServiceRequest.insurance",
                "path": "ServiceRequest.insurance",
                "max": "0"
            },
            {
                "id": "ServiceRequest.supportingInfo",
                "path": "ServiceRequest.supportingInfo",
                "max": "0"
            },
            {
                "id": "ServiceRequest.specimen",
                "path": "ServiceRequest.specimen",
                "max": "1"
            },
            {
                "id": "ServiceRequest.bodySite",
                "path": "ServiceRequest.bodySite",
                "max": "0"
            },
            {
                "id": "ServiceRequest.note.id",
                "path": "ServiceRequest.note.id",
                "max": "0"
            },
            {
                "id": "ServiceRequest.note.author[x]",
                "path": "ServiceRequest.note.author[x]",
                "max": "0"
            },
            {
                "id": "ServiceRequest.note.time",
                "path": "ServiceRequest.note.time",
                "max": "0"
            },
            {
                "id": "ServiceRequest.relevantHistory",
                "path": "ServiceRequest.relevantHistory",
                "max": "0"
            }
        ]
    }
}
