# frozen_string_literal: true

module Endava
  module Entities
    class Error < Grape::Entity
      expose :code
      expose :message

      def self.entity_name
        "Error"
      end
    end
  end
end
