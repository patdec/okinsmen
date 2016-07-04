OkmBackend::Engine.routes.draw do


  root 'dashboards#index'

  #get 'dashboard', to: 'dashboards#index'
  resource :dashboards


end
