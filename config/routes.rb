Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  get 'profile', to: 'pages#profile'
  get 'current_user_json' => 'application#current_user_json'
end
