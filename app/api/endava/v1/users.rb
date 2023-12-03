# frozen_string_literal: true

module Endava
  module V1
    class Users < Endava::API
      version "v1"

      get :me, scopes: [:user, :read] do
        current_user.to_json
      end
    end
  end
end
