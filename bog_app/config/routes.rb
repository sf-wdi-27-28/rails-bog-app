Rails.application.routes.draw do
  get 'creatures/index'

  get 'creatures/new'

  get 'creatures/create'

  get 'creatures/show'

  get 'creatures/edit'

  get 'creatures/update'

  get 'creatures/destroy'

  root "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures"
end
