Rails.application.routes.draw do
  root "creatures#index"

  get "/creatures", to: "creatres#index", as: creatures
end
