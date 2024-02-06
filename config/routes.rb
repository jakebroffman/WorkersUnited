Rails.application.routes.draw do
  resources :users do
    resources :roles
    resources :rsvps
  end

  resources :events do
    resources :roles
    resources :rsvps
  end

  resources :roles do
    resources :rsvps
  end

  resources :rsvps

  post '/login', to: 'sessions#login'
  post '/logout', to: 'sessions#logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
