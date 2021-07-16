Rails.application.routes.draw do
  devise_for :users
root to: 'records#index'
resources :records
redources :news only: [:index]
end
