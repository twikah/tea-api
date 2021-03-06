Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :herbs, only: [ :index, :show, :update, :create, :destroy ]
      resources :herb_types, only: [ :index, :show, :update, :create, :destroy ]
      resources :misc_ingredients, only: [ :index, :show, :update, :create, :destroy ]
    end
  end

  root to: 'pages#home'
  get '/api', to: 'pages#api'
end
