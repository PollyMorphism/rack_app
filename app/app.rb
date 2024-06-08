# frozen_string_literal: true

require_relative "router"

class App
  def call(env)
    request = Rack::Request.new(env)
    process_request(request)
  end

  private

  def process_request(request)
    Router.new(request).route!
  end
end
