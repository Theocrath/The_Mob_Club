Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :crimes, except: :new do
    resources :teams, only: [:create, :update, :destroy]  #before it was resources :teams, only [:create, :index]
  end
  #added the line above to create a custom route for team index
  # get 'profile/skillsets/new', to: 'skillsets#new'
  # post 'profile/skillsets', to: 'skillsets#create' # is this correct?
  resources :skillsets, only: [:new, :create, :edit, :update] do
    collection do
      get 'crime_skillset_new'
      post 'crime_skillset_create'
      get '/:id/edit_crime_skillset', to: 'skillsets#crime_skillset_edit', as: 'edit_crime_skillset'

      patch '/:id', to: 'skillsets#crime_skillset_update'
    end
  end

  get 'profile', to: 'pages#profile'
  get 'current_user_json' => 'pages#current_user_json' 
end
