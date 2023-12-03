# frozen_string_literal: true

module Endava
  module Entities
    class User < Grape::Entity
      expose :name, :email

      def self.entity_name
        "User"
      end
    end
  end
end
