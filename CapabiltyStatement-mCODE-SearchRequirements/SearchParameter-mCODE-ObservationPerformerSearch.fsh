Instance: ObservationPerformerSearch
InstanceOf: SearchParameter
Title: "Search Observation by patient"
Usage: #definition
* url = "http://hl7.org/fhir/mcode/SearchParameter/mcode-observation-performer"
* name = "mCODEObservationPerformer"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Observation-performer"
* status = #draft
* date = "2020-08-01"
* description = "This search parameter searches for observations with a given patient as its performer."
* code = #patient
* base = #Observation
* type = #reference
* expression = "Observation.performer"
* xpath = "f:Observation/f:performer"
* xpathUsage = #normal
* target[0] = #Patient
* target[1] = #Group
* multipleOr[0] = true
* multipleAnd[0] = true
* modifier[0] = #missing
* modifier[1] = #type
* modifier[2] = #identifier