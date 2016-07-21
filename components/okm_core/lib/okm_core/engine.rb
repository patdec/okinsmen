module OkmCore
  class Engine < ::Rails::Engine
    isolate_namespace OkmCore

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec_factories'
    end

  end
end
