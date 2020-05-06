Rails.application.routes.draw do
  get "/" => "home#index"
  get "/menu" => "menu#menupage"
  post "/menu" => "menu#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
