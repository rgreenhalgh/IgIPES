# Guia de Implementação FHIR para a Plataforma Ipes.tech

## 1. Introdução

 A plataforma **iPES** oferece um ecossistema digital abrangente que é compatível com a Rede Nacional de Dados de Saúde (RNDS) e o SUS Digital. Ela permite que diferentes participantes do setor de saúde, como estados, municípios, operadoras de planos de saúde, redes de prestadores, hospitais públicos e privados, possam implementar soluções integradas para a troca, agregação e análise de dados. A plataforma facilita a coordenação e continuidade do cuidado aos cidadãos brasileiros, apoiando a interoperabilidade entre os sistemas de saúde e promovendo a eficiência no atendimento.

A iPES está alinhada com a arquitetura de RES e tem como objetivo criar um ecossistema digital de saúde nacional que cumpra os princípios do SUS, garantindo uma cobertura universal de saúde de maneira eficiente, acessível, inclusiva, econômica, segura e oportuna. Ao adotar padrões abertos e interoperáveis, a iPES.tech garante a integridade, segurança, confidencialidade e privacidade dos dados de saúde, de acordo com as diretrizes estabelecidas pelo Ministério da Saúde no contexto da transformação digital na saúde. A plataforma também adota o padrão **FHIR (Fast Healthcare Interoperability Resources)** com o objetivo de promover a interoperabilidade de dados em saúde.

Este guia foi desenvolvido para fornecer orientações a desenvolvedores, provedores de serviços de saúde, fornecedores de sistemas de informação em saúde e outras partes interessadas na implementação de serviços de saúde digital usando o FHIR de forma eficaz.

 
### 1.1 Objetivos
- Garantir a troca segura e eficiente de dados de saúde.
- Adotar práticas padronizadas de interoperabilidade baseadas no FHIR.
- Prover diretrizes claras para integrar sistemas com a plataforma Ipes.

## 2. Visão Geral do FHIR
O FHIR é um padrão desenvolvido pela HL7 que visa simplificar a troca de dados clínicos entre diferentes sistemas, permitindo que informações essenciais sejam compartilhadas de forma rápida e segura. Ele é amplamente adotado por plataformas de saúde digital em todo o mundo para facilitar a interoperabilidade. Plataformas de RES têm como objetivo centralizar, compartilhar e gerenciar informações clínicas de pacientes de forma eletrônica. Utilizar o FHIR (Fast Healthcare Interoperability Resources), na  plataforma iPES permite uma troca de dados padronizada e interoperável entre diversas instituições e sistemas de saúde.

Este guia descreve os principais recursos da plataforma de RES iPES, explorando as funcionalidades e como elas podem ser implementadas usando as APIs FHIR.

### 2.1 Estrutura do FHIR
O FHIR é baseado em **recursos** (Resources) que representam dados clínicos e administrativos. Cada recurso pode ser utilizado de forma independente ou em conjunto com outros para construir soluções de interoperabilidade.

### 2.2 Versão FHIR Utilizada
A plataforma iPES implementa a versão **FHIR R4**. Todas as referências neste guia se aplicam a esta versão.

## 3. Modelos de Informação e Perfis

Esta especificação faz uso significativo de Artefatos FHIR para descrever a estrutura e o conteúdo das mensagens a serem trocadas, bem como o comportamento dos sistemas participantes neste guia de implementação.

### Tipo de Artefato e Uso

| **Tipo de Artefato** | **Usar** |
|----------------------|----------|
| **StructureDefinitions (Perfis e Extensões)** | Especifica restrições e extensões específicas do caso de uso nos Recursos FHIR usados nas mensagens. |
| **Terminologias: Conjuntos de Valores** | Especifique os valores apropriados a serem usados em um determinado elemento codificado dentro de um recurso FHIR (perfil ou extensão). |
| **Terminologias: Sistemas de Código** | Especifique os valores apropriados a serem usados em um determinado elemento codificado dentro de um recurso FHIR (perfil ou extensão). |
| **Terminologias: Sistemas de Nomenclatura** | Especifica nomenclaturas apropriadas. |
| **Terminologias: Mapas de Conceito** | Mapear conceitos entre diferentes sistemas de terminologia. |
| **Modelos Computacionais** | Modelos usados para definir os recursos e interações no FHIR. |
| **Exemplos** | Exemplos de uso dos artefatos FHIR em contextos reais. |
### 3.1 Recursos Essenciais
A seguir estão alguns dos recursos do FHIR mais relevantes 
para a implementação na Ipes:
 **Tipo de Recurso** | **Descrição** | **Uso** | **Instância de Exemplo (JSON)** |
| Sumário de Saúde Pessoal (Bundle) | Usado para trocar uma série de recursos (entradas) para outro sistema no FHIR Messaging. | Bundle para a continuidade do cuidado | [Exemplo JSON]() |
| Solicitação de Serviço - Exames e Procedimentos | Pedido de realização de exames e procedimentos. | Recurso de solicitação | [Exemplo JSON]() |
| Contato Assistencial | Define o contato entre o paciente e o sistema de saúde. | Recurso de interação | [Exemplo JSON]() |
| Paciente | O objeto do pedido de remessa. | Recurso principal | Paciente: Jane Doe |
| Lotação e Papel do Profissional de Saúde | Define o solicitante ou o provedor de serviços de destino. Referência para Profissional ou Organização. | PractitionerRole: Dr. Jack Jones | |
| Perfil do Profissional de Saúde | Fornece a identidade do solicitante ou do provedor de serviços. | Profissional: Dr. Jack Jones | |
| Perfil da Organização | Identifica o destinatário HCC no MessageHeader. | Organização: Clínicas Médicas de Atenção Primária | |
| Problema ou Diagnóstico | Informações diagnósticas de apoio. | Condição: Paraparesia Crônica Progressiva | |
| Procedimento | Informações de suporte sobre procedimentos realizados. | | |
| Alergia, Intolerância e Reação Adversa | Reações adversas registradas para o paciente. | | |
| Prescrição de Medicamentos | Prescrição de medicamentos do paciente. | [Perfil BRMedicamento](http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMedicamento) |
| Identificador do Indivíduo | Identifica o paciente ou outro indivíduo relevante para a mensagem. | | |
| DiagnosticReportPresentedForm | Formulário do relatório de diagnóstico. | | |
| Immunization | Informações sobre imunizações recebidas pelo paciente. | | 
A seguir estão alguns dos recursos do FHIR mais relevantes para a implementação na Ipes:

  
### 3.2 Perfis Customizados
A Ipes oferece perfis customizados para atender às regulamentações locais e às necessidades específicas da plataforma.

