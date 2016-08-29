module OkmCore
  class Engine < ::Rails::Engine
    isolate_namespace OkmCore

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s+File::Separator
        app.config.paths["db/migrate"].concat config.paths["db/migrate"].expanded
      end
    end

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec_factories'
    end

  end
end
