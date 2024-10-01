# Resource Profile: Patient-BR-iPeS
 URL Canônica: http://ehrrunhrRunnerfhir/StructureDefinition/Patient-BR-iPeS | Versão: 1.0
 Ativo desde: 2023-02-10        | Nome computável: Patient-BR-iPeS |
 
 Este perfil representa as restrições aplicadas ao recurso Paciente no Implementation Guide do Guia de Implementação do Sumário do Paciente e descreve as expectativas mínimas para o recurso Paciente quando utilizado em um dos referidos recursos.

## Escopo/Uso
Os dados deste recurso estão focados nas informações demográficas necessárias para apoiar os procedimentos administrativos, financeiros e logísticos. Para contemplar uma descrição do paciente com maior equidade, conforme recomendações da Portaria GM/MS Nº 230, de 7 de março de 2023, foram adicionados atributos adicionais para expressar o sexo do paciente, além do sexo administrativo: **sexo ao nascer (sexoNascimento)** e **identidade de gênero (identidadeGenero)** conforme descrito abaixo. Com relação à orientação sexual, este é um dado que pode mudar durante a vida do paciente, portanto, recomenda-se que ele seja coletado em cada evento assistencial.

### Uso indevido
Este recurso **não deve** ser utilizado para representar um paciente que não contenha registros passíveis de gerar um Registro do Sumário do Paciente.

## Casos de uso

### Identificadores
O paciente deve possuir obrigatoriamente um identificador, que pode ser o **Cadastro de Pessoa Física (CPF)** ou o **Cartão Nacional de Saúde (CNS)**, registro de estrangeiro ou número de passaporte.

- O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos. É composto por 11 dígitos (http://terminology.hl7.org/CodeSystem/v2-0203#TAX), sendo os 2 últimos dígitos os verificadores do CPF.
- O CNS também é um identificador do paciente no âmbito do Sistema Único de Saúde (SUS). É composto por 15 dígitos (http://rnds.saude.gov.br/fhir/r4/NamingSystem/cns), onde os 2 últimos são verificadores do CNS.

### Extensões
Este perfil **não possui extensões**.

## Limites e Relacionamentos
Este recurso pode ser referenciado por outros recursos para determinadas ações relacionadas aos pacientes. Por exemplo, o perfil **ObservationResultsLaboratorio**, que representa os resultados de exames laboratoriais, faz uma referência ao perfil do paciente alvo do exame.
