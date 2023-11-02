Rails.application.routes.draw do
  
   resources :articles 
   resources :coments
   resources :users

  post "registrations", to: "registrations#create"
  post "sessions", to: "sessions#create"
  delete "sessions", to: "sessions#destroy"

  
  
 

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
  root "users#index"
end
