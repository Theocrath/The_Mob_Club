Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :crimes, except: :new do
    get 'crime_json' => 'crimes#crime_json'

    resources :teams, only: [:create, :update]  #before it was resources :teams, only [:create, :index]
  end
  #added the line above to create a custom route for team index

  resources :skillsets, only: [:new, :create, :edit, :update]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get 'profile', to: 'pages#profile'
  get 'current_user_json' => 'pages#current_user_json'
end
