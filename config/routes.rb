Rails.application.routes.draw do
  defaults format: :json do 
    get "home/index", to: "home#index"
    get "me", to: "me#show"
    resources :articles 
    resources :coments
    resources :users
    resources :api_tokens
       
    post "registrations", to: "registrations#create"
    post "sessions", to: "sessions#create"
    delete "sessions", to: "sessions#destroy"
  end
 
  root "articles#index"
end
