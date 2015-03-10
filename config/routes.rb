Rails.application.routes.draw do
  resources :groups do
    member do
      get 'landmark', to: "groups#landmark"
    end

    resources :users do
      member do
        get 'leave', to: 'groups#leave'
      end
    end
    resources :invitations
    resources :photos
  end

  get '/groups/:id/map', to: 'groups#map'
  get '/groups/:id/chat', to: 'groups#chat'

  resources :invitations
  delete '/groups/:group_id/invitations/:id/accept', to: 'invitations#accept'
  delete '/groups/:group_id/invitations/:id/decline', to: 'invitations#decline'

  root 'welcome#index'

  get 'welcome/index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
