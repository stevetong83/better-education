BetterEducation::Application.routes.draw do

  root 'home#index'

  devise_for :users

  resources :colleges

  get "/results", to: "pages#results", as: :results

end
