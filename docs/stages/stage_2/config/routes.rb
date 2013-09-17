Curso::Application.routes.draw do
  resources :books
  get 'books/page/:page', controller: 'books', action: 'index'

  devise_for :users
  root "welcome#index"
end
