Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  #before it was resources :teams, only [:create, :index]

  resources :crimes do
    resources :teams, only: [:create, :edit]
  end

  get 'profile/teams', to: 'teams#index'
  #added the line above to create a custom route for team index
  get 'profile/skillsets/new', to: 'skillsets#new'
  post 'profile/skillsets', to: 'skillsets#create'


  get 'profile', to: 'pages#profile'
  get 'current_user_json' => 'pages#current_user_json'
end
