Rails.application.routes.draw do
  get "/" => "home#index"
  get "/menu" => "menu#menupage"
  get "/editmenu" => "menu#edit"
  post "/menu" => "menu#create"
  get "/signup" => "user#index"
  post "/signup" => "user#create"
  resources :menu
  resources :user
  resources :sessions, only: [:new, :create, :destroy]
  get "/signin" => "session#new"
  get "/signout" => "session#destroy"
  post "/signin" => "session#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
