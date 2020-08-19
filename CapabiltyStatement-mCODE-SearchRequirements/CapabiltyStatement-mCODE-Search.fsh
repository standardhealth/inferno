Instance: mCODESearch
InstanceOf: CapabilityStatement
Title: "mCODE Search Requirements"
Usage: #definition
  * status = #draft
  * experimental = true
  * date = "2020-07-31"
  * publisher = "mCODE"
  * contact.name = "Robert Scalfani"
  * contact.telecom.system = #email
  * contact.telecom.value = "rscalfani@mitre.org"
  * kind = #requirements
  * fhirVersion = #4.0.1
  * format = #json
  * rest.mode = #server
  * rest.documentation = """
    mCODE Search Requirements
  """

// Cancer Disease Status
* rest.resource[0].type = #Observation
* rest.resource[0].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status"
// The profile SHALL support Search
* rest.resource[0].interaction[0].code = #search-type
* rest.resource[0].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[0].interaction[0].extension[0].valueCode = #SHALL
// SHALL Support search by patient
* rest.resource[0].searchParam[0].name = "patient"
* rest.resource[0].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[0].searchParam[0].type = #reference
* rest.resource[0].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[0].searchParam[0].extension[0].valueCode = #SHALL

// Cancer Genetic Variant
* rest.resource[1].type = #Observation
* rest.resource[1].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status"
// The profile SHALL support Search
* rest.resource[1].interaction[0].code = #search-type
* rest.resource[1].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[1].interaction[0].extension[0].valueCode = #SHALL
// SHALL Support search by patient
* rest.resource[1].searchParam[0].name = "patient"
* rest.resource[1].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[1].searchParam[0].type = #reference
* rest.resource[1].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[1].searchParam[0].extension[0].valueCode = #SHALL
// SHALL Support search by performer
* rest.resource[1].searchParam[1].name = "performer"
* rest.resource[1].searchParam[1].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-performer"
* rest.resource[1].searchParam[1].type = #reference
* rest.resource[1].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[1].searchParam[1].extension[0].valueCode = #SHALL

// Cancer Genomics Report
* rest.resource[2].type = #DiagnosticReport
* rest.resource[2].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genomics-report"
// The profile SHALL support Search
* rest.resource[2].interaction[0].code = #search-type
* rest.resource[2].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[2].interaction[0].extension[0].valueCode = #SHALL
// SHALL Support search by patient
* rest.resource[2].searchParam[0].name = "patient"
* rest.resource[2].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-diagnosticreport-patient"
* rest.resource[2].searchParam[0].type = #reference
* rest.resource[2].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[2].searchParam[0].extension[0].valueCode = #SHALL

// Cancer Patient
* rest.resource[3].type = #Patient
* rest.resource[3].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
// The profile SHALL support Search
* rest.resource[3].interaction[0].code = #search-type
* rest.resource[3].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[3].interaction[0].extension[0].valueCode = #SHALL
// SHALL Support search by link.other
* rest.resource[3].searchParam[0].name = "link.other"
* rest.resource[3].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-patient-patient"
* rest.resource[3].searchParam[0].type = #reference
* rest.resource[3].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[3].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[4].type = #MedicationStatement
* rest.resource[4].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-statement"
// The profile SHALL support Search
* rest.resource[4].interaction[0].code = #search-type
* rest.resource[4].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[4].interaction[0].extension[0].valueCode = #SHALL
// SHALL Support search by patient
* rest.resource[4].searchParam[0].name = "patient"
* rest.resource[4].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-medicationstatement-patient"
* rest.resource[4].searchParam[0].type = #reference
* rest.resource[4].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[4].searchParam[0].extension[0].valueCode = #SHALL
// SHALL Support search by informationSource
* rest.resource[4].searchParam[1].name = "source"
* rest.resource[4].searchParam[1].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-MedicationStatement-patient"
* rest.resource[4].searchParam[1].type = #reference
* rest.resource[4].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[4].searchParam[1].extension[0].valueCode = #SHALL

* rest.resource[5].type = #Procedure
* rest.resource[5].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-radiation-procedure"
// The profile SHALL support Read
* rest.resource[5].interaction[0].code = #read
* rest.resource[5].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[5].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[5].interaction[1].code = #search-type
* rest.resource[5].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[5].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[5].searchParam[0].name = "patient"
* rest.resource[5].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-procedure-patient"
* rest.resource[5].searchParam[0].type = #reference
* rest.resource[5].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[5].searchParam[0].extension[0].valueCode = #SHALL
// SHALL support Search by asserter
* rest.resource[5].searchParam[1].name = "asserter"
* rest.resource[5].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Procedure-asserter"
* rest.resource[5].searchParam[1].type = #reference
* rest.resource[5].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[5].searchParam[1].extension[0].valueCode = #SHALL

