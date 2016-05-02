Rails.application.routes.draw do
  get "/", to: "creatures#index"
  get "/creatures", to: "creatures#index", as: "creatures"
end
