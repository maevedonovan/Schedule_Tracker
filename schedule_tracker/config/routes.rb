Rails.application.routes.draw do
  resources :users
  get 'login' => 'login#index', as: :login

  get 'login' => 'login#authenticate', as: :authenticate

  get 'logout' => 'login#logout', as: :logout

  get '/' => 'home#index', as: :home

  root 'home#index'

  resources :professors
  resources :prossefors
  resources :courses
  resources :registrations
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
