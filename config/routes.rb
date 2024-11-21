Rails.application.routes.draw do
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_out', to: 'devise/sessions#destroy'

  end

  resources :topics
  resources :customers
  resources :options
  resources :questions
  devise_for :users
  resources :surveys
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Defines the root path route ("/")
  root "users#index"
end
