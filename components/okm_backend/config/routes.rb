OkmBackend::Engine.routes.draw do


  root 'dashboards#index'

  #get 'dashboard', to: 'dashboards#index', as: 'bobo'
  resource :dashboards, only: [:index]


end
