# frozen_string_literal: true

Rails.application.routes.draw do
  resources :questions

  root 'questions#start'
  get '/questions/:question_id/submit', to: 'questions#submit'
  get '/result', to: 'questions#result'
end
