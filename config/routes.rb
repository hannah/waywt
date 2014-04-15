Waywt::Application.routes.draw do
  devise_for :users
  root "users#index"
  resources :user, only: [:new]
end
