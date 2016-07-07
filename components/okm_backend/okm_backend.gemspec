$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "okm_backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "okm_backend"
  s.version     = OkmBackend::VERSION
  s.authors     = ["Patrice André"]
  s.email       = ["mail@patriceandre.com"]
  s.homepage    = "http://patdec.github.io"
  s.summary     = "Summary of OkmBackend."
  s.description = "Description of OkmBackend."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  # s.test_files = Dir["spec/**/*"]

  s.add_dependency "okm_core"

  # s.add_development_dependency "pg", "~> 0.18.4"
  # s.add_development_dependency "rspec-rails", "~> 3.5.0"
  # s.add_development_dependency "capybara", "~> 2.7.1"
  # s.add_development_dependency "factory_girl_rails", "~> 4.7.0"
end
