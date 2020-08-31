# frozen_string_literal: true

require_relative '../test_metadata'

module Inferno
  module Generator
    module ReadTest
      def create_read_test(metadata)
        read_test = TestMetadata.new(
          title: "Server returns correct #{metadata.resource_type} resource from the #{metadata.resource_type} read interaction",
          key: :resource_read,
          description: "This test will verify that #{metadata.resource_type} resources can be read from the server."
        )
        read_test.code = %(
            resource_id = @instance.#{metadata.resource_type.underscore}_id
            @resource_found = validate_read_reply(FHIR::#{metadata.resource_type}.new(id: resource_id), FHIR::#{metadata.resource_type})
            save_resource_references(versioned_resource_class('#{metadata.resource_type}'), [@resource_found], '#{metadata.url}')
        )
        metadata.add_test(read_test)
      end
    end
  end
end
