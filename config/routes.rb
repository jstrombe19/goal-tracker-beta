Rails.application.routes.draw do
  resources :widgets
  namespace :api do
    namespace :v1 do
      resources :categories, except: [:new]
      resources :users
      resources :goals
      resources :widgets
    end
  end
  post 'authenticate', to: 'authentication#authenticate'
end
