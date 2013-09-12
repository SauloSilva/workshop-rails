Ebooks::Application.routes.draw do
  root to: 'books#index'
  get "/categories" => 'categories#index'
  get "/category/:id" => 'categories#show', as: :category
  get '/categories/page/:page', controller: 'categories', action: 'index'

  devise_for :users
  resources :books
  get '/books/page/:page', controller: 'books', action: 'index'
end
