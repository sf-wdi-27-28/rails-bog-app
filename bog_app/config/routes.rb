Rails.application.routes.draw do
  root "creatures#index"

  get "/creatures", to: "creaetures#index", as: "creatures"

end
