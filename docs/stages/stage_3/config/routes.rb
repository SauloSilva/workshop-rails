Curso::Application.routes.draw do
  get "categories" => 'categories#index'
  get "categories/:id" => 'categories#show', as: :category
  get 'categories/page/:page', controller: 'categories', action: 'index'
  get 'categories/:id/page/:page', controller: 'categories', action: 'show'

  resources :books
  get 'books/page/:page', controller: 'books', action: 'index'

  devise_for :users
  root "books#index"
end
