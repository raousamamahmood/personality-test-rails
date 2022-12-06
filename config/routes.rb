# frozen_string_literal: true

Rails.application.routes.draw do
  resources :questions, only: :index

  root 'tests#home'
  get '/submit', to: 'tests#result'
end
