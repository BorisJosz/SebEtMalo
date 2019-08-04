Rails.application.routes.draw do
  get "form",  to: 'rsvp#question_1'
  get "formulaire" , to: 'rsvp#question_2'
  post "answer_1", to: "rsvp#answer_1"
  post "answer_2", to: "rsvp#answer_2"
  root to: 'pages#home'
  get 'practical_information', to: 'pages#practical_information'
  get 'wedding_list', to: 'pages#wedding_list'
  get 'qa', to: 'pages#qa'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
