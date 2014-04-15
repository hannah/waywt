Waywt::Application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :user, only: [:new]
end
