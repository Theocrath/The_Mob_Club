Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :crimes, except: :new do
    get 'crime_json' => 'crimes#crime_json'
    resources :chatrooms, except: [:update, :edit] do
      resources :messages, only: :create
    end

    # crimes/:id/chatrooms/:id
    #for the chatroom, it needs: new, create, show, delete

    # crime_chatroom GET    /crimes/:crime_id/chatrooms/:id(.:format)       chatrooms#show
    # crime_teams POST   /crimes/:crime_id/teams(.:format) teams#create

    resources :teams, only: [:create, :update]  #before it was resources :teams, only [:create, :index]
  end
  #added the line above to create a custom route for team index

  resources :skillsets, only: [:new, :create, :edit, :update]

  # resources :chatrooms, only: :show do
  #   resources :messages, only: :create
  # end

  get 'profile', to: 'pages#profile'
  get 'current_user_json' => 'pages#current_user_json'
end
