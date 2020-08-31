# frozen_string_literal: true

module Inferno
  module Sequence
    class DemoCancerpatientSequence < SequenceBase
      include Inferno::SequenceUtilities

      title 'Cancer Patient Tests'
      description 'Verify support for the server capabilities required by the Cancer Patient profile.'
      details %(
      )
      test_id_prefix 'CP'
      requires :patient_id

      @resource_found = nil

      test :resource_read do
        metadata do
          id '01'
          name 'Server returns correct Patient resource from the Patient read interaction'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient'
          description %(
            This test will verify that Patient resources can be read from the server.
          )
          versions :r4
        end

        resource_id = @instance.patient_id
        @resource_found = validate_read_reply(FHIR::Patient.new(id: resource_id), FHIR::Patient)
        save_resource_references(versioned_resource_class('Patient'), [@resource_found], 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient')
      end

      test :resource_validate_profile do
        metadata do
          id '02'
          name 'Server returns Patient resource that matches the Cancer Patient profile'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient'
          description %(
            This test will validate that the Patient resource returned from the server matches the Cancer Patient profile.
          )
          versions :r4
        end

        skip 'No resource found from Read test' unless @resource_found.present?
        test_resources_against_profile('Patient', 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient')
      end
    end
  end
end
