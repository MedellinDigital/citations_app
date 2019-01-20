Rails.application.routes.draw do
  get 'citations/index'

  resources :citations

  root 'citations#index'
end
