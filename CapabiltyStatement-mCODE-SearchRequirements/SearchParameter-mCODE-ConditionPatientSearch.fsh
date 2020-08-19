Instance: ConditionPatientSearch
InstanceOf: SearchParameter
Title: "Search Condition by patient"
Usage: #definition
* url = "http://hl7.org/fhir/mcode/SearchParameter/mcode-condition-patient"
* name = "mCODEConditionPatient"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* status = #draft
* date = "2020-08-01"
* description = "This search parameter searches for Conditions with a given patient as its subject."
* code = #patient
* base = #Condition
* type = #reference
* expression = "Condition.subject.where(resolve() is Patient)"
* xpath = "f:Condition/f:subject"
* xpathUsage = #normal
* target[0] = #Patient
* target[1] = #Group
* multipleOr[0] = true
* multipleAnd[0] = true
* modifier[0] = #missing
* modifier[1] = #type
* modifier[2] = #identifier