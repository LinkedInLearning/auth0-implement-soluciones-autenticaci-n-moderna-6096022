Rails.application.routes.draw do
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
  get 'recipes' => 'recipes#index', as: :recipes
end
