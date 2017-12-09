# frozen_string_literal: true

# @todo describe this
# @since 1.0.0
module Queryable
  extend ActiveSupport::Concern

  included do
    before_action :set_access_control_headers
  end

  private

  # def set_access_control_headers
  #   headers['Access-Control-Allow-Origin'] = request.env['HTTP_ORIGIN']
  #   headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
  #   headers['Access-Control-Max-Age'] = '1000'
  #   headers['Access-Control-Allow-Headers'] =
  #       '*,X-Requested-With,Content-Type,Auth-Key,Access-Token,Client'
  # end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Max-Age'] = '1000'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'
  end
end
