# frozen_string_literal: true

module Inferno
  module Sequence
    class DemoTnmclinicalprimarytumorcategorySequence < SequenceBase
      include Inferno::SequenceUtilities

      title 'TNM Clinical Primary Tumor Category Tests'
      description 'Verify support for the server capabilities required by the TNM Clinical Primary Tumor Category profile.'
      details %(
      )
      test_id_prefix 'TNMCPTC'
      requires :observation_id

      @resource_found = nil

      def validate_resource_item(resource, property, value)
        case property

        when 'patient'
          values_found = resolve_path(resource, 'subject.reference')
          value = value.split('Patient/').last
          match_found = values_found.any? { |reference| [value, 'Patient/' + value, "#{@instance.url}/Patient/#{value}"].include? reference }
          assert match_found, "patient in Observation/#{resource.id} (#{values_found}) does not match patient requested (#{value})"

        end
      end

      test :resource_read do
        metadata do
          id '01'
          name 'Server returns correct Observation resource from the Observation read interaction'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category'
          description %(
            This test will verify that Observation resources can be read from the server.
          )
          versions :r4
        end

        resource_id = @instance.observation_id
        @resource_found = validate_read_reply(FHIR::Observation.new(id: resource_id), FHIR::Observation)
        save_resource_references(versioned_resource_class('Observation'), [@resource_found], 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category')
      end

      test :search_by_patient do
        metadata do
          id '02'
          name 'Server returns expected results from Observation search by patient'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category'
          description %(
            This test will verify that Observation resources can be searched from the server.
          )
          versions :r4
        end

        skip 'No resource found from Read test' unless @resource_found.present?
        patient_val = find_search_parameter_value_from_resource(@resource_found, 'subject')
        search_parameters = {
          'patient': patient_val
        }

        reply = get_resource_by_params(versioned_resource_class('Observation'), search_parameters)
        validate_search_reply(versioned_resource_class('Observation'), reply, search_parameters)
      end

      test :resource_validate_profile do
        metadata do
          id '03'
          name 'Server returns Observation resource that matches the TNM Clinical Primary Tumor Category profile'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category'
          description %(
            This test will validate that the Observation resource returned from the server matches the TNM Clinical Primary Tumor Category profile.
          )
          versions :r4
        end

        skip 'No resource found from Read test' unless @resource_found.present?
        test_resources_against_profile('Observation', 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category')
      end
    end
  end
end
