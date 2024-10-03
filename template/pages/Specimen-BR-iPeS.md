| Resource Profile                     | Specimen-br-ipes                                                      |
|--------------------------------------|-----------------------------------------------------------------------------------|
| URL Canônica                        | [http://ipes-br.com/fhir/StructureDefinition/Specimen-br-ipes](http://ipes-br.com/fhir/StructureDefinition/Specimen-br-ipes) |
| Ativo desde                          | 2023-10-11                                                                        |
| Nome computável                      | Specimen-br-ipes                                                     |
| Versão                               | 1.0   


SpecimenEHRRunner
Este perfil restringe o recurso Specimen para representar as características de amostras biológicas no contexto de resultados laboratoriais integrados a um resumo do paciente. O recurso Specimen descreve uma amostra utilizada para análise laboratorial.
## Escopo/Uso
Este recurso representa qualquer amostra de material retirado de uma entidade biológica, viva ou morta ou de um objeto físico ou do ambiente. Algumas amostras são biológicas e podem conter um ou mais componentes, incluindo, entre outros, moléculas celulares, células, tecidos, órgãos, fluidos corporais, embriões e produtos excretores corporais (fonte: NCI Thesaurus, modificada). O recurso de SpecimenBRIPS abrange substâncias utilizadas para testes de diagnóstico e ambientais. O foco do recurso de espécimes é o processo de coleta, manutenção e processamento do espécime, bem como a origem da amostra.
### Uso indevido
Este recurso só deve ser utilizado para recuperar as amostras de exames laboratoriais que venham a fazer parte do Sumário do Paciente.
### Caso de uso
O curador do sumário do Paciente iPeS apode recuperar todos os exames realizados pelo paciente e enviados à plataforma e os demais exames laboratoriais.  A partir da data de solicitação de geração do sumário, ele busca as amostras de cada um destes exames que estão referenciadas no elemento specimen do recurso Observation do  `REL` (Resultados de Exames Laboratoriais) da RNDS.
## Identificadores
Não se aplica
## Extensões
Não há extensões neste recurso.
## Limites e Relacionamentos
O recurso `Specimen-br-ipes` é referenciado no recurso Observation
