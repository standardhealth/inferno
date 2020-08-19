Instance: MedicationStatementSourceSearch
InstanceOf: SearchParameter
Title: "Search MedicationStatement by patient"
Usage: #definition
* url = "http://hl7.org/fhir/mcode/SearchParameter/mcode-medicationstatement-source"
* name = "mCODEMedicationStatementSource"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/MedicationStatement-source"
* status = #draft
* date = "2020-08-01"
* description = "This search parameter searches for MedicationStatements with a given patient as its source."
* code = #patient
* base = #MedicationStatement
* type = #reference
* expression = "MedicationStatement.​informationSource"
* xpath = "f:Observation/f:source"
* xpathUsage = #normal
* target[0] = #Patient
* target[1] = #Group
* multipleOr[0] = true
* multipleAnd[0] = true
* modifier[0] = #missing
* modifier[1] = #type
* modifier[2] = #identifier