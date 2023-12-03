# frozen_string_literal: true

module Endava
  class Base < Grape::API
    namespace("projects") { mount(V1::Projects) }
    namespace("Users") { mount(V1::Users) }

    add_swagger_documentation(add_version: true)
  end
end
