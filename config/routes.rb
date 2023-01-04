# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/r/place', to: 'places#index'
  patch '/r/place', to: 'places#update'

  get '/', to: redirect('/r/place')
end
