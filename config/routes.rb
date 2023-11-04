Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      defaults format: :json do
        get "home/index", to: "home#index"
      end
    end
  end



  resources :articles 
  resources :coments
  resources :users
  resources :api_tokens

  post "registrations", to: "registrations#create"
  post "sessions", to: "sessions#create"
  delete "sessions", to: "sessions#destroy"

  
  
 

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
 root "users#index"
end
