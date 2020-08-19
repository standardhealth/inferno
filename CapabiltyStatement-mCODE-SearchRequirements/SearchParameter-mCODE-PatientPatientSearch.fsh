Instance: PatientPatientSearch
InstanceOf: SearchParameter
Title: "Search Patient by patient"
Usage: #definition
* url = "http://hl7.org/fhir/mcode/SearchParameter/mcode-patient-patient"
* name = "mCODEPatientPatient"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Patient-link"
* status = #draft
* date = "2020-08-01"
* description = "This search parameter searches for Patients with a given patient as its link."
* code = #patient
* base = #Patient
* type = #reference
* expression = "Patient.​link.​other"
* xpath = "f:Patient/f:link"
* xpathUsage = #normal
* target[0] = #Patient
* target[1] = #Group
* multipleOr[0] = true
* multipleAnd[0] = true
* modifier[0] = #missing
* modifier[1] = #type
* modifier[2] = #identifier