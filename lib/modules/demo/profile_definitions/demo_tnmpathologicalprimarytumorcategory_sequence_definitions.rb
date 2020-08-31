# frozen_string_literal: true

module Inferno
  module DemoProfileDefinitions
    class DemoTnmpathologicalprimarytumorcategorySequenceDefinition
      SEARCH_PARAMETERS = [
        {
          url: 'http://hl7.org/fhir/us/mcode/SearchParameter/mcode-observation-patient',
          code: 'patient',
          expression: 'Observation.subject.where(resolve() is Patient)',
          multipleOr: true,
          multipleOrExpectation: '',
          multipleAnd: true,
          multipleAndExpectation: '',
          modifiers: [
            {
              modifier: 'missing',
              expectation: ''
            },
            {
              modifier: 'type',
              expectation: ''
            },
            {
              modifier: 'identifier',
              expectation: ''
            }
          ],
          comparators: []
        }
      ].freeze
    end
  end
end
