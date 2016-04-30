Rails.application.routes.draw do
  get 'creatures/index'

  root "creatures#index"
  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as:"creature"
end
