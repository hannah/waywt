Waywt::Application.routes.draw do

  root "users#index"
  resources :outfits

  devise_for :users
end
