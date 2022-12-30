# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :quotes do
    resources :line_item_dates, except: %i[index show] do
      resources :line_items, except: %i[index show]
    end
  end
end
