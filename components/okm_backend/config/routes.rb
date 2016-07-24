OkmBackend::Engine.routes.draw do
  root 'dashboards#index'
  resource :dashboards, only: [:index]
  resources :humen
end
