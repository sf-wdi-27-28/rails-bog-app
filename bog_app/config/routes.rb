Rails.application.routes.draw do
  root "creatures#index"

  get "creatures", to: "creatures#index", as: "creatures"
  # get "creature/:id", to: "creatures#show", as: "show_creature"
end
