# frozen_string_literal: true

require("doorkeeper/grape/helpers")

module Endava
  class API < Grape::API
    # https://github.com/ruby-grape/grape/blob/3901bf4ddc85b83bf6df9c26b6850f2d6117a663/lib/grape/api.rb#L35
    def self.inherited(core_api)
      super

      core_api.helpers Endava::Helpers
      core_api.helpers Grape::Cache::Helpers
    end
  end
end
