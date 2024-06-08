require "rack"
require_relative "app/app"
require_relative "app/middleware/logger"

use Rack::Reloader, 0
use Logger
run App.new
