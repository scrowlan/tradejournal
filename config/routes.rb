Rails.application.routes.draw do
  devise_for :users
  get 'users/new'

  root to: 'static_pages#home'

  resources :stocks

  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
