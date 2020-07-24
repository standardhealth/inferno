# frozen_string_literal: true

module Inferno
  module Sequence
    class MCODEValidationCancerPatientSequence < SequenceBase
      title 'Cancer Patient Tests'

      description 'Verify support for the server capabilities required by the Cancer Patient.'

      details %(
      )

      test_id_prefix 'CP'
      requires :mcode_cancer_patient_id
      conformance_supports :Patient

      test :validate_resources do
        metadata do
          id '02'
          name 'The Observation resource JSON is valid according to the profile http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient.'
          link ''
          description %(
            Validate the input Resource JSON.
          )
          versions :r4
        end

        raw_resource = @instance.mcode_cancer_patient_id

        test_resource_against_profile('Patient', raw_resource, 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient')
      end
    end
  end
end
