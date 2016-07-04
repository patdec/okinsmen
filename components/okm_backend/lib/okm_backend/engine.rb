module OkmBackend
  class Engine < ::Rails::Engine
    isolate_namespace OkmBackend

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec_factories'
    end
  end
end
