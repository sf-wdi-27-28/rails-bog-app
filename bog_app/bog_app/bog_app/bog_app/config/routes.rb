Rails.application.routes.draw do
  root "creatures#index"
  get "creatures", to: "creatures#index", as: "creatures"
  get "creature/new", to: "creatures#new", as: "new_creature"
  post "creatures", to: "creatures#create"
end
