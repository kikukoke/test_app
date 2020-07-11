Rails.application.routes.draw do

  root "users#home"
  get "/new", to: "users#new"
  post "/new", to: "users#create"
  get "/test", to: "users#test_test"

  get '/lesson/new', to: "lessons#new"
  post '/lesson/new', to: "lessons#create"
  get '/lesson/show/:id', to: "lessons#show", as: "lessons_show" 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
