Rails.application.routes.draw do
  resources :groups do
    resources :users
  end

  root 'welcome#index'

  get 'welcome/index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
