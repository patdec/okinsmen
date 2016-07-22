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

  s.add_dependency 'rails', '~> 5.0.0'
  s.add_dependency 'pg', '~> 0.18.4'

  s.add_dependency 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
  s.add_dependency 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
  s.add_dependency 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
  s.add_dependency 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
  s.add_dependency 'turbolinks', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  s.add_dependency 'jbuilder', '~> 2.0'

  s.add_dependency 'slim-rails' , '~> 3.1.0'

  s.add_development_dependency  'rspec-rails', '~> 3.5.0'
  s.add_development_dependency  'capybara', '~> 2.7.1'
  s.add_development_dependency  'factory_girl_rails', '~> 4.7.0'
  s.add_development_dependency  'shoulda-matchers', '~> 3.1'
  s.add_development_dependency  'guard-rspec', '~> 4.7.2'

end
