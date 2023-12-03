# frozen_string_literal: true

module Endava
  module V1
    class Projects < ::Endava::API
      version "v1"

      before do
        doorkeeper_authorize!
      end

      desc "Returns a list of your projects." do
        summary "Returns a list of your projects"
        detail "Returns a list of your projects - detailed description"
        params  Endava::Entities::Project.documentation
        success Endava::Entities::Project
        failure [[401, "Unauthorized", "Endava::Entities::Error"]]
        default code: 500, message: "InvalidRequest", model: Endava::Entities::Error
        named "Projects"
        headers Authorization: {
                  description: "Validates your identity with Bearer token",
                  required: true
                }
        hidden false
        deprecated false
        is_array true
        nickname "Projects"
        produces ["application/json"]
        consumes ["application/json"]
        # tags ["tag 1", "tag 2"]
      end
      cache do
        key { params.sort }
        expires_in 30.seconds
        cache_control public: true
      end
      get "/", scopes: [:projects, :read] do
        projects = current_owner.projects
        present projects, with: Endava::Entities::Project
      end

      params do
        requires :id, type: Integer, desc: "Projects identifier"
      end
      get ":id", scopes: [:projects, :read] do
        current_owner.projects.find(params[:id])
      end
    end
  end
end
