# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'flats#index'
  get 'flats/search', to: 'flats#search', as: :search_flats
  resources :flats
  # Defines the root path route ("/")
  # root "articles#index"
end
