Rails.application.routes.draw do
root "creatures#index"

get "/creatures", to:"creatures#index", as:"creatures"
get "/creatures/new", to:"creatures#new", as:"new_creatures"
post "/creatures", to:"creatures#create"
get  "/creatures/:id", to:"creature#show", as: "creature"
get  "/creatures/:id/edit", to:"creature#edit"
patch "/creatures/:id", to:"creature#update"
delete "/creatures/:id", to:"creature#destroy"

end
