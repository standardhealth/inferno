# frozen_string_literal: true

module Inferno
  module Sequence
    class MCODEValidationMcodeCancerDiseaseStatusSequence < SequenceBase
      title 'Cancer Disease Status Tests'

      description 'Verify support for the server capabilities required by the Cancer Disease Status.'

      details %(
      )

      binding.pry()

      test_id_prefix 'CDS'
      requires :mcode_cancer_disease_status_id
      conformance_supports :Observation

      test :validate_resources do
        metadata do
          id '02'
          name 'The Observation resource returned from the first Read test is valid according to the profile http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status.'
          link ''
          description %(

          )
          versions :r4
        end

        raw_resource = @instance.mcode_cancer_disease_status_id

        test_resource_against_profile('Observation', raw_resource, 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status')
      end
    end
  end
end
