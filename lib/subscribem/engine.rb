require "warden"

module Subscribem
  class Engine < ::Rails::Engine
    isolate_namespace Subscribem

    config.middleware.use Warden::Manager

    config.generators do |g|
      g.test_framework      :rspec,        fixture: false
    end
  end
end
