# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  #GET /about
  get "about-us`", to: "about#index", as: :about

  #GET / (home page)

  # get "/", to: "main#index" ---> SAME AS root to

  root to: "main#index"

end
