 URL Canônica: http://ehrrunner.com/fhir/StructureDefinition/Encounter-BR-ipes| Versão: 1.0 |
------------------------------------------------------------------------------------------------|-------------|
 Ativo desde: 2023-02-10                                                                        | Nome computável: Encounter-BR-ipes|
# Encontro ou Contato Assistencial

Interação formal entre o paciente e profissional(is) de saúde(s) 
para prestação de serviços de saúde. Tipicamente, representa uma 
consulta ambulatorial (atenção primária e secundária), uma 
internação, um atendimento em urgência/emergência ou um atendimento 
em telemedicina.

## Escopo/Uso

Este perfil é utilizado para indexação da informação na "linha do 
tempo" do Registro Eletrônico de Saúde do paciente. É parte 
estruturante dos seguintes modelos de informação:

- **Registro de Atendimento Clínico (RAC)**: destinado a modelar 
dados essenciais de uma consulta realizada a um indivíduo no âmbito 
da atenção básica, especializada ou domiciliar.
  
- **Sumário de Alta (SA)**: apresenta o conjunto dos principais 
registros realizados durante a permanência do indivíduo em um 
atendimento, como evolução clínica, procedimentos assistenciais, 
intervenções clínicas e diagnósticas, condutas adotadas e iniciadas 
para seguimento em clínica ou outro estabelecimento de assistência à 
saúde. É essencial para garantir a segurança do paciente na 
continuidade do tratamento, conforme a **Resolução CIT Nº 33, de 22 
de março de 2018**.
  
- **Conjunto Mínimo de Dados (CMD)**: Documento público que coleta 
os dados dos atendimentos em saúde realizados em qualquer 
estabelecimento de saúde do país, público ou privado, em cada 
contato assistencial.

## Uso Indevido

Este recurso **não deve ser utilizado** para representar recursos 
que...

## Casos de Uso

O **Perfil Contato Assistencial** é utilizado para gerar registros 
de consulta clínica ambulatorial na **Atenção Primária em Saúde (APS)
** ou na **Atenção Especializada (AE)**, além de ser usado no 
registro de alta hospitalar. Todos os casos anteriores subsidiam o 
**Conjunto Mínimo de Dados**.

## Identificadores

- **Identificador local no sistema de origem**: Deve conter o 
identificador do sistema de informação (S-RES) de origem. 
Tipicamente, esse identificador é apresentado no formato de OID 
(`urn:oid:{{oidSistemaOrigem}}:{{cnesOrganizacao}}`). O OID do 
sistema de origem deve ser fornecido pela plataforma.
  
- **Identificador do registro na RNDS** (id/identificador da 
**Composition**): `urn:oid:1.3.6.1.4.1.54413.1.1.5.13`

- **Identificador do registro MHD correspondente** (quando o recurso 
foi gerado a partir de uma representação OpenEHR e indexado através 
de um **Bundle MHD**): `http://ehrrunner.com/fhir/NamingSystem/
MHDDocumentOID`

## Extensões

Este perfil **não possui extensões**.

## Limites e Relacionamentos

Este recurso pode ser referenciado por outros recursos:

- [http://ehrrunner.com/fhir/StructureDefinition/Patient](http://
ehrrunner.com/fhir/StructureDefinition/Patient)
- [http://ehrrunner.com/fhir/StructureDefinition/Referral-1.0]
(http://ehrrunner.com/fhir/StructureDefinition/Referral-1.0)
- [http://ehrrunner.com/fhir/StructureDefinition/Appointment-1.0]
(http://ehrrunner.com/fhir/StructureDefinition/Appointment-1.0)
- [http://ehrrunner.com/fhir/StructureDefinition/Condition](http://
ehrrunner.com/fhir/StructureDefinition/Condition)
- [http://ehrrunner.com/fhir/StructureDefinition/Organization-1.0]
(http://ehrrunner.com/fhir/StructureDefinition/Organization-1.0)
- [http://ehrrunner.com/fhir/StructureDefinition/Procedure](http://
ehrrunner.com/fhir/StructureDefinition/Procedure)

