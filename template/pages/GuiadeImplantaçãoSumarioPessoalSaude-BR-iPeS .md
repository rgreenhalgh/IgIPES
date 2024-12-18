
 URL Canônica: http://ehrrunner.com/fhir/StructureDefinition/
GuiadeImplantaçãoSumarioPessoalSaude-BR-ipes | Versão: 1.0 |
-----------------------------------------------------------------
---------------------------|-------------|
 Ativo desde: 
2023-02-10                                                      
              | Nome computável: IdentificadorIndividuo-BR-iPèS 
GuiadeImplantaçãoSumarioPessoalçSaude
-BR-ipes 
# Guia de Implementação dos Requisitos e Especificações para o 
Showcase de Interoperabilidade dO Sumário Pessoal de Saúde no CBiS 2024
# SUMÁRIO

1. **INTRODUÇÃO**: 3
2. **PREMISSAS E PRINCÍPIOS**: 3
3. **CONVENÇÕES DE DESIGN**: 4
4. **ESPECIFICAÇÕES**: 4
5. **ESTRUTURA DO SUMÁRIO DE ALTA iPeS**: 4
6. **PERFIS INCLUÍDOS NO GUIA**: 4
7. **EXTENSÕES**: 4
8. **ARTEFATOS TERMINOLÓGICOS DEFINIDOS COMO PARTE DESTE GUIA**: 4
9. **MODELOS COMPUTACIONAIS**
9. **EXEMPLOS**: 4
10. **DOWNLOAD**: 4
11. **ARTEFATOS FHIR**: 5
11. **ARTEFATOS FHIR**: 

## 1. Introdução

