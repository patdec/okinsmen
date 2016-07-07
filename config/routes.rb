Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  constraints subdomain: 'www' do
    mount OkmFrontend::Engine => '/'
  end

  constraints subdomain: 'admin' do
    mount OkmBackend::Engine => '/'
  end
end
