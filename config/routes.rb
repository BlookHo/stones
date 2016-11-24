Rails.application.routes.draw do


  root 'main#index'



  # main
  match 'index',    to: 'main#index',           via: 'get'
  match 'about',    to: 'main#about',           via: 'get'
  match 'help',     to: 'main#help',            via: 'get'
  match 'contacts', to: 'main#contacts',        via: 'get'
  match 'task',     to: 'main#task',            via: 'get'


  # get 'main/index'
  #
  # get 'main/help'
  #
  # get 'main/contacts'
  #
  # get 'main/about'
  #
  # get 'main/task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
