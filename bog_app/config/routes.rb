Rails.application.routes.draw do
  get 'creatures/index'

 get '/creatures', to: "creatures#index"
end
