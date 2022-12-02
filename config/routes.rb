# frozen_string_literal: true

Rails.application.routes.draw do
  resources :questions, only: :show

  root 'tests#home'
  get '/tests/:question_id/submit', to: 'tests#submit'
  get '/result', to: 'tests#result'
  get '/start', to: 'tests#start'
end
