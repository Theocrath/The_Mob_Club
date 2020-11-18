Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :crimes do
    resources :teams, only: [:create, :index]
  end


  get 'profile', to: 'pages#profile'
  get 'current_user_json' => 'pages#current_user_json'
end
