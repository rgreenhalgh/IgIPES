| URL Canônicahttp://ehrrunner.com/fhir?
BundleSumariodoPaciente-BR-ipes| Versão: 0.0.1 |
|------------------------------------------------------------------------------------------------|-------------|
| Ativo desde: 2023-10-11                                                                        | Nome computável: BundleSumariodoPaciente=BR-ipes|

# Bundle - FHIR v4.0.1

Esta página faz parte da especificação FHIR (v4.0.1: R4 - Mixed Normative and STU) em seu local permanente (sempre estará disponível neste URL). A versão atual que substitui esta versão é 5.0.0. Para uma lista completa de versões disponíveis, veja o Diretório de versões publicadas.

## Recurso Bundle - Conteúdo

### Escopo e Uso

Uma operação comum realizada com recursos é reunir uma coleção de recursos em uma única instância com contexto contido. No FHIR, isso é chamado de "agrupar" os recursos juntos. Esses pacotes de recursos são úteis por várias razões diferentes, incluindo:

- Retornar um conjunto de recursos que atendem a alguns critérios como parte de uma operação de servidor (veja [RESTful Search](https://www.hl7.org/fhir/search.html))
- Retornar um conjunto de versões de recursos como parte da operação de histórico em um servidor (veja [History](https://www.hl7.org/fhir/history.html))
- Enviar um conjunto de recursos como parte de uma troca de mensagens (veja [Messaging](https://www.hl7.org/fhir/messaging.html))
- Agrupar um conjunto autônomo de recursos para atuar como uma coleção intercambiável e persistente com integridade clínica - por exemplo, um documento clínico (veja [Documents](https://www.hl7.org/fhir/documents.html))
- Criar/atualizar/excluir um conjunto de recursos em um servidor como uma única operação (incluindo fazer isso como uma única transação atômica) (veja [Transactions](https://www.hl7.org/fhir/transactions.html))
- Armazenar uma coleção de recursos

### 2.36.2 Limites e Relacionamentos

Existem duas maneiras de coletar recursos juntos para fins de transporte e persistência - recursos `contidos` e bundles. Há uma diferença importante entre os dois:

- Recursos contidos estão "dentro" do recurso contêiner - eles só podem ser interpretados e/ou alterados no contexto do contêiner
- Um bundle é uma coleção de recursos que pode ter uma existência independente - por exemplo, eles também podem ser acessados diretamente usando a API RESTful

Além desses dois mecanismos técnicos, existem três recursos administrativos e de infraestrutura que também suportam o agrupamento de conteúdo. Esses recursos não contêm recursos diretamente, mas usam [Reference](https://www.hl7.org/fhir/references.html) para apontar para os recursos agrupados:

- O recurso List – Enumera uma coleção plana de recursos e fornece recursos para gerenciar a coleção. Embora uma instância específica de List possa representar um "instantâneo", do ponto de vista do processo de negócios, a noção de "List" é dinâmica – itens são adicionados e removidos ao longo do tempo. O recurso List referencia outros recursos. Listas podem ser curadas e ter significado comercial específico.
- O recurso Group – Define um grupo de pessoas, animais, dispositivos, etc. específicos enumerando-os ou descrevendo qualidades que os membros do grupo possuem. O recurso Group refere-se a outros recursos, possivelmente implicitamente. Grupos são destinados a serem observados ou atuados como um todo; por exemplo, realizar terapia em um grupo, calcular risco para um grupo, etc.
- O recurso Composition – Fornece a estrutura básica de um documento FHIR. O conteúdo completo do documento é expresso usando um Bundle. Composições frequentemente referenciam Lists como o foco de seções particulares.
O Sumário do Paciente iPeS usa a maneira de Recursos contidos (Contained Resources), porque,  ao contrário dos documentos Composition adptadps na RNDS, os recursos contidos em um Bundle podem ser pesquisados individualmente usando parâmetros específicos. Isso permite uma busca mais granular dentro do contexto do Bundle.