Trata-se do guia de implementação dos requisitos e especificações relacionados ao Showcase de Interoperabilidade do Congresso Brasileiro de Informática em Saúde (CBIS'24), com o tema “Saúde Digital: Saúde para Todos”.

Neste *showcase*, as empresas de software: **iPeS, MV, GoInterop, Pixeon, Veus, Interopera** demonstram a interoperabilidade entre seus produtos por meio do padrão HL7 Fast Healthcare Interoperability Resources (FHIR) R4. Isso é feito para simular a jornada de registros eletrônicos de saúde referentes ao Registro de Atendimento Clínico (RAC), Resultado de Exame Laboratorial (REL), Sumário de Alta (SA), Sumário Pessoal de Saúde (SPS) e Sumário Internacional de Saúde (IPS), visando a continuidade do cuidado na Rede de Atenção à Saúde.

Como destaca a Sociedade Brasileira de Informática em Saúde (SBIS), “encontramos um mundo com desafios urgentes na promoção da Saúde Digital de forma universal e ética”, em uma conjuntura nacional de convergência de ações e iniciativas favoráveis à ampliação da transformação digital nos processos, estabelecimentos e na gestão em saúde.

Dessa forma, considerando a necessidade de colaboração entre as instituições públicas e privadas em saúde para a formulação do conjunto brasileiro de recursos FHIR, o **“BR-core”**, serão utilizados perfis publicados pela Rede Nacional de Dados em Saúde (RNDS), coordenada pela Secretaria de Informação e Saúde Digital (SEIDIGI) do Ministério da Saúde (MS), mesclados a perfis desenvolvidos pelas empresas participantes deste caso de interoperabilidade, de modo a propor a compatibilização entre elementos de dados que representem as políticas públicas de saúde e as necessidades do ecossistema factual da saúde no país.

### 1.2 Propósito

O objetivo deste Guia de Implementação é apresentar as especificações no HL7 FHIR para representar os modelos computacionais FHIR: Registro de Atendimento Clínico (RAC), Resultado de Exame Laboratorial (REL), Sumário de Alta (SA), Sumário Pessoal de Saúde (SPS) e Sumário Internacional de Saúde (IPS) utilizados no *showcase* de interoperabilidade que demonstra a jornada dos dados de atendimento de pacientes fictícios no Congresso Brasileiro de Informática em Saúde (CBIS'24).

### 1.3 Escopo e Contexto

Este guia de implementação (IG) FHIR fornece maneiras padrão e não proprietárias para que os sistemas participantes do *showcase* interoperem uns com os outros.

Embora alguns casos de uso, como o Sumário Pessoal de Saúde (SPS) e o Sumário de Alta (SA), tenham sido elaborados de maneira independente à publicação da RNDS, considerou-se como prioritário o uso dos perfis desenvolvidos e publicados pelo Ministério da Saúde. Isso demonstra a flexibilidade do FHIR e a viabilidade de colaboração e harmonização entre os modelos para atender a diversos cenários de implementação.

Essa API suporta diferentes perfis para o *Bundle*, cada um associado a um caso de uso, e cada perfil de *Bundle* é suportado pela API e possui uma URL que o identifica.

## 1.4 Autores e Contribuidores

| Contribuinte | Papel | Nome | Organização | Contato |
|--------------|-------|------|-------------|---------|
| Editor Primário | Jussara Rötzsch | IPES | jussara@ipes.tech |
| Editor Primário | Ricardo Puttini | IPES | |
| Editor Primário | Roberto Greenhalgh | IPES | |
| Contribuinte | Gabriela Alves | IPES | |
| Editor Primário | Ricardo Gonçalves | | |
| Editor Primário | Adriana Kitajima | IPES | [LinkedIn](https://linkedin.com/in/adrianakitajima) |

## 2. Premissas e Princípios

### 2.1 Premissas

Considerou-se que o guia de implementação da Rede Nacional de Dados em Saúde (RNDS), desenvolvido pelo Ministério da Saúde (MS), hierarquicamente estabelece o conjunto de perfis para a implementação nacional. Dessa forma, em relação aos recursos terminológicos, prioritariamente foi utilizado o **GI Terminologias** da RNDS, que estabelece importantes padrões semânticos transversais aos diversos tipos de ações e serviços em saúde.

### 2.2 Público-alvo

Profissionais e acadêmicos de saúde e de TIC, empresas e instituições de ensino e pesquisa, governo e usuários do setor público e privado, interessados no desenvolvimento da Saúde Digital no país.


### 3 Convenções e Design

### Convenções

Este guia de implementação usa terminologia específica para sinalizar instruções que têm relevância ao avaliar a conformidade de uma solução com o guia:

- **DEVE**: indica os requisitos que devem ser cumpridos para estar em conformidade com o caderno de especificações.
- **SHOULD**: indica comportamentos que são fortemente recomendados (e que podem resultar em problemas de interoperabilidade ou comportamento sub-ótimo se não forem seguidos), mas que não afetam, para esta versão da especificação, a determinação da conformidade da especificação.
- **MAY**: descreve comportamentos opcionais que os implementadores são livres para considerar, mas onde não há recomendação a favor ou contra a adoção.

### 3.2 Design: Abordagem de Criação de Perfis

A hierarquia assumida para a construção dos artefatos foi ter o conjunto de perfis do **GI Rede Nacional de Dados em Saúde (RNDS)**, desenvolvido pelo Ministério da Saúde (MS), como referência para a implementação nacional. Nas situações onde não foi possível estender perfis do GI da RNDS, foram utilizados perfis desenvolvidos pelas empresas participantes deste caso de interoperabilidade.

Considerando o desenvolvimento de soluções de software para atender aos casos de uso institucionais anteriores à publicação dos GI da RNDS, optou-se pelo emprego dos perfis desenvolvidos pelas empresas participantes deste caso de interoperabilidade, como o **Sumário Pessoal de Saúde (SPS)** e o **Sumário de Alta (SA)**.

Por design, o conjunto de dados do **Sumário do Paciente** é um "conjunto de dados de resumo mínimo e não exaustivo do paciente, independente de especialidade ou condição, mas prontamente utilizável por médicos para o atendimento não programado internacional de um paciente".

Duas opções estavam disponíveis para os perfis do Sumário Pessoal de Saúde:

1. Restringir os recursos ao conjunto de dados clínicos enviados para a RNDS;
2. Sinalizar os itens que devem ser suportados para atender ao International Patient Summary (IPS).

O primeiro foi escolhido por permitir um acesso progressivo à informação já disponível no formato dos modelos computacionais **RAC** e **REL**, relevantes para os casos de uso do *showcase*, que são a continuidade do cuidado do paciente e a interoperabilidade entre sistemas diferentes.

## 4. Especificações

(Conteúdo adicional sobre especificações, se necessário)
```


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

## 5. Perfis incluídos no Guia Sumário Pespal de Saúde

Os perfis de recursos definem restrições nos recursos FHIR usados em mensagens e/ou interações RESTful definidas neste guia de implementação.


| **Tipo de Recurso** | **Descrição** | **Uso** | **Instância de Exemplo (JSON)** |
|---------------------|---------------|---------|---------------------------------|
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

Cada perfil FHIR listado aqui desempenha um papel único na troca de informações:

- **Suporte a Mensagens**: O FHIR Messaging usa pacotes de recursos com **MessageHeaders** para trocar informações entre sistemas.
- **Recursos de Foco**: O foco de uma mensagem varia entre eventos e reflete o Recurso chave que está sendo acionado. Esses recursos conterão referências a outros recursos que representam as entidades (pessoas e organizações) participantes da solicitação, bem como informações de apoio.
- **Entidades**: Recursos que representam as entidades (pessoas e organizações) participantes da solicitação.
- **Informações de Suporte**: Recursos usados para fornecer informações de suporte para a solicitação.

7.	Extensões: 
descreve as extensões definidas para este Guia;

8.	Artefatos terminológicos definidos como parte deste Guia: 
descreve todos os Code Systems, Value Sets e Concept Maps utilizados neste Guia;

9.	Modelos computacionais

10. Exemplos
apresenta exemplos do RAC, SA e Exames;

11.	Download
apresenta a página com todos os downloads do Guia e Exemplos;

12.	Artefatos FHIR –
Documentação das definições formais para todos os objetos FHIR definidos neste guia – a parte principal deste guia.

13.


