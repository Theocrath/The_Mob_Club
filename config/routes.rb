Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :crimes do
    resources :teams, only: [:create, :update]  #before it was resources :teams, only [:create, :index]
  end
  #added the line above to create a custom route for team index
  # get 'profile/skillsets/new', to: 'skillsets#new'
  # post 'profile/skillsets', to: 'skillsets#create' # is this correct?
  resources :skillsets, only: [:new, :create, :edit, :update]

  get 'profile', to: 'pages#profile'
  get 'current_user_json' => 'pages#current_user_json'
end
