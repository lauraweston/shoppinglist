Rails.application.routes.draw do
  
  get '/auth/auth0/callback' => 'auth0#callback'
  
  get '/auth/failure' => 'auth0#failure'

  get '/login' => 'authorisation#login'
  get '/logout' => 'authorisation#logout'
  
  resources :lists do
    resources :items
  end

  root 'lists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
