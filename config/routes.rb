Rails.application.routes.draw do

  get 'resources/create'

  get 'resources/destroy'

  get 'skills/create'

  get 'skills/destroy'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'welcome/index'
  get 'welcome/about'
  root to: 'welcome#index'

  resources :users, only: [:show]

end
