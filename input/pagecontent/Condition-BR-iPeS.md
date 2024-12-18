 URL Canônica: http://ehrrunner.com/fhir/StructureDefinition/Condition-BR-ipes| Versão: 1.0 
 Ativo desde: 2023-02-10      | Nome computável: Condition-BR-ipes |
Aqui está o texto formatado em Markdown (.md) conforme solicitado:

```md
# Perfil: Problema ou Diagnóstico

Tipicamente avaliado por profissional clínico e codificado com **CID-10** para diagnóstico ou **CIAP-2** (Classificação Internacional da Atenção Primária) para problema/condição.

## Escopo/Uso

Este recurso é utilizado para registrar informações detalhadas sobre uma condição, problema, diagnóstico ou outro evento, situação, questão ou conceito clínico que tenha atingido um nível de preocupação. A condição pode ser um diagnóstico pontual no contexto de um encontro, pode ser um item na **Lista de Problemas** do profissional ou pode ser uma preocupação que não existe na **Lista de Problemas** do profissional.

## Uso Indevido

Este recurso **não deve ser utilizado** para representar outros tipos de classificações.

## Casos de Uso

O recurso **Condição** pode ser utilizado para registrar um certo estado de saúde de um paciente que normalmente não apresenta um resultado negativo, por exemplo, gravidez. O recurso também pode ser usado para registrar uma condição após um procedimento.

## Identificadores

_(Não especificado no conteúdo original)_

## Extensões

Este perfil **não possui extensões**.

## Limites e Relacionamentos

O recurso de condição pode ser referenciado por outros recursos como "motivos" para uma ação (por exemplo, **MedicationRequest**, **Procedure**, **ServiceRequest**, etc.).

Este recurso pode ser referenciado por outros recursos:

- [http://ehrrunner.com/fhir/StructureDefinition/Patient](http://ehrrunner.com/fhir/StructureDefinition/Patient)
- [http://ehrrunner.com/fhir/StructureDefinition/Encounter](http://ehrrunner.com/fhir/StructureDefinition/Encounter)
- [https://ehrrunner.com/fhir/StructureDefinition/ServiceRequest](https://ehrrunner.com/fhir/StructureDefinition/ServiceRequest)
- [http://ehrrunner.com/fhir/StructureDefinition/Procedure](http://ehrrunner.com/fhir/StructureDefinition/Procedure)
```

Esse formato em Markdown pode ser salvo diretamente como um arquivo `.md`.





























