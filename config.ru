$:.unshift File.expand_path "..", __FILE__

require "api/env"
require "api/app"

run API::App
