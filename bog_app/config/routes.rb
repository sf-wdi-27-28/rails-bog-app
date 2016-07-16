Rails.application.routes.draw do
  root 'creatures#index'

  #METHOD   #PATH                           #CONTROLLER#ACTION    #ALIAS
  get       '/creatures'            =>      'creatures#index',    as: :creatures
  post      '/creatures'            =>      'creatures#create'
  get       '/creatures/new'        =>      'creatures#new',      as: :new_creature
  get       '/creatures/:id'        =>      'creatures#show',     as: :creature
  get       'creatures/:id/edit'    =>      'creatures#edit',     as: :edit_record
  patch     '/creatures/:id'        =>      'creatures#update'
  delete    'creatures/:id'         =>      'creatures#destroy' 

end
