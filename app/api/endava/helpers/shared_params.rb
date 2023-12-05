# frozen_string_literal: true

module Endava
  module Helpers
    # Endava::Helpers::SharedParams
    module SharedParams
      extend Grape::API::Helpers

      params :period do
        optional :start_date, type: String, regexp: /^\d{4}-\d{2}-\d{2}$/
        optional :end_date, type: String, regexp: /^\d{4}-\d{2}-\d{2}$/
      end

      params :pagination do
        optional :page, type: Integer
        optional :per_page, type: Integer, values: 1..50
      end

      params :order do |options|
        optional :order_by, type: Symbol, values: options[:order_by], default: options[:default_order_by]
        optional :order, type: Symbol, values: %i(asc desc), default: options[:default_order]
      end
    end
  end
end
