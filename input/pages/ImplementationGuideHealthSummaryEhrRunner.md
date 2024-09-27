


# SUMÁRIO

1. **INTRODUÇÃO**: 3
2. **PRINCÍPIOS GERAIS**: 3
3. **PRINCÍPIOS E CONVENÇÕES DE DESIGN**: 4
4. **GERAÇÃO E INCLUSÃO DE DADOS**: 4
5. **ESTRUTURA DO SUMÁRIO DE ALTA iPeS**: 4
6. **PERFIS INCLUÍDOS NO GUIA BRASIL IPS**: 4
7. **EXTENSÕES**: 4
8. **ARTEFATOS TERMINOLÓGICOS DEFINIDOS COMO PARTE DESTE GUIA**: 4
9. **EXEMPLOS**: 4
10. **DOWNLOAD**: 4
15. **ARTEFATOS FHIR**: 5

## 1. Introdução

Trata-se do guia de implementação dos requisitos e especificações relacionados ao Showcase de Interoperabilidade do Congresso Brasileiro de Informática em Saúde CBIS’24, com o tema 
“Saúde Digital: Saúde para Todos”.

Como destaca a Sociedade Brasileira de Informática em Saúde (SBIS) “encontramos um mundo com desafios urgentes na promoção da Saúde Digital de forma universal e ética” numa 
conjuntura nacional de convergência de ações e iniciativas favoráveis à ampliação da transformação digital nos processos, estabelecimentos e na gestão em saúde.

Neste showcase, as empresas de software: Ipês, MV, GoInterop, Interopera, demonstram a interoperabilidade dos seus produtos por meio do padrão HL7 Fast Healthcare Interoperability 
Resources (FHIR) R4 para o compartilhamento de dados referentes ao Registro de Atendimento Clínico (RAC), Resultado de Exame Laboratorial (REL), Sumário Pessoal de Saúde e Sumário 
Internacional de Saúde (IPS) para o compartilhamento de dados clínicos e administrativos visando a continuidade do cuidado clínico.

Considerando a necessidade da colaboração entre as instituições públicas e privadas em saúde para a formulação do conjunto brasileiro de recursos FHIR, um “BR-core”, serão utilizados
perfis publicados pela Rede Nacional de Dados em Saúde (RNDS) coordenada pela Secretaria de Informação e Saúde Digital (SEIDIGI) do Ministério da Saúde, mesclados a perfis 
desenvolvidos pelas empresas participantes desse caso de interoperabilidade, de modo a propor a compatibilização entre elementos de dados que representem as políticas públicas de 
saúde e as necessidades do ecossistema factual da saúde no país.


### 1.1 Propósito
O objetivo deste Guia de Implementação é especificar como representar no HL7 FHIR, conjunto de informações para casos de interoperabilidade direta 
com...

Essa API suporta diferentes perfis para o Bundle, cada um associado a um caso de uso e cada perfil de Bundle suportado pela API possui uma URL que o 
identifica.

Esse guia de implementação FHIR de Sumário do Paciente fornece orientação para o uso do padrão HL7 Fast Healthcare Interoperability Resources (FHIR) 
como um formato de Guia de Implementação (IG) para a interoperabilidade de informações clínicas. O guia do Sumário do Paciente é um documento 
elaborado para os participantes da iniciativa. Ele tem o objetivo de fornecer orientação para o uso relacionado a um conjunto essencial de dados e 
ações e serviços acerca de contatos assistenciais a serem comunicados. Trata-se de uma coleção de recursos FHIR perfilados projetados para uso em 
trocas de informações que apoiam...

O objetivo deste Guia de Implementação é especificar como representar no HL7 FHIR o International Patient Summary (IPS). Uma representação alternativa como modelo HL7 CDA R2 também é fornecida (consulte o site hl7.org ou o repositório ART DECOR). O foco inicial do International Patient Summary (IPS) foi o cuidado não planejado além das fronteiras nacionais. Esta especificação pode ser usada e ser útil também em aplicações locais e apoiar cuidados planejados.

### 1.2 Plano de fundo do projeto


### 1.3 Escopo do Projeto


