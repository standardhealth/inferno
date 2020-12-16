# frozen_string_literal: true

module Inferno
  module USCore310ProfileDefinitions
    class USCore310EncounterSequenceDefinitions
      MUST_SUPPORTS = {
        extensions: [],
        slices: [],
        elements: [
          {
            path: 'identifier'
          },
          {
            path: 'identifier.system'
          },
          {
            path: 'identifier.value'
          },
          {
            path: 'status'
          },
          {
            path: 'class'
          },
          {
            path: 'type'
          },
          {
            path: 'subject'
          },
          {
            path: 'participant'
          },
          {
            path: 'participant.type'
          },
          {
            path: 'participant.period'
          },
          {
            path: 'participant.individual'
          },
          {
            path: 'period'
          },
          {
            path: 'reasonCode'
          },
          {
            path: 'hospitalization'
          },
          {
            path: 'hospitalization.dischargeDisposition'
          },
          {
            path: 'location'
          },
          {
            path: 'location.location'
          }
        ]
      }.freeze

      DELAYED_REFERENCES = [
        {
          path: 'participant.individual',
          resources: [
            'Practitioner'
          ]
        }
      ].freeze
    end
  end
end
