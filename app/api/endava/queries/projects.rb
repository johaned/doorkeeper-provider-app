# frozen_string_literal: true

module Endava
  module Queries
    # Query object pattern + method chaining
    # Endava::Queries::Projects
    class Projects
      attr_reader :current_owner, :params

      def initialize(current_owner)
        @current_owner = current_owner || User.first
        @params = {}
      end

      def from(from)
        @params[:from] = from
        self
      end

      def to(to)
        @params[:to] = to
        self
      end

      def order_by(order_by, order_key = "asc")
        @params[:order_by] = order_by
        @params[:order_key] = order_key
        self
      end

      def all
        query = current_owner.projects

        query = query.where("created_at >= ?", params[:from]) if params[:from].present?
        query = query.where("created_at <= ?", params[:to]) if params[:to].present?

        if params[:order_by].present? && params[:order_key].present?
          query = query.order("#{params[:order_by]} #{params[:order_key]}")
        end

        query
      end
    end
  end
end
