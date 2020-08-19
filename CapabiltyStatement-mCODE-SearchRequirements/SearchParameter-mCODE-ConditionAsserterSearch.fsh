Instance: ConditionAsserterSearch
InstanceOf: SearchParameter
Title: "Search Condition by patient assserter"
Usage: #definition
* url = "http://hl7.org/fhir/mcode/SearchParameter/mcode-condition-asserter"
* name = "mCODEConditionAsserter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Condition-asserter"
* status = #draft
* date = "2020-08-01"
* description = "This search parameter searches for Conditions with a given patient as its asserter."
* code = #patient
* base = #Condition
* type = #reference
* expression = "Condition.asserter"
* xpath = "f:Condition/f:asserter"
* xpathUsage = #normal
* target[0] = #Patient
* target[1] = #Group
* multipleOr[0] = true
* multipleAnd[0] = true
* modifier[0] = #missing
* modifier[1] = #type
* modifier[2] = #identifier