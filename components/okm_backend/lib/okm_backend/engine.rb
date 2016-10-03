module OkmBackend
  class Engine < ::Rails::Engine
    isolate_namespace OkmBackend

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec_factories'
      g.template_engine :slim
    end

    initializer "okm_backend.assets.precompile" do |app|
      app.config.assets.enabled=false
    end
  end
end
