BetterEducation::Application.routes.draw do

  root 'home#index'

  devise_for :users

  resources :colleges

end
