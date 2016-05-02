Rails.application.routes.draw do
  root "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures"
  # get
  # post
  # get
  # get
  # patch
  # delete

end
