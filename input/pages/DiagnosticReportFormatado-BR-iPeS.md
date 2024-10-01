# Resource Profile: DiagnosticReportFormatado-BR-iPeS

 URL Canônica: http://ehrrunner.com/fhir/StructureDefinition/DiagnosticReport-BR-iPeS| Versão: 1.0 |
------------------------------------------------------------------------------------------------|-------------|
 Ativo desde: 2023-02-10                                                                        | Nome computável: DiagnosticReportformatado-BR-iPeS |


Este perfil restringe o recurso DiagnosticReport para representar testes de diagnóstico e relatórios de procedimentos em um resumo do paciente.

## Escopo/Uso

Este perfil restringe o recurso DiagnosticReport para usar os perfis específicos para observações e tipos de dados codificados do Sumário de Paciente. O recurso `DiagnosticReportEhrRunner`contém os resultados e a interpretação de testes de diagnóstico realizados em pacientes, grupos de pacientes, dispositivos e locais e/ou amostras derivadas destes. O relatóEio inclui contexto clínico, como solicitação e informações do fornecedor, e alguma combinação de resultados atômicos, imagens, interpretações textuais e codificadas e representação formatada de relatórios diagnósticos. Incluído em cada um deles estaria o próprio recurso  `DiagnosticReportEhrRunner`.

O recurso `DiagnosticReportehrrunner` é adequado para os seguintes tipos de relatórios de diagnóstico:
- Laboratório (Bioquímica, Hematologia, Microbiologia etc.)
- Patologia / Histopatologia / disciplinas afins
- Exames de imagem (raio-x, tomografia computadorizada, ressonância magnética etc.)
- Outros diagnósticos - Cardiologia, Gastroenterologia etc.

Para apoiar a necessidade de apresentação de resultados individuais, ou grupos de resultados dos tipos de observações que podem fazer parte do DiagnosticReportehrrunner, onde o agrupamento de resultados é arbitrário, mas relevante para o objetivo do sumário do paciente, se introduziu um conjunto de fatias com o desenvolvimento de perfis que especializam o recurso Observation, com a finalidade de individualizar os diversos tipos de observações, que são: `ObservationResultsEhrRunner`, `ObservationResultsLaboratoryEhrRunner`, `ObservationResultsPathologyEhrRunner` e `ObservationResultsRadiologyEhrRunner`, onde as observações são apresentadas de forma estruturada.

## Uso indevido

O recurso `DiagnosticReportEhrRunner` se destina a capturar um único relatório e não é adequado para uso na exibição de informações resumidas que abrangem vários relatórios. Por exemplo, esse recurso não foi projetado para formatos de relatórios cumulativos laboratoriais nem relatórios estruturados detalhados para sequenciamento.

## Casos de uso

Este recurso usa um conjunto específico de termos. Um médico “solicita” um conjunto de “exames”. O serviço de diagnóstico retorna um "relatório" que pode conter uma "narrativa" - um resumo escrito dos resultados e/ou "resultados" - os pedaços individuais de dados atômicos, cada um deles sendo "observações". Os resultados são divididos em “grupos” por tipo de observação e montados nos perfis do Sumário do Paciente que restringem o recurso  nas seções específicas para exames laboratoriais, anatomo-patológicos e de imagemm.

Normalmente, os seguintes padrões serão usados:
- **ObservationResultsLaboratory**: Um relatório de exames laboratorial simples, com único conjunto de observações atômicas e uma apresentação tabular em narrativa. Isso normalmente é encontrado em áreas de alto volume, como Bioquímica e Hematologia.
- **ObservationResultsPathology**: Relatório documental na forma apresentada e narrativa. Possivelmente algumas imagens importantes e alguns diagnósticos codificados para registros. Se o serviço estiver criando um relatório estruturado, alguns dados atômicos poderão ser incluídos. Por exemplo, um relatório histopatológico.
- **ObservationResultsRadiology**: Um relatório documental em forma apresentada e narrativa, com uma referência de estudo de imagem usando DICOM (ImagingStudy) e possivelmente algumas imagens principais. Alguns relatórios de imagem, como uma varredura de densidade óssea, podem incluir alguns dados atômicos, em um exame de densitometria óssea, por exemplo.

Observe que a natureza dos relatórios das diversas disciplinas que fornecem relatórios de diagnóstico está mudando rapidamente, à medida que os sistemas especialistas fornecem relatórios narrativos aprimorados em relatórios de grande volume, os relatórios estruturados trazem dados adicionais para áreas que têm sido classicamente baseadas em narrativas e a natureza dos exames de imagem e os procedimentos laboratoriais estão se fundindo. Portanto, estes padrões descritos acima são apenas exemplos de como um relatório de diagnóstico pode ser usado. Por isso, não foram criadas regras obrigatórias para as escolhas desses tipos/perfis pelos criadores, dada a grande variedade de formas que o resultado de uma investigação diagnóstica pode assumir.

Por exemplo, um hemograma é um exame laboratorial de alto volume, mas que dependendo de seu resultado, necessita de uma análise citopatológica. Nesses casos, o criador do sumário pode definir que os resultados desses hemogramas sejam registrados no perfil ObservationResultsPathologyehrrunner e não no ObservationResultsLaboratoryehrrunner.
