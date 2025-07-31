Rails.application.routes.draw do
  root 'home#index'
  
  scope :auth do
    get 'failure' => 'auth0#failure'
    
    # Auth0 routes    
    scope :auth0 do
      get 'callback' => 'auth0#callback'
    end
  end
end
