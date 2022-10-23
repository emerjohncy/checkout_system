Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cart#show"
  
  # Item Routes
  get "/catalog" => "items#index",
    as: "catalog"
  get "/catalog/new" => "items#new",
    as: "new_item"
  post "/catalog" => "items#create",
    as: "create_item"
  delete "/items/:id" => "items#destroy",
    as: "delete_item"
  
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
  
  # Free Items Routes
  get "/free_items" => "free_items#index",
    as: "free_items"
  get "/free_items/new" => "free_items#new",
    as: "new_free_item"
  post "/free_items" => "free_items#create",
    as: "create_free_item"
  delete "/free_items/:id" => "free_items#destroy",
    as: "delete_free_item"

  # Bulk Orders Routes
  get "/bulk_orders" => "bulk_orders#index",
    as: "bulk_orders"
  get "/bulk_orders/new" => "bulk_orders#new",
    as: "new_bulk_order"
  post "/bulk_orders" => "bulk_orders#create",
    as: "create_bulk_order"
  delete "/bulk_orders/:id" => "bulk_orders#destroy",
    as: "delete_bulk_order"
end