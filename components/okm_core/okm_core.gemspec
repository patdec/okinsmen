$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "okm_core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "okm_core"
  s.version     = OkmCore::VERSION
  s.authors     = ["Patrice André"]
  s.email       = ["mail@patriceandre.com"]
  s.homepage    = "http://patdec@github.com"
  s.summary     = "Summary of OkmCore."
  s.description = "Description of OkmCore."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta3", "< 5.1"

  s.add_dependency "slim-rails" , "~> 3.1.0"
end
