| Resource Profile                     | Practitioner-br-ipes                                                      |
|--------------------------------------|-----------------------------------------------------------------------------------|
| URL Canônica                        | [http://ipes-br.com/fhir/StructureDefinition/Practitioner-br-ipes](http://ipes-br.com/fhir/StructureDefinition/Practitioner-br-ipes) |
| Ativo desde                          | 2024-07-18                                                                        |
| Nome computável                      | Practitioner-br-ipes                                                     |
| Versão                               | 1.0   


## Papel do profissional prestador da assistência à saúde

O Profissional é uma pessoa que está direta ou indiretamente envolvida na prestação de cuidados de saúde ou serviços relacionados ao paciente.

### Escopo/Uso

O perfil Profissional abrange todos os indivíduos envolvidos no processo de assistência à saúde e serviços relacionados à saúde como parte de suas responsabilidades. Os profissionais incluem (mas não estão limitados a): médicos, farmacêuticos, dentistas, enfermeiros e outros profissionais que lidam com o registro do paciente, tanto a equipe que lida com a gestão de tecnologia da informação, como a equipe de anonimização dos registros de pacientes.

O recurso Profissional representa qualquer pessoa envolvida na prestação de cuidados ou serviços a um paciente e está associado a uma Organização.

### Uso indevido

Este recurso não deve ser utilizado para representar paciente, estabelecimento ou operadora de saúde.

### Casos de uso

O profissional desempenha diferentes papeis dentro de uma ou mais organizações. Dependendo da jurisdição e costume, pode ser necessário manter um recurso Profissional específico para cada função ou ter um único Profissional com várias funções. A função pode ser limitada a um período específico.

### Identificadores

O paciente deve possuir obrigatoriamente um identificador, que pode ser o Cadastro de Pessoa Física (CPF) ou o Cartão Nacional de Saúde (CNS) conforme os modelos de informação de lançamentos.

O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos e é composto por 11 dígitos (http://terminology.hl7.org/CodeSystem/v2-0203#TAX), sendo os 2 últimos dígitos os verificadores do CPF.

O CNS também é um identificador do paciente no âmbito do Sistema Único de Saúde (SUS), é composto por 15 dígitos (http://rnds.saude.gov.br/fhir/r4/NamingSystem/cns), onde os 2 últimos são verificadores do CNS.

Os identificadores enviados pela RNDS não possuem o identifier.system, por este motivo estão sendo identificados:

- **CNS**: 15 caracteres
- **CPF**: 11 caracteres
- **CNES**: 5 caracteres

### Extensões

Este perfil não possui extensões.

### Limites e Relacionamentos

Este perfil pode ser referenciado por outros recursos para determinadas ações relacionadas aos profissionais. Por exemplo, este perfil faz referência ao perfil OrganizationBRIPS que indica o estabelecimento de saúde do profissional.
