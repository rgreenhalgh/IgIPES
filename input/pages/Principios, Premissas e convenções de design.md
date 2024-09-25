# *Premissas e  Princípios :  

## 2.1     Premissas

2.2    Público-alvo

 

2.3    Desafios 

2.4     Convenções

Este guia de implementação usa terminologia específica para sinalizar instruções que têm relevância ao avaliar a conformidade de uma solução com o guia:

DEVE indicar os requisitos que devem ser cumpridos para estar em conformidade com o caderno de especificações.

SHOULD indica comportamentos que são fortemente recomendados (e que podem resultar em problemas de interoperabilidade ou comportamento sub-ótimo se não forem seguidos), mas que não afetam, para esta versão da especificação, a determinação da conformidade da especificação.

MAY descreve comportamentos opcionais que os implementadores são livres para considerar, mas onde não há recomendação a favor ou contra a adoção.

2.5 Design: Abordagem de Criação de Perfis

Por design, o conjunto de dados do Recurso Sumário do Paciente é um “conjunto de dados de resumo mínimo e não exaustivo do paciente, independente de especialidade, independente da condição, mas prontamente utilizável por médicos para o atendimento não programado internacional de um paciente”.

Duas opções estavam, portanto, disponíveis para os perfis do Sumário do Paciente:

restringindo os recursos ao conjunto de dados clínicos enviados para a RNDS

sinalizndo os itens que devem ser suportados para atender ao Sumário Internacional do Paciente

O primeiro foi escolhido po rpermitir um acesso progressivo a informação já disponível, no formato dos modelos computacionais RAC e REL  e relevante para os casos de uso do showcase, que são a continuidade do cuidado do paciente e a interoperabilidade entre sistemas diferentes.Principios, Premissas e convenções de design