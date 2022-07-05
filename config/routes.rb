Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  resources :users
  resources :marketings
  resources :tests
  end
end
