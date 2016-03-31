$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "okm_core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "okm_core"
  s.version     = OkmCore::VERSION
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of OkmCore."
  s.description = "TODO: Description of OkmCore."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta3", "< 5.1"

  s.add_development_dependency "sqlite3"
end