EsteEese guia visa fornecer orientações para sistemas de informação de prestadores de serviço, publicos ou privados, participantes do Showcase 
interoperabilidade, onde vários tipos de prestadores: laboratórios, sistemas de prontuário eletrônico, vão trocar informações sobre eventos de saúde 
do indivíduo com o RES iPeS para compor o sumário do paciente, através de uma API  FHIR, na versaõ R4, para que ele possa ser visualizado pelo 
indivíduo/paciente e quem ele autorizar no seu aplicativo (Personal Health Record) ou pelo prestador de serviços que o estão atendendo, mediante seu 
consentimento, no Portal do Prestador, onde o prestador e pacientes vão ter uma visão longitudinal dos dados essenciais para garantir cuidados 
contínuos e coordenados. A partir desse sumário, vai se gerar um Sumário Internacional do Paciente, para ser visualizado no aplicativo do paciente e 
poder ser gerado sempre que eles tenha cuidados não planejados e transfronteiriços.guia de implementação (IG) FHIR destina-se a permitir que a solução de integração forneça maneiras padrão a

Como ponto de partida, este GI suporta apenas um subconjunto da funcionalidade, caminhos e integração]previstos no  


### 1.4 Relacionamento com Outros Projetos e Diretrizes

Mais detalhes sobre as relações do projeto IPS com outros projetos e diretrizes estão disponíveis no site do IPS.

### 1.5 Status da cédula

Este Guia de Implementação foi votado como STU com a intenção de se tornar normativo em um ciclo de votação subsequente.

## 2. Princípios Gerais

Este guia de implementação usa terminologia específica para sinalizar instruções que têm relevância ao avaliar a conformidade de uma solução com o 
guia:

DEVE (MUST) indicar os requisitos que devem ser cumpridos para estar em conformidade com o caderno de especificações.

DEVERIA (SHOULD) indica comportamentos que são fortemente recomendados (e que podem resultar em problemas de interoperabilidade ou comportamento 
sub-ótimo se não forem seguidos), mas que não afetam, para esta versão da especificação, a determinação da conformidade da especificação.

POde (MAY) descreve comportamentos opcionais que os implementadores são livres para considerar, mas onde não há recomendação a favor ou contra a 
adoção.


### 2.1 Estruturação das opções de terminologia

O Sumário do Paciente é especificado neste guia como um bundle contained HL7 FHIR R4 composto por um conjunto de blocos de dados “mínimos” potencialmente reutilizáveis usando os modelos de informação da RNDS.ão distinto.

