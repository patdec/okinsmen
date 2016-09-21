# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Dir[File.join(Rails.root,"components/okm_backend/app/assets/javascripts/okm_backend/*.coffee")].map{|f| f.split("/").last.split(".").first}.each do |f|
  Rails.application.config.assets.precompile += ["okm_backend/#{f}.js"]
end
# Rails.application.config.assets.precompile += %w( okm_backend/humen.js )