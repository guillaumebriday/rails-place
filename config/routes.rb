# frozen_string_literal: true

Rails.application.routes.draw do
  get '/r/place', to: 'places#index'
  patch '/r/place', to: 'places#update'

  get '/', to: redirect('/r/place')
end
