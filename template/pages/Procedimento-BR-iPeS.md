| Resource Profile                     | Procedure-br-ipes                                                      |
|--------------------------------------|-----------------------------------------------------------------------------------|
| URL Canônica                        | [http://ipes-br.com/fhir/StructureDefinition/Procedure-br-ipes](http://ipes-br.com/fhir/StructureDefinition/Procedure-br-ipes) |
| Ativo desde                          | 2023-02-10                                                                        |
| Nome computável                      | Procedure-br-ipes                                                     |
| Versão                               | 1.0   


# Este perfil representa as restrições aplicadas ao recurso Procedure, especificando uma entrada para o Histórico de Procedimentos para o Resumo do Paciente iPeS com base no FHIR R4

## Escopo/Uso

Este recurso é usado para registrar os detalhes dos procedimentos atuais e históricos realizados em ou para um paciente. Um procedimento é uma atividade realizada em, com ou para um paciente como parte da prestação de cuidados. Exemplos incluem:

- Procedimentos cirúrgicos
- Procedimentos diagnósticos
- Procedimentos endoscópicos
- Biópsias
- Aconselhamento
- Fisioterapia
- Serviços de suporte pessoal

Este recurso fornece informações resumidas sobre a ocorrência do procedimento e não se destina a fornecer instantâneos em tempo real de um procedimento à medida que ele se desenrola. No entanto, para procedimentos de longo prazo, como psicoterapia, ele pode representar informações resumidas sobre o progresso geral. A criação de um recurso para suportar informações detalhadas em tempo real sobre procedimentos aguarda a identificação de um caso de uso específico para compartilhar tais informações.

### Uso Indevido

O recurso `Procedure` não deve ser usado para capturar um evento se já existir um recurso mais específico—por exemplo, imunizações, administrações de medicamentos e comunicações. A fronteira entre determinar se uma ação é um Procedimento (treinamento ou aconselhamento) versus Comunicação é baseada na existência de uma intenção específica de mudar a mente do paciente.

### Casos de Uso

Os procedimentos armazenados em documentos relevantes da RNDS de Saúde Suplementar e outras partes que estão em status "concluído", registrados até um ano antes da solicitação para gerar o resumo do paciente, serão exibidos no Resumo do Paciente.

## Extensões

Este perfil não possui extensões.

## Mapeamento de Estrutura

http://www.saude.gov.br/fhir/r4/StructureDefinition/BRProcedimentoRealizado-1.0 mapeado para ProcedureBRIPS.

| **Elemento**                        | **Card.** | **Descrição**                                               | **Domínio**                           | **Mapeamento (FHIRPath)** |
|-------------------------------------|-----------|-------------------------------------------------------------|---------------------------------------|---------------------------|
| Procedure.identifier                | 1..1      | Código de autorização para o procedimento                   | BRTipoIdentificadorProcedimento-1.0   | Fixo em 'AUTH'            |
| Procedure.status                    | 1..1      | Status do procedimento                                      | BREstadoEvento-1.0                   |                           |
| Procedure.code                      | 1..1      | Código do procedimento realizado                            | BRProcedimentosNacionais-1.0          |                           |
| Procedure.patient.reference         | 1..1      | Referência ao indivíduo                                     | Reference:Patient                    |                           |
| Procedure.performedDateTime         | 1..1      | Data ou data/hora em que o procedimento foi realizado       |                                       |                           |
| Procedure.practitioner.function     | 0..1      | Função desempenhada pelo profissional                       | BROcupacao-1.0                       |                           |
| Procedure.practitioner.actor        | 1..1      | Referência ao Local do Profissional, Estabelecimento de Saúde, etc |                                       |                           |
| Procedure.practitioner.onBehalfOf   | 0..1      | Profissional/Instituição realizando o procedimento em nome de |                                       |                           |
| Procedure.note.text                 | 1..1      | Notas sobre o resultado e observações do procedimento       |                                       |                           |














