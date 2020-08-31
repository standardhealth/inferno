# frozen_string_literal: true

module Inferno
  module Sequence
    class DemoSecondarycancerconditionSequence < SequenceBase
      include Inferno::SequenceUtilities

      title 'Secondary Cancer Condition Tests'
      description 'Verify support for the server capabilities required by the Secondary Cancer Condition profile.'
      details %(
      )
      test_id_prefix 'SCC'
      requires :condition_id

      @resource_found = nil

      def validate_resource_item(resource, property, value)
        case property

        when 'patient'
          values_found = resolve_path(resource, 'subject.reference')
          value = value.split('Patient/').last
          match_found = values_found.any? { |reference| [value, 'Patient/' + value, "#{@instance.url}/Patient/#{value}"].include? reference }
          assert match_found, "patient in Condition/#{resource.id} (#{values_found}) does not match patient requested (#{value})"

        end
      end

      test :resource_read do
        metadata do
          id '01'
          name 'Server returns correct Condition resource from the Condition read interaction'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition'
          description %(
            This test will verify that Condition resources can be read from the server.
          )
          versions :r4
        end

        resource_id = @instance.condition_id
        @resource_found = validate_read_reply(FHIR::Condition.new(id: resource_id), FHIR::Condition)
        save_resource_references(versioned_resource_class('Condition'), [@resource_found], 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition')
      end

      test :search_by_patient do
        metadata do
          id '02'
          name 'Server returns expected results from Condition search by patient'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition'
          description %(
            This test will verify that Condition resources can be searched from the server.
          )
          versions :r4
        end

        skip 'No resource found from Read test' unless @resource_found.present?
        patient_val = find_search_parameter_value_from_resource(@resource_found, 'subject')
        search_parameters = {
          'patient': patient_val
        }

        reply = get_resource_by_params(versioned_resource_class('Condition'), search_parameters)
        validate_search_reply(versioned_resource_class('Condition'), reply, search_parameters)
      end

      test :resource_validate_profile do
        metadata do
          id '03'
          name 'Server returns Condition resource that matches the Secondary Cancer Condition profile'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition'
          description %(
            This test will validate that the Condition resource returned from the server matches the Secondary Cancer Condition profile.
          )
          versions :r4
        end

        skip 'No resource found from Read test' unless @resource_found.present?
        test_resources_against_profile('Condition', 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition')
      end
    end
  end
end
