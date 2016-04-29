Rails.application.routes.draw do
  root 'creatures#index'

  #METHOD   #PATH                     #CONTROLLER#ACTION    #ALIAS
  get       '/creatures'    =>        'creatures#index',    as: :creatures

end
