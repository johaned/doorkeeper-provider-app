# frozen_string_literal: true

module Endava
  module Entities
    class Project < Grape::Entity
      # root "projects", "project"

      expose :user_id, :name, :url, :created_at, :updated_at

      def self.entity_name
        "Project"
      end
    end
  end
end
