Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup', :to => "users#new"
  get 'users/new'
  get 'sessions/new'
  get '/contact', :to => "static_pages#contact"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :questions, only:[:create, :destroy]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
