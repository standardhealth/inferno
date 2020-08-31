# frozen_string_literal: true

module Inferno
  module Sequence
    class DemoCancergenomicsreportSequence < SequenceBase
      include Inferno::SequenceUtilities

      title 'Cancer Genomics Report Tests'
      description 'Verify support for the server capabilities required by the Cancer Genomics Report profile.'
      details %(
      )
      test_id_prefix 'CGR'
      requires :diagnostic_report_id

      @resource_found = nil

      def validate_resource_item(resource, property, value)
        case property

        when 'patient'
          values_found = resolve_path(resource, 'subject.reference')
          value = value.split('Patient/').last
          match_found = values_found.any? { |reference| [value, 'Patient/' + value, "#{@instance.url}/Patient/#{value}"].include? reference }
          assert match_found, "patient in DiagnosticReport/#{resource.id} (#{values_found}) does not match patient requested (#{value})"

        end
      end

      test :resource_read do
        metadata do
          id '01'
          name 'Server returns correct DiagnosticReport resource from the DiagnosticReport read interaction'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genomics-report'
          description %(
            This test will verify that DiagnosticReport resources can be read from the server.
          )
          versions :r4
        end

        resource_id = @instance.diagnostic_report_id
        @resource_found = validate_read_reply(FHIR::DiagnosticReport.new(id: resource_id), FHIR::DiagnosticReport)
        save_resource_references(versioned_resource_class('DiagnosticReport'), [@resource_found], 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genomics-report')
      end

      test :search_by_patient do
        metadata do
          id '02'
          name 'Server returns expected results from DiagnosticReport search by patient'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genomics-report'
          description %(
            This test will verify that DiagnosticReport resources can be searched from the server.
          )
          versions :r4
        end

        skip 'No resource found from Read test' unless @resource_found.present?
        patient_val = find_search_parameter_value_from_resource(@resource_found, 'subject')
        search_parameters = {
          'patient': patient_val
        }

        reply = get_resource_by_params(versioned_resource_class('DiagnosticReport'), search_parameters)
        validate_search_reply(versioned_resource_class('DiagnosticReport'), reply, search_parameters)
      end

      test :resource_validate_profile do
        metadata do
          id '03'
          name 'Server returns DiagnosticReport resource that matches the Cancer Genomics Report profile'
          link 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genomics-report'
          description %(
            This test will validate that the DiagnosticReport resource returned from the server matches the Cancer Genomics Report profile.
          )
          versions :r4
        end

        skip 'No resource found from Read test' unless @resource_found.present?
        test_resources_against_profile('DiagnosticReport', 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-genomics-report')
      end
    end
  end
end
