<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Patient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRRacaCorEtnia-1.0']) &lt;= 1">extension with URL = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRRacaCorEtnia-1.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMunicipio-1.0']) &lt;= 1">extension with URL = 'http://www.saude.gov.br/fhir/r4/StructureDefinition/BRMunicipio-1.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://ehrrunner.com/fhir/StructureDefinition/BirthCountry-1.0']) &lt;= 1">extension with URL = 'http://ehrrunner.com/fhir/StructureDefinition/BirthCountry-1.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-genderIdentity']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-genderIdentity': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-importance']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-importance': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:active) &gt;= 1">active: minimum cardinality of 'active' is 1</sch:assert>
      <sch:assert test="count(f:gender) &gt;= 1">gender: minimum cardinality of 'gender' is 1</sch:assert>
      <sch:assert test="count(f:birthDate) &gt;= 1">birthDate: minimum cardinality of 'birthDate' is 1</sch:assert>
      <sch:assert test="count(f:maritalStatus) &lt;= 0">maritalStatus: maximum cardinality of 'maritalStatus' is 0</sch:assert>
      <sch:assert test="count(f:multipleBirth[x]) &lt;= 0">multipleBirth[x]: maximum cardinality of 'multipleBirth[x]' is 0</sch:assert>
      <sch:assert test="count(f:photo) &lt;= 0">photo: maximum cardinality of 'photo' is 0</sch:assert>
      <sch:assert test="count(f:contact) &lt;= 0">contact: maximum cardinality of 'contact' is 0</sch:assert>
      <sch:assert test="count(f:communication) &lt;= 0">communication: maximum cardinality of 'communication' is 0</sch:assert>
      <sch:assert test="count(f:generalPractitioner) &lt;= 0">generalPractitioner: maximum cardinality of 'generalPractitioner' is 0</sch:assert>
      <sch:assert test="count(f:managingOrganization) &lt;= 0">managingOrganization: maximum cardinality of 'managingOrganization' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:extension</sch:title>
    <sch:rule context="f:Patient/f:extension">
      <sch:assert test="count(f:extension[@url = 'relationship']) &gt;= 1">extension with URL = 'relationship': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'relationship']) &lt;= 1">extension with URL = 'relationship': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'parent']) &gt;= 1">extension with URL = 'parent': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'parent']) &lt;= 1">extension with URL = 'parent': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'code']) &lt;= 1">extension with URL = 'code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'period']) &lt;= 1">extension with URL = 'period': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:maritalStatus</sch:title>
    <sch:rule context="f:Patient/f:maritalStatus">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:maritalStatus/f:coding</sch:title>
    <sch:rule context="f:Patient/f:maritalStatus/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
