module OkmBackend
  class Engine < ::Rails::Engine
    isolate_namespace OkmBackend

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec_factories'
      g.template_engine :slim
    end
  end
end
