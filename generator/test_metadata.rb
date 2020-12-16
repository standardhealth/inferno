# frozen_string_literal: true

module Inferno
  module Generator
    class TestMetadata
      attr_accessor :title, :key, :link, :description, :optional, :code

      def initialize(title: '', key: nil, link: '', description: '', code: '', optional: false)
        @title = title
        @key = key
        @link = link
        @description = description
        @code = code
        @optional = optional
      end
    end
  end
end
