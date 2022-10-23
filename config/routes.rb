Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
  
  # Item Routes
  get "/catalog" => "items#index",
    as: "catalog"
  get "/catalog/new" => "items#new",
    as: "new_item"
  post "/catalog" => "items#create",
    as: "create_item"
  
  # Cart Routes
  get "/cart" => "cart#show",
    as: "cart"
  get "/reset"=> "cart#destroy",
    as: "reset"

  # Checkout Items Routes
  post "/checkout_items" => "checkout_items#create",
    as: "create_checkout_item"
  delete "/checkout_items/:id" => "checkout_items#destroy",
    as: "delete_checkout_item"
  
    resources :free_items

    # Bulk Orders Routes
    get "/bulk_orders" => "bulk_orders#index",
      as: "bulk_orders"

end