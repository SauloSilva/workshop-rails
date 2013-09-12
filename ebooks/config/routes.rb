Ebooks::Application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  resources :users
  resources :books
  get '/books/page/:page', controller: 'books', action: 'index'
end
