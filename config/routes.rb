Rails.application.routes.draw do


  root 'main#task'



  # main
  match 'index',    to: 'main#index',           via: 'get'
  match 'about',    to: 'main#about',           via: 'get'
  match 'help',     to: 'main#help',            via: 'get'
  match 'contacts', to: 'main#contacts',        via: 'get'
  match 'task',     to: 'main#task',            via: 'get'

  # main#tasks #
  match 'task',               to: 'main#task',              via: 'get'

  match 'task_one',           to: 'main#task_one',          via: 'get'
  match 'display_wheather',   to: 'main#display_wheather',  via: 'get'

  match 'search_form_jand',                   to: 'main#search_form_jand',                  via: 'get'
  # match 'task_two/search_form_jand',                 to: 'main#search_form_jand',                via: 'get'
  # match 'task_two/display_search_results',   to: 'main#display_search_results',  via: 'get'





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