* rest.resource[6].type = #Procedure
* rest.resource[6].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-surgical-procedure"
// The profile SHALL support Read
* rest.resource[6].interaction[0].code = #read
* rest.resource[6].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[6].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[6].interaction[1].code = #search-type
* rest.resource[6].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[6].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[6].searchParam[0].name = "patient"
* rest.resource[6].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-procedure-patient"
* rest.resource[6].searchParam[0].type = #reference
* rest.resource[6].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[6].searchParam[0].extension[0].valueCode = #SHALL
// SHALL support Search by asserter
* rest.resource[6].searchParam[1].name = "asserter"
* rest.resource[6].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Procedure-asserter"
* rest.resource[6].searchParam[1].type = #reference
* rest.resource[6].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[6].searchParam[1].extension[0].valueCode = #SHALL

* rest.resource[7].type = #Condition
* rest.resource[7].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-comorbid-condition"
// The profile SHALL support Read
* rest.resource[7].interaction[0].code = #read
* rest.resource[7].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[7].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[7].interaction[1].code = #search-type
* rest.resource[7].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[7].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[7].searchParam[0].name = "patient"
* rest.resource[7].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-condition-patient"
* rest.resource[7].searchParam[0].type = #reference
* rest.resource[7].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[7].searchParam[0].extension[0].valueCode = #SHALL
// SHALL support Search by recorder
* rest.resource[7].searchParam[1].name = "recorder"
* rest.resource[7].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Condition-recorder"
* rest.resource[7].searchParam[1].type = #reference
* rest.resource[7].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[7].searchParam[1].extension[0].valueCode = #SHALL
// SHALL support Search by asserter
* rest.resource[7].searchParam[2].name = "asserter"
* rest.resource[7].searchParam[2].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-condition-asserter"
* rest.resource[7].searchParam[2].type = #reference
* rest.resource[7].searchParam[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[7].searchParam[2].extension[0].valueCode = #SHALL

* rest.resource[8].type = #Observation
* rest.resource[8].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-ecog-performance-status"
// The profile SHALL support Read
* rest.resource[8].interaction[0].code = #read
* rest.resource[8].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[8].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[8].interaction[1].code = #search-type
* rest.resource[8].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[8].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[8].searchParam[0].name = "patient"
* rest.resource[8].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[8].searchParam[0].type = #reference
* rest.resource[8].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[8].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[9].type = #Specimen
* rest.resource[9].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genetic-specimen"
// The profile SHALL support Read
* rest.resource[9].interaction[0].code = #read
* rest.resource[9].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[9].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[9].interaction[1].code = #search-type
* rest.resource[9].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[9].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[9].searchParam[0].name = "patient"
* rest.resource[9].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-specimen-patient"
* rest.resource[9].searchParam[0].type = #reference
* rest.resource[9].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[9].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[10].type = #Observation
* rest.resource[10].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-genomic-region-studied"
// The profile SHALL support Read
* rest.resource[10].interaction[0].code = #read
* rest.resource[10].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[10].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[10].interaction[1].code = #search-type
* rest.resource[10].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[10].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[10].searchParam[0].name = "patient"
* rest.resource[10].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[10].searchParam[0].type = #reference
* rest.resource[10].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[10].searchParam[0].extension[0].valueCode = #SHALL
// SHALL support Search by performer
* rest.resource[10].searchParam[1].name = "performer"
* rest.resource[10].searchParam[1].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-performer"
* rest.resource[10].searchParam[1].type = #reference
* rest.resource[10].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[10].searchParam[1].extension[0].valueCode = #SHALL

* rest.resource[11].type = #Observation
* rest.resource[11].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-karnofsky-performance-status"
// The profile SHALL support Read
* rest.resource[11].interaction[0].code = #read
* rest.resource[11].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[11].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[11].interaction[1].code = #search-type
* rest.resource[11].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[11].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[11].searchParam[0].name = "patient"
* rest.resource[11].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[11].searchParam[0].type = #reference
* rest.resource[11].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[11].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[12].type = #Condition
* rest.resource[12].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition"
// The profile SHALL support Read
* rest.resource[12].interaction[0].code = #read
* rest.resource[12].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[12].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[12].interaction[1].code = #search-type
* rest.resource[12].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[12].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[12].searchParam[0].name = "patient"
* rest.resource[12].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-condition-patient"
* rest.resource[12].searchParam[0].type = #reference
* rest.resource[12].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[12].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[13].type = #Condition
* rest.resource[13].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition"
// The profile SHALL support Read
* rest.resource[13].interaction[0].code = #read
* rest.resource[13].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[13].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[13].interaction[1].code = #search-type
* rest.resource[13].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[13].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[13].searchParam[0].name = "patient"
* rest.resource[13].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-condition-patient"
* rest.resource[13].searchParam[0].type = #reference
* rest.resource[13].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[13].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[14].type = #Observation
* rest.resource[14].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-distant-metastases-category"
// The profile SHALL support Read
* rest.resource[14].interaction[0].code = #read
* rest.resource[14].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[14].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[14].interaction[1].code = #search-type
* rest.resource[14].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[14].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[14].searchParam[0].name = "patient"
* rest.resource[14].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[14].searchParam[0].type = #reference
* rest.resource[14].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[14].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[15].type = #Observation
* rest.resource[15].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category"
// The profile SHALL support Read
* rest.resource[15].interaction[0].code = #read
* rest.resource[15].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[15].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[15].interaction[1].code = #search-type
* rest.resource[15].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[15].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[15].searchParam[0].name = "patient"
* rest.resource[15].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[15].searchParam[0].type = #reference
* rest.resource[15].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[15].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[16].type = #Observation
* rest.resource[16].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-regional-nodes-category"
// The profile SHALL support Read
* rest.resource[16].interaction[0].code = #read
* rest.resource[16].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[16].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[16].interaction[1].code = #search-type
* rest.resource[16].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[16].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[16].searchParam[0].name = "patient"
* rest.resource[16].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[16].searchParam[0].type = #reference
* rest.resource[16].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[16].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[17].type = #Observation
* rest.resource[17].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-stage-group"
// The profile SHALL support Read
* rest.resource[17].interaction[0].code = #read
* rest.resource[17].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[17].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[17].interaction[1].code = #search-type
* rest.resource[17].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[17].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[17].searchParam[0].name = "patient"
* rest.resource[17].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[17].searchParam[0].type = #reference
* rest.resource[17].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[17].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[18].type = #Observation
* rest.resource[18].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-distant-metastases-category"
// The profile SHALL support Read
* rest.resource[18].interaction[0].code = #read
* rest.resource[18].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[18].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[18].interaction[1].code = #search-type
* rest.resource[18].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[18].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[18].searchParam[0].name = "patient"
* rest.resource[18].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[18].searchParam[0].type = #reference
* rest.resource[18].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[18].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[19].type = #Observation
* rest.resource[19].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-primary-tumor-category"
// The profile SHALL support Read
* rest.resource[19].interaction[0].code = #read
* rest.resource[19].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[19].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[19].interaction[1].code = #search-type
* rest.resource[19].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[19].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[19].searchParam[0].name = "patient"
* rest.resource[19].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[19].searchParam[0].type = #reference
* rest.resource[19].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[19].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[20].type = #Observation
* rest.resource[20].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-regional-nodes-category"
// The profile SHALL support Read
* rest.resource[20].interaction[0].code = #read
* rest.resource[20].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[20].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[20].interaction[1].code = #search-type
* rest.resource[20].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[20].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[20].searchParam[0].name = "patient"
* rest.resource[20].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[20].searchParam[0].type = #reference
* rest.resource[20].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[20].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[21].type = #Observation
* rest.resource[21].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-pathological-stage-group"
// The profile SHALL support Read
* rest.resource[21].interaction[0].code = #read
* rest.resource[21].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[21].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[21].interaction[1].code = #search-type
* rest.resource[21].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[21].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[21].searchParam[0].name = "patient"
* rest.resource[21].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[21].searchParam[0].type = #reference
* rest.resource[21].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[21].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[22].type = #Observation
* rest.resource[22].supportedProfile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tumor-marker"
// The profile SHALL support Read
* rest.resource[22].interaction[0].code = #read
* rest.resource[22].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[22].interaction[0].extension[0].valueCode = #SHALL
// The profile SHALL support Search
* rest.resource[22].interaction[1].code = #search-type
* rest.resource[22].interaction[1].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[22].interaction[1].extension[0].valueCode = #SHALL
// SHALL support Search by patient
* rest.resource[22].searchParam[0].name = "patient"
* rest.resource[22].searchParam[0].definition = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-patient"
* rest.resource[22].searchParam[0].type = #reference
* rest.resource[22].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[22].searchParam[0].extension[0].valueCode = #SHALL
