Rails.application.routes.draw do
  get '/health', to: 'health#index'
  root 'home#index'
  
  scope :auth do
    get 'failure' => 'auth0#failure'
    
    # Auth0 routes    
    scope :auth0 do
      get 'callback' => 'auth0#callback'
      get 'logout' => 'auth0#logout'
    end
  end

  # Profile route
  get 'profile' => 'profile#show', as: :profile

  # Recipes route
  get 'recipes' => 'recipes#index', as: :recipes

  # Admin scope
  scope :admin do
    resources :users, only: [:index, :show] do 
      member do
        put :update_barista_level
      end
    end
  end

  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#server_error', via: :all
  match '/403', to: 'errors#forbidden', via: :all
end
