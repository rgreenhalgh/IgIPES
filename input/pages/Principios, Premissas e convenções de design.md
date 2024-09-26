# *Premissas e  Princípios :  

## Premissas

## Público-alvo

Eese guia visa fornecer orientações para sistemas de informação de prestadores de serviço, publicos ou privados, para o showcase de interoperabilidade, onde vários tipos de prestadores: laboratórios, sistemas de prontuário eletrônico, vão trocar informações sobre eventos de saúde do indivíduo com o RES iPeS para compor o sumário do paciente, através de uma API  FHIR, na versaõ R4, para que ele possa ser visualizado pelo indivíduo/paciente e quem ele autorizar no seu aplicativo (Personal Health Record) ou pelo prestador de serviços que o estão atendendo, mediante seu consentimento, no Portal do Prestador, onde o prestador e pacientes vão ter uma visão longitudinal dos dados essenciais para garantir cuidados contínuos e coordenados. A partir desse sumário, vai se gerar um Sumário Internacional do Paciente, para ser visualizado no aplicativo do paciente e poder ser gerado sempre que eles tenha cuidados não planejados e transfronteiriços.


## Convenções

Este guia de implementação usa terminologia específica para sinalizar instruções que têm relevância ao avaliar a conformidade de uma solução com o guia:

DEVE (MUST) indicar os requisitos que devem ser cumpridos para estar em conformidade com o caderno de especificações.

DEVERIA (SHOULD) indica comportamentos que são fortemente recomendados (e que podem resultar em problemas de interoperabilidade ou comportamento sub-ótimo se não forem seguidos), mas que não afetam, para esta versão da especificação, a determinação da conformidade da especificação.

POde (MAY) descreve comportamentos opcionais que os implementadores são livres para considerar, mas onde não há recomendação a favor ou contra a adoção.

## Design: Abordagem de Criação de Perfis

Por design, o conjunto de dados do Recurso Sumário do Paciente é um “conjunto de dados de resumo mínimo e não exaustivo do paciente, independente de especialidade, independente da condição, mas prontamente utilizável por médicos para o atendimento não programado ou de primeira vez de de um paciente”.

Duas opções estavam, portanto, disponíveis para os perfis do Sumário do Paciente:

restringindo os recursos ao conjunto de dados clínicos enviados para a RNDS

Sinalizndo os itens que devem ser suportados para atender ao Registro Eletrônico de Saúde da iPES, que já processa informações ainda não existentes na RNDS, mas que são informadas em outros municípios ou Estados do Brasil, que usam essa plataforma.

Para permitir um acesso progressivo a informação já disponível, no formato dos modelos computacionais RAC, SA e REL  e relevantes para os casos de uso do showcase, O Sumario se restringiu ao conjunto de dados desses documentos da RNDS, porém se ampliou os tipos de exames, para essa demonstração de forma que se prove o conceito  que a cuidado do paciente e a interoperabilidade entre sistemas diferentes é obtida pelo uso do padrão.