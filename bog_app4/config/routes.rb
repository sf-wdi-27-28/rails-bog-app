Rails.application.routes.draw do
  root "creatures#index"

  get "/creatures", to: "creatures#index"

end
