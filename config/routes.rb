Waywt::Application.routes.draw do

  root "outfits#index"
  resources :outfits

  get '/search', controller: :outfits, action: :search

  devise_for :users
end
