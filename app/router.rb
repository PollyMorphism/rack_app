# frozen_string_literal: true

class Router
  attr_reader :request, :headers

  def initialize(request)
    @request = request
    @headers = { "Content-Type" => "text/html; charset=utf-8" }
  end

  def route!
    case request.path
    when "/"
      [200, headers, ["<h1>Hello World!</h1>"]]
    else
      [404, headers, ["<h1>Page not found</h1>"]]
    end
  end
end
