Rails.application.routes.draw do
  root to: 'pages#home'
  get 'schedule', to: 'pages#schedule'
  get 'getting_there', to: 'pages#getting_there'
  get 'accomodation', to: 'pages#accomodation'
  get 'wedding_list', to: 'pages#wedding_list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