Para ser universalmente intercambiável e compreendido, um resumo do paciente deve basear-se tanto quanto possível em dados estruturados e terminologias de referência. O HL7 Internacional fornece um conjunto gratuito de terminologias que foram traduzidas para o Português pelo projeto IPS Brasil, as quais ao lado das tabelas de referência mandatória do Brasil, estão reunidas em um Guia de implantação de Terminologias FHIR (https://terminologia.saude.gov.br/fhir/),  mantida pela SEIDIGI/MS. Este material compreende os Sistemas de Código e Conjuntos de Valores citados nos artefatos publicados pelo Ministério da Saúde (Guias de Implementação), em uma forma navegável e conveniente.

## 3. Convenções de Design
Por design, o conjunto de dados do Recurso Sumário do Paciente é um “conjunto de dados de resumo mínimo e não exaustivo do paciente, independente de 
especialidade, independente da condição, mas prontamente utilizável por médicos para o atendimento não programado ou de primeira vez de de um 
paciente”.

Duas opções estavam, portanto, disponíveis para os perfis do Sumário do Paciente:

restringindo os recursos ao conjunto de dados clínicos enviados para a RNDS

Sinalizndo os itens que devem ser suportados para atender ao Registro Eletrônico de Saúde da iPES, que já processa informações ainda não existentes 
na RNDS, mas que são informadas em outros municípios ou Estados do Brasil, que usam essa plataforma.

Para permitir um acesso progressivo a informação já disponível, no formato dos modelos computacionais RAC, SA e REL  e relevantes para os casos de 
uso do showcase, O Sumario se restringiu ao conjunto de dados desses documentos da RNDS, porém se ampliou os tipos de exames, para essa demonstração 
de forma que se prove o conceito  que a cuidado do paciente e a interoperabilidade entre sistemas diferentes é obtida pelo uso do padrão.

## 4. Geração e Inclusão de Dados

Descreve a política de inclusão de informações para os componentes de 


## 5. Perfis incluídos no Guia Sumário do Paciente

Descreve os perfis descritos neste Guia de Implementação.

SUMÁRIO
1.	INTRODUÇÃO:	
2.	PRINCÍPIOS E CONVENÇÕES DE DESIGN:
3.	GERAÇÃO E INCLUSÃO DE DADOS	
4.	ESTRUTURA DO SUMÁRIO DO PACIENTE iPeS
5.	PERFIS INCLUÍDOS NO GUIASUMÁRIO DO PACIENTE iPeS	
6.	EXTENSÕES
7.	ARTEFATOS TERMINOLÓGICOS DEFINIDOS COMO PARTE DESTE GUIA
8.	EXEMPLOS:
9.	DOWNLOAD
10.	ARTEFATOS FHIR

 
1.	Introdução:  
Introdução e orientações de como o Guia de Implementação IPS Brasil deve ser lido, 
Ver página de exemplo - https://build.fhir.org/ig/HL7/fhir-ips/toc.html

Um documento International Patient Summary (IPS) é um extrato de registro de saúde eletrônico que contém informações essenciais de saúde sobre um assunto de atendimento. Conforme especificado em EN 17269 e ISO 27269, ele foi projetado para oferecer suporte ao cenário de caso de uso para 'assistência transfronteiriça não planejada', mas não se limita a ele. Destina-se a ser internacional, ou seja, fornecer soluções genéricas para aplicação global além de uma determinada região ou país.
O conjunto de dados IPS é mínimo e não exaustivo; especialidade agnóstica e condição independente; mas ainda clinicamente relevante.
O documento IPS é composto por um conjunto robusto, bem definido e potencialmente reutilizável de itens de dados principais (indicados como biblioteca IPS na figura abaixo). A forte aposta do IPS nos cuidados não planejados não é neste caso uma limitação, mas, pelo contrário, facilita a sua potencial reutilização para além do âmbito do IPS.
Figura 1: O produto IPS e subprodutos
 

1.1       Propósito
O objetivo deste Guia de Implementação é especificar como representar no HL7 FHIR o International Patient Summary (IPS). Uma representação alternativa como modelo HL7 CDA R2 também é fornecida (consulte o site hl7.org ou o repositório ART DECOR ). O foco inicial do International Patient Summary (IPS) foi o cuidado não planejado além das fronteiras nacionais. Esta especificação pode ser usada e ser útil também em aplicações locais e apoiar cuidados planejados.
 1.2     Plano de fundo do projeto
Detalhes sobre o histórico do projeto estão disponíveis no site da IPS .
1.3       Escopo do Projeto
Conforme especificado na EN 17269 e na ISO 27269, o conjunto de dados IPS é um “conjunto mínimo e não exaustivo de elementos de dados necessários para o resumo internacional do paciente”. Um resumo do paciente é definido pela ISO/TR 12773-1:2009 como um “extrato de registro de saúde que compreende uma coleção padronizada de informações clínicas e contextuais (retrospectivas, simultâneas, prospectivas) que fornecem um instantâneo no tempo das informações de saúde de um sujeito de cuidados e assistência médica."
'Mínimo' reflete as ideias de 'resumo' e a necessidade de ser conciso, mas também alude à existência de um conjunto básico de elementos de dados que todos os profissionais de saúde podem usar; destina-se a ser um conjunto independente de condição e agnóstico especializado. Isso não implica que todos os itens do conjunto de dados serão usados em todos os resumos. Também é possível refinar o extrato de um registro de modo que o conteúdo do resumo seja mais relevante para uma condição específica (por exemplo, asma), mas nenhum elemento específico da asma será especificado neste padrão. O documento IPS ou IPS pode ser estendido por dados específicos de condição padrão não IPS. 'Não exaustivo' reconhece que o conjunto de dados ideal não é fechado e é provável que seja estendido, não apenas em termos de evolução de requisitos, mas também pragmaticamente em instâncias de uso. [EN 17269; ISO 27269].
Além disso, o escopo do IPS é global. Embora este seja um grande desafio, este guia de implementação leva em conta várias experiências e desenvolvimentos mais recentes (por exemplo, Guia de Implementação Principal dos EUA (FHIR IG) ) para abordar, na medida do possível, a viabilidade global.
A imagem a seguir fornece uma visão geral do conteúdo IPS atual.

Figura 2: A estrutura do IPS

 


1.4      Relacionamento com Outros Projetos e Diretrizes
Mais detalhes sobre as relações do projeto IPS com outros projetos e diretrizes estão disponíveis no site do IPS
1.5          Status da cédula
Este Guia de Implementação foi votado como STU com a intenção de se tornar normativo em um ciclo de votação subsequente.
2.	Princípios Gerais:  
Terminologias adotadas, Publicação e Acesso ao Guia de Implementação IPS Brasil
Com o acordo formal assinado em abril de 2017, HL7 International e CEN/TC 251 expressaram sua intenção de colaborar sob um conjunto de princípios para o IPS.
Figura 1: Os princípios IPS
 

Com base neste acordo, a especificação de padrões para o IPS deve ser (a) implementável (b) aplicável para uso global (c) extensível e aberta a casos de uso e soluções futuras. Além disso, a especificação de padrões e sua implementação devem ser sustentáveis.
2.1	           Estruturação das opções de terminologia
O Resumo Internacional do Paciente é especificado neste guia como um documento HL7 FHIR (um pacote incluindo uma composição IPS), composto por um conjunto de blocos de dados “mínimos” potencialmente reutilizáveis (os perfis IPS). Uma representação HL7 CDA R2 também é especificada em um Guia de Implementação distinto. A expressividade do SNOMED CT e outras terminologias primárias permitem que esta especificação represente as duas categorias gerais “condição/atividade desconhecida” e “condição/atividade conhecida ausente” em um estilo que é mais independente da sintaxe subjacente (CDA R2 ou FHIR).
Para ser universalmente intercambiável e compreendido, um resumo do paciente deve basear-se tanto quanto possível em dados estruturados e terminologias de referência internacional multilíngue que são licenciadas sem custo para uso global no Resumo Internacional do Paciente. No caso do SNOMED CT, o SNOMED International criou uma especificação aberta e gratuita para o Resumo Internacional do Paciente que faz referência a um conjunto central de conceitos clínicos globalmente acessíveis e utilizáveis licenciados sem custo com o objetivo de servir ao bem público chamado IPS Free definir. Este conjunto gratuito é mantido em colaboração com HL7 International e CEN e atualizado anualmente. A SNOMED International também produziu um recurso disponível gratuitamente chamado IPS Terminology, uma subontologia do SNOMED CT baseada no conjunto IPS Free, que fornecerá recursos ontológicos mínimos para implementações de IPS. Com esse espírito, esta versão do Resumo Internacional do Paciente define SNOMED CT como uma terminologia primária e é usada em muitos dos conjuntos de valores.

3.	Princípios e Convenções de Design: 
Representação de “desconhecido” e  “ausente” para os blocos obrigatórios de Medicamentos, Alergias e Problemas ;
3.1          Representando “conhecido ausente” e “desconhecido”
De acordo com a abordagem seguida para o Guia de implementação do IPS CDA, aplicamos por design que, para as seções necessárias, as expressões de “conhecido ausente” e “não conhecido” sejam explicitamente declaradas no recurso referido nas entradas e não usando o emptyReason atributo na seção.
Esta regra é aplicada para as seguintes seções obrigatórias:
•	Alergias e Intolerâncias
•	Resumo de Medicação
•	problemas
As seções a seguir são recomendadas (não obrigatórias) e, para essas seções, no caso de “desconhecido” ou “sem informações”, isso pode ser afirmado explicitamente (como acima) ou a própria seção pode ser omitida:
•	Histórico de Procedimentos
•	Dispositivos médicos
•	imunizações
Espera-se que todas as outras seções sejam omitidas no caso de ausência de informações.

4.	Geração e Inclusão de Dados 
descreve a política de inclusão de informações para os componentes de Exames, Diagnósticos e Problemas, Medicações e Alergias.

5.	Estrutura do Sumário de Alta iPeS 
descreve as seções do Guia do Sumário do Paciente que foram implementadas – Imunização, e Exames;

6.	Perfis incluídos no Guia Sumário de Alta iPeS: 
descreve os perfis descritos neste Guia de Implementação;

7.	Extensões: 
descreve as extensões definidas para este Guia;

8.	Artefatos terminológicos definidos como parte deste Guia: 
descreve todos os Code Systems, Value Sets e Concept Maps utilizados neste Guia;

9.	Exemplos: 
apresenta exemplos dos blocos de Pacientes,  Imunização e Exames;

11.	Download
apresenta a página com todos os downloads do Guia e Exemplos;

12.	Artefatos FHIR –
Documentação das definições formais para todos os objetos FHIR definidos neste guia – a parte principal deste guia..


