Ebooks::Application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  resources :users
  resources :books
end
