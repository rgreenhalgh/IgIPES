 URL Canônica: http://ehrrunner.com/fhir/StructureDefinition/MedicationRequestEhrRunner | Versão: 1.0 |
------------------------------------------------------------------------------------------------|-------------|
 Ativo desde: 2023-02-10                                                                        | Nome computável: MedicationRequestEhrRunner |

### Descrição
Este perfil estabelece as restrições aplicadas ao recurso MedicationRequest pelo Guia de Implementação FHIR do Sumário do Paciente iPeS, baseado no FHIR R4. Um registro de uma solicitação de medicação é representado no sumário do paciente como uma instância de um recurso MedicationRequest restrito por esse perfil.
### Observação a respeito do `medicationCodeableConcept` vs. `medicationReference`
Nas versões previamente aprovadas, o `medicationCodeableConcept` foi utilizado apenas para fornecer informações sobre os medicamentos reconhecidamente considerados como ausentes/desconhecidos; usando a referência de medicamento para descrever a real medicação. Para melhor apoiar as implementações locais de sumários de pacientes e alinhar-se com a abordagem do IPS, ambas as opções (`medicationCodeableConcept` e `medicationReference`) foram tornadas possíveis; reconhecendo, no entanto, que existem jurisdições que impõem que a referência do medicamento seja sempre utilizada.
Os implementadores são incentivados a "melhorar a interoperabilidade global (...)" usando o `medicationReference`, limitando o uso do `medicationCodeableConcept` apenas aos casos em que nenhuma outra informação além de um simples código esteja disponível.
Também deve ser observado que em uma versão futura antecipada do IG baseado em R5, essas duas fatias de `medication[x]` serão substituídas pelo elemento `Medication` no recurso `MedicationUsage` (que substitui `MedicationStatement`), pois utiliza o novo Tipo de dados `CodeableReference`.
### Escopo e Uso
Este recurso cobre todos os tipos de prescrição de medicamentos para um paciente. Isto inclui prescrições de medicamentos para pacientes internados, bem como prescrições comunitárias (preenchidos pelo prescritor ou por uma farmácia). Também inclui prescrição de medicamentos de venda livre (por exemplo, aspirina), nutrição parenteral total e suplementos dietéticos/vitamínicos. Pode ser usado para apoiar a solicitação de dispositivos relacionados a medicamentos. Este recurso não se destina ao uso na prescrição de dietas específicas ou na prescrição de itens não relacionados a medicamentos (óculos, suprimentos etc.). Além disso, o `MedicationRequest` pode ser usado para relatar prescrições/solicitações de sistemas externos que foram relatados para fins informativos e não são oficiais e não se espera que sejam atendidos (por exemplo, dispensados ou administrados).
O recurso `MedicationRequest` é um recurso de "prescrição" de uma perspectiva de fluxo de trabalho FHIR - consulte Workflow Request.
O recurso `MedicationRequest` permite prescrever apenas um medicamento. Se um fluxo de trabalho exigir a solicitação de vários itens simultaneamente, isso será feito usando diversas instâncias desse recurso. Essas instâncias podem ser vinculadas de diferentes maneiras, dependendo das necessidades do fluxo de trabalho. Para orientação, consulte o padrão Solicitação.
#### Uso indevido
Este recurso não deve ser utilizado para representar dados que não sejam relacionados a prescrição de medicamentos, como para  dispensar ou administrar medicamentos.
#### Casos de uso
A RDNS utiliza a structuredefintion BRPrescricaoMedicamento para descrever a prescrição de medicamentos. Cada um dos medicamentos prescritos são descritos utilizando a structuredefinition BRMedicamento aqui descrita.
### Identificadores
Não se aplica.
### Extensões
Este perfil não possui extensões.
### Fronteiras e Relacionamentos
O recurso `MedicationRequestEhrRunner` é usado para prescrever ou solicitar medicamentos para um paciente. Também pode ser usado para relatar uma solicitação ou prescrição de medicamento de uma organização ou fonte para outra. Ao solicitar suprimentos ou dispositivos quando há foco no paciente ou instruções sobre seu uso, `SupplyRequest` ou `DeviceRequest` devem ser usados. Ao relatar o uso de um medicamento por um paciente, deve-se utilizar o recurso `MedicationStatement`.
### Recursos Relacionados a Medicação
Recurso	Descrição
`MedicationRequest`	Uma prescrição para fornecimento do medicamento e instruções para administração do medicamento a um paciente.
`MedicationDispense`	Fornecimento de um medicamento com a intenção de que seja posteriormente consumido por um paciente (geralmente em resposta a uma prescrição).
`MedicationAdministration`	Quando um paciente realmente consome um medicamento ou este lhe é administrado de outra forma.
`MedicationStatement`	Este é um registro de medicação tomada por um paciente, ou de que a medicação foi administrada a um paciente, onde o registro é o resultado de um relatório do paciente ou de outro médico. Uma medicação não faz parte da sequência prescrever->dispensar->administrar, mas é um relatório de que tal sequência (ou pelo menos parte dela) ocorreu, resultando na confiança de que o paciente recebeu um determinado medicamento.
