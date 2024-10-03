| Resource Profile                     | AllergyIntolerance-BR-iPeS                                                       |
|--------------------------------------|-----------------------------------------------------------------------------------|
| URL Canônica                        | [http://ipes-br.com/fhir/StructureDefinition/AllergyIntolerance-br-ipes](http://ipes-br.com/fhir/StructureDefinition/AllergyIntolerance-br-ipes) |
| Ativo desde                          | 2023-10-11                                                                        |
| Nome computável                      | AllergyIntolerance-br-ipes                                                         |
| Versão                               | 1.0                                                                               |



Este perfil representa as restrições aplicadas ao recurso AllergyIntoleranceIPS do Guia de Implementação FHIR do Sumário do Paciente, que segue o modelo da RNDS, para representar informações de alergias e intolerâncias dos paciente no visualizador do Sumnário. 
Ele restringe a representação do registro de uma alergia ou intolerância do paciente, no contexto da RNDS,  conforme especificações publicadas pelo Ministério da Saúde. 
## Escopo/Uso
Um registro de alergia ou intolerância é representado no resumo do paciente como uma instância de um recurso AllergyIntoleranceBRIPS. Este recurso documenta as alergiasincias relevantes de um paciente, descrevendo o tipo de reação (por exemplo, erupção cutânea, anafilaxia), os agentes causadores, a categoria da alergia (alimento, medicação, meio ambiente ou outras substâncias), o tipo de alergia e opcionalmente a criticidade e a certeza da alergia. Os dados sobre a reação também podem ser armazenados no recurso, considerando a substância e seus códigos correspondentes, o tipo de manifestação, a gravidade e observações acerca do evento ocorrido.
## Uso indevido
Este recurso não deve ser utilizado para representar eventos que não sejam considerados reações adversas do tipo alergia ou intolerância. Outras reações desencadeadas por estímulos físicos - luz, calor, frio, pressão, vibração, que podem mimetizar reações alérgicas ou de intolerância, devem ser registradas como Condição na lista de problemas, não usando o recurso AllergyIntolerance.
## Casos de uso
Este recurso pode ser utilizado para armazenar as informações do paciente sobre os eventos de reações adversas em sua história clínica. Tanto as reações alérgicas graves como as mais leves de intolerância podem ser armazenadas no Sumário do Paciente, estabelecendo assim uma linha de evolução das ocorrências adversas da vida do paciente.
Para a composição do Sumário, as informações sobre alergia e intolerãncia do `RAC` (Resumo de Atendimento Clínico) e do `SA` (Sumário de Alta) enviadas para a RNDS e para outras plataformas, como a iPeS, são extraidas para serem apresentadas no Aplicativo do Paciente ou no portal do prestador, meediante consentimento do paciente.
## Identificadores
Não se aplica.
## Extensões
Este perfil não possui extensões.
## Limites e Relacionamentos
Este recurso faz referência aos seguintes perfis: ao paciente - PatientBRIPS - que apresenta a alergia, ao profissional – `PractitionerEhrRunner` – e à função do profissional – `PractitionerRolEhrRunner` - que atende o paciente na ocorrência. Além destes perfis, caso o paciente esteja acompanhado o perfil `RelatedPerson` pode ser referenciado. Este perfil é usado principalmente para atribuição de informações, uma vez que estes acompanhantes geralmente são uma fonte de informações sobre o paciente. 
 