#### 3.2.1 Perfil de Paciente (br-ipes-patient)
- **Elementos obrigatórios**: Nome, data de nascimento, sexo, identificação única (de acordo com os padrões nacionais).

**Exemplo de JSON de um recurso br-ips-patient:**

{
  "resourceType": "Patient",
  "id": "12345",
  "identifier": [
    {
      "use": "official",
      "system": "http://hospital.system",
      "value": "MRN-00123"
    }
  ],
  "name": [
    {
      "family": "Silva",
      "given": ["João"]
    }
  ],
  "gender": "male",
  "birthDate": "1980-05-12",
  "address": [
    {
      "use": "home",
      "line": ["Rua Principal, 123"],
      "city": "São Paulo",
      "postalCode": "12345-678"
    }
  ]
}
### 3.1.2 br-ipes-encounter (Encounter Resource)
O Encounter Resource documenta qualquer interação entre o paciente e o sistema de saúde, como consultas, internações ou atendimentos de emergência. Ele vincula os episódios de atendimento às informações clínicas registradas durante o período.

Exemplo de JSON de um recurso br-ipes- encounter:
{
  "resourceType": "Encounter",
  "id": "encounter-001",
  "status": "finished",
  "class": {
    "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code": "AMB",
    "display": "Ambulatory"
  },
  "subject": {
    "reference": "Patient/12345"
  },
  "period": {
    "start": "2024-10-10T08:00:00+00:00",
    "end": "2024-10-10T09:00:00+00:00"
  }
}



## 4. Interações com a API FHIR
A plataforma Ipes.tech fornece uma API baseada em FHIR para interações de sistemas externos. Os seguintes métodos HTTP são suportados:

- **GET**: Para recuperar informações sobre um recurso específico.
- **POST**: Para criar novos registros.
- **PUT**: Para atualizar registros existentes.
- **DELETE**: Para excluir registros (com base nas regras de retenção de dados).

### 4.1 Exemplo de Requisição GET para Buscar um Paciente
```http
GET /fhir/Patient/ipes-patient-001
Host: api.ipes.tech
Authorization: Bearer {token}
```

#### Resposta:
```json
{
  "resourceType": "Patient",
  "id": "ipes-patient-001",
  "name": [
    {
      "family": "Silva",
      "given": ["João"]
    }
  ],
  "gender": "male",
  "birthDate": "1980-01-01"
}
```

## 5. Segurança e Autenticação
A plataforma adota autenticação baseada em **OAuth 2.0** para proteger o acesso aos dados de saúde.

### 5.1 Autenticação e Tokens
Os sistemas que desejam interagir com a API FHIR da Ipes.tech devem obter um token de acesso válido. O fluxo típico envolve:
1. Obtenção de um token OAuth.
2. Inclusão do token no cabeçalho de cada requisição.

### 5.2 Criptografia e Comunicação Segura
Todos os dados trocados pela API devem ser criptografados usando **TLS 1.2 ou superior** para garantir a integridade e confidencialidade das informações.

## 6. Testes e Conformidade


### 6.1 Validação de Conformidade
Os sistemas integrados à plataforma devem passar por um processo de validação de conformidade, garantindo que todos os recursos FHIR utilizados estejam de acordo com os perfis e requisitos especificados neste guia.

## 7. Considerações Finais
Este guia de implementação destina-se a facilitar a adoção do FHIR e assegurar a interoperabilidade de dados na plataforma Ipes.tech. Os desenvolvedores e integradores são encorajados a seguir as diretrizes para garantir a segurança e eficiência na troca de informações.
### 8. Authors and Contributors
Esse guia é o resultad de um esforço multidisciplinar effort involving different experts from several European countries, projects (e.g. xShare) and 
nitiatives (e.g. MyHealth@EU, XtEHR).
Role | Name             | Affiliation |
------------------|------------------|-------------|
 Project facilitator| Ricardo Puttini | iPES|
 Author |  Adriana Kitajima| IPES|
 Author |  Jussara Macedo Pinho Rötzsch| IPES |jussara@ipes.tech 
 Author |   Roberto Greenhalg | YYYYY |
 Author |   Henrique Amaral | iPES|
 Author |   Henrique Moraes | iPES|
 Contributor |  Rafael | iPES |
 Contributor | Ricardo Gonçalves| iPES|
 Contributor | Gabriela Alves | iPES|
*Participants**:  Valeria(iPES); Cassio (iPES); 


## 9. Referências
- **FHIR R4 Specification**: [https://hl7.org/FHIR](https://hl7.org/FHIR)
- **OAuth 2.0**: [https://oauth.net/2/](https://oauth.net/2/)
  

 