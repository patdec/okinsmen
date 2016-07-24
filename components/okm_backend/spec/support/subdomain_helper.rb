module SubdomainHelpers
  def set_subdomain(subdomain)
    site = "#{subdomain}.puma.local"
    Capybara.app_host = "http://#{site}"
    Capybara.always_include_port = true


    default_url_options[:host] = "#{site}"
  end
end
