Rails.application.routes.draw do
  namespace :api do
    resources :setts
    resources :lifts
    resources :exercises
    resources :users
    post '/login', to: "auth#create"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
