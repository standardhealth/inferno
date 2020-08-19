Instance: ProcedurePatientSearch
InstanceOf: SearchParameter
Title: "Search Procedure by patient"
Usage: #definition
* url = "http://hl7.org/fhir/mcode/SearchParameter/mcode-procedure-patient"
* name = "mCODEProcedurePatient"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* status = #draft
* date = "2020-08-01"
* description = "This search parameter searches for Procedures with a given patient as its subject."
* code = #patient
* base = #Procedure
* type = #reference
* expression = "Procedure.subject.where(resolve() is Patient)"
* xpath = "f:Procedure/f:subject"
* xpathUsage = #normal
* target[0] = #Patient
* target[1] = #Group
* multipleOr[0] = true
* multipleAnd[0] = true
* modifier[0] = #missing
* modifier[1] = #type
* modifier[2] = #identifier