 URL Canônica: http://ehrrunner.com/fhir/StructureDefinitionCareplanEhrRunner | Versão: 1.0 |
------------------------------------------------------------------------------------------------|-------------|
 Ativo desde: 2023-02-10                                                                        | Nome computável: CareplanEhrRunner |

Esese recurso é uma restrição do Peerfil `CarePlan` e descreve a intenção de como um ou mais profissionais pretendem prestar cuidados a um determinado paciente, grupo ou comunidade por um período de tempo, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições.

## ÂEscopo e utilização
`CarePlan` é um dos recursos de solicitação (Request) na especificação do fluxo de trabalho do FHIR.

Os Planos de Cuidados são usados ​​em muitas áreas de cuidados de saúder com uma variedade de escopos. Eles podem ser tão simples quanto um médico de família controlando quando seu paciente deve tomar a próxima imunização contra tétano até um plano detalhado para um paciente oncológico cobrindo dieta, quimioterapia, radiação, trabalho de laboratório e aconselhamento com relações de tempo detalhadas, pré-condições e objetivos. Eles podem ser usados ​​em cuidados veterinários ou pesquisa clínica para descrever o cuidado de um rebanho ou outra coleção de animais. Na saúde pública, eles podem descrever campanhas de educação ou imunização.

Este recurso adota uma abordagem intermediária para a complexidade. Ele captura detalhes básicos sobre quem está envolvido e quais ações são pretendidas sem lidar com dados discretos sobre dependências e relacionamentos de tempo. Eles podem ser suportados quando necessário usando o mecanismo de extensão.

O escopo dos planos de cuidados pode variar amplamente. Exemplos incluem:

- Planos de cuidados multidisciplinares e interorganizacionais; por exemplo, um plano de oncologia que inclua o oncologista, a equipa de enfermagem domiciliária, a farmácia e outros
- Planos para gerenciar doenças/condições específicas (por exemplo, plano nutricional para um paciente após ressecção intestinal, plano neurológico após traumatismo craniano, plano pré-natal, plano pós-parto, plano de gerenciamento do luto, etc.)
- Planos de suporte à decisão gerados seguindo diretrizes de prática específicas (por exemplo, plano de tratamento de AVC, plano de diabetes, prevenção de quedas, etc.)
- Planos de autoria do paciente ou cuidador automantidos identificando seus objetivos e uma compreensão integrada das ações a serem tomadas. Isso não inclui as Diretivas Antecipadas legais, que devem ser representadas com o recurso Consent com Consent.category = Diretiva Antecipada ou com um recurso de solicitação específico com intent = diretiva. Diretivas antecipadas informais podem ser representadas como uma Meta, como "Quero morrer em casa".
Este recurso pode ser usado para representar tanto planos propostos (por exemplo, recomendações de um mecanismo de suporte à decisão ou retornados como parte de um relatório de consulta) quanto planos ativos. A natureza do plano é comunicada pelo status. Alguns sistemas podem precisar filtrar CarePlans para garantir que apenas planos apropriados sejam expostos por meio de uma determinada interface de usuário.

## Limites e relacionamentos
As atividades do `CarePlan` podem ser definidas usando referências aos vários recursos de "solicitação". Essas referências podem ser a recursos com status de "planejado" ou a um pedido ativo. É possível que atividades planejadas existam (por exemplo, compromissos) sem precisar de um `CarePlan`. Os CarePlans são usados ​​quando há necessidade de agrupar atividades, metas e/ou participantes para fornecer algum grau de contexto.

Os Planos de Cuidado podem ser vinculados a condições específicas , mas também podem ser independentes da condição e, em vez disso, focados em um tipo específico de cuidado (por exemplo, psicológico, nutricional) ou no cuidado prestado por um profissional ou grupo de profissionais específico.

Uma `ImmunizationRecommendation`  pode ser interpretada como um tipo restrito de `CarePlan` lidando apenas com eventos de imunização. Onde tais informações podem aparecer em qualquer recurso, o recurso específico de imunização é o preferido.

Planos de Cuidados representam uma instância de plano específica para um paciente ou grupo específico. Não se destina a ser usado para definir planos ou protocolos genéricos que sejam independentes de um indivíduo ou grupo específico. `CarePlan` representa uma intenção específica, não uma definição geral. Protocolos e conjuntos de solicitações são apoiados por meio de `PlanDefinition`.

`Referências a este Recurso`
Implementa: `Request`
Referências de recursos: Appointment , CarePlan , Communication , DeviceDispense , DiagnosticReport ... Mostrar mais 16
Referências de extensão: `AllergyIntolerance Careplan` 