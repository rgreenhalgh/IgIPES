
PractitionerRoleca: http://ehrrunner.com/fhir/StructureDefinition/
| Versão: 1.0 |
 Ativo desde: 2023-02-10    | Nome computável: PractitionerRole-BR-ipes |      
              
                                
                                                    

## Papel do profissional prestador da assistência à saúde

Este perfil é uma rrestrição do perfil canônico `PractitionerRole` do FHIR R4 e representa um conjunto específico de funções/locais/especialidades/serviços que um Profissional pode executar em um estabelecmento de saúde por um período.

### Escopo/Uso

Este recurso abrange o registro do local e tipos de serviços que o Profissional pode exercer em uma Organização.

As propriedades papel/função, especialidade, endereço, meio de contato e serviço de saúde podem ser repetidas, se necessário em outras instâncias do recurso LotacaoProfissional, pois um profissional pode atuar em mais de uma organização. Existem duas formas de registrar os papeis dos profissionais, a saber: uma coleção de valores de serviço para um único local, ou um único serviço e a lista de locais disponíveis. Ambas são opções aceitáveis ​​para representação destes dados.

Quando a disponibilidade, telecomunicações ou outros detalhes não forem os mesmos em todos os serviços de saúde ou locais, uma instância separada de PractitionerRoleBRIPS (PapelProfissional) deve ser criada.

### Uso indevido

Este recurso não deve ser utilizado para representar paciente, estabelecimento ou operadora de saúde.

### Casos de uso

O profissional pode desempenhar diferentes papeis dentro de uma ou mais organizações. A depender da jurisdição, pode ser necessário manter um recurso Profissional específico para cada função ou ter um único Profissional com várias funções. A função pode ser limitada a um período específico, após o qual a autorização para esta função termina. Observe que a organização representada não precisa necessariamente ser o empregador (direto) de um Profissional.

### Identificadores

Os identificadores presentes neste perfil se referem aos dados do paciente atendido pelo profissional. O paciente deve possuir obrigatoriamente um identificador, que pode ser o Cadastro de Pessoa Física (CPF) ou o Cartão Nacional de Saúde (CNS) conforme os modelos de informação de lançamentos.

O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos e é composto por 11 dígitos (http://terminology.hl7.org/CodeSystem/v2-0203#TAX), sendo os 2 últimos dígitos os verificadores do CPF.

O CNS também é um identificador do paciente no âmbito do Sistema Único de Saúde (SUS), é composto por 15 dígitos (http://rnds.saude.gov.br/fhir/r4/NamingSystem/cns), onde os 2 últimos são verificadores do CNS.

### Extensões

Este perfil não possui extensões.

### Limites e Relacionamentos

Este recurso faz referência ao perfil LotacaoProfissional que é relacionado ao profissional e ao perfil EstabelecimentoSaude, que indica a organização na qual este papel é executado.

As qualificações (do recurso Profissional) não implicam uma função, mas podem ser consideradas quando uma organização aloca profissionais para funções dentro de sua organização e podem fornecer informações úteis (como informações de expiração) que podem precisar ser rastreadas em algumas situações para garantir que eles continuam a ser elegíveis para uma função específica.

O recurso Equipe de Cuidados (CareTeam) também é frequentemente usado para fornecer detalhes de uma função que um profissional é alocado para desempenhar, mas geralmente é direcionado para uma granularidade muito mais refinada do cuidado e, muitas vezes, dentro do contexto específico de um paciente ou função funcional (por exemplo, planejamento de crise equipe). Por outro lado, o LotacaoProfissional (PapelProfissional) é usado em um sentido mais geral para cobrir todos os locais em que o profissional está alocado para trabalhar (e detalhes específicos relevantes para essa função - como um número de contato específico ou terminal de serviços eletrônicos).