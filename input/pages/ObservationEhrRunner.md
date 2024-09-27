
# Recurso Observation - FHIR R4

## Escopo e Uso

O recurso **Observation** é um recurso de evento na perspectiva do fluxo de trabalho FHIR. Observações são elementos centrais na assistência à saúde, usados para apoiar diagnósticos, monitorar progresso, determinar padrões e até capturar características demográficas. A maioria das observações são simples pares nome/valor com alguns metadados, mas algumas agrupam outras observações logicamente ou são observações multicomponentes. No Brasil esse recurso foi utilizado em dois perfis para aplicar em dois casos de uso:**[BRMedidaObservada](https://simplifier.net/redenacionaldedadosemsaude/brmedidaobservada), estruturado e [BRObservationText](https://simplifier.net/redenacionaldedadosemsaude/brobservacaodescritiva), mais simples, para se fazer inserções textuais sobre observações mais simples. O Resumo do Atendimento  Clínico (RAC) da RNDS usa o `BRMedidaObservada` e o `Sumario do Paciente iPeS` extrai informações desse perfil para apresentá-lo de forma estruturada no visualizador do Sumário

### Exemplos de Uso

- Sinais vitais como peso corporal, pressão arterial e temperatura
- Dados laboratoriais como glicose no sangue ou taxa de filtração glomerular estimada
- Resultados de imagem como densidade óssea ou medidas fetais
- Achados clínicos como sensibilidade abdominal
- Medições de dispositivos como dados de ECG ou oximetria de pulso
- Ferramentas de avaliação clínica como APGAR ou Escala de Coma de Glasgow
- Características pessoais como cor dos olhos
- Histórico social como uso de tabaco, suporte familiar ou estado cognitivo
- Características centrais como estado de gravidez ou declaração de óbito

### Perfis Centrais para Observation

Os seguintes perfis centrais foram definidos para o recurso Observation FHIR R4. Implementações que usarem este recurso ao expressar conceitos específicos do perfil como dados estruturados, elas DEVEM conformar-se aos seguintes perfis, para estar em conformidade com o padrão FHIR R4:

- **Sinais vitais**: O perfil FHIR Vital Signs define expectativas mínimas para o recurso Observation registrar, buscar e recuperar sinais vitais (por exemplo, temperatura, pressão arterial, taxa de respiração, etc.) associados a um paciente.

No entanto, a RNDS utiliza um único recurso [BRMedidaObservada](https://simplifier.net/redenacionaldedadosemsaude/brmedidaobservada), que tem um ValueSet derivado do LOINC, o brt[Tipoobservacao](https://simplifier.net/redenacionaldedadosemsaude/valueset-brtipoobservacao-1.0) que contém todo o tipo de informação de observações realizadas no atendimento clínico e nesse showcase será utilizada a versão atual do RAC

### Limites e Relacionamentos

No seu núcleo, o recurso Observation permite expressar um par nome-valor ou uma coleção estruturada de pares nome-valor. Como tal, pode suportar a transmissão de qualquer tipo de informação desejada. No entanto, essa não é sua intenção. Observation é destinado a capturar medições e avaliações subjetivas em um ponto no tempo.

O recurso **DiagnosticReport** fornece um contexto clínico ou de fluxo de trabalho para um conjunto de observações e o recurso Observation é referenciado por DiagnosticReport para representar dados laboratoriais, de imagem e outros dados clínicos e diagnósticos para formar um relatório completo.

### Uso Indevido

Este recurso não deve ser utilizado para representar diagnósticos ou condições clínicas diretamente. Para isso, deve-se usar o recurso **Condition**.

### Identificadores

Cada observação deve ter um identificador único que pode ser usado para referenciá-la de forma inequívoca.

### Extensões

Este recurso pode ser estendido para incluir informações adicionais que não são cobertas pelos elementos padrão.

### Limites e Relacionamentos

O recurso Observation pode referenciar outros recursos como **Patient**, **Practitioner**, **Encounter**, **Device**, e **RelatedPerson** para fornecer contexto adicional.