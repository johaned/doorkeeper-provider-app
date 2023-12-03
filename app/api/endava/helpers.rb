# frozen_string_literal: true

module Endava
  module Helpers
    # These helpers are for grape >= 0.10
    extend  ::Grape::API::Helpers
    include ::Doorkeeper::Grape::Helpers

    def current_owner
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
end
