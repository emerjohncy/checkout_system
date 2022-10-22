Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get "/catalog" => "items#index",
    as: "catalog"
  get "/catalog/new" => "items#new",
    as: "new_item"
  post "/catalog" => "items#create",
    as: "create_item"
  
end
