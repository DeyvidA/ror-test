Rails.application.routes.draw do
  resources :products
  resources :brands
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Defines routes for the products controller
  get "/products", to: "products#index"
    
  get "/products/:id", to: "products#show"
  
  post "/products", to: "products#create"
    
  patch "/products/:id", to: "products#update"
  
  delete "/products/:id", to: "products#destroy"


  # Defines routes for the brands controller
  get "/brands", to: "brands#index"

  get "/brands/:id", to: "brands#show"

  post "/brands", to: "brands#create"

  patch "/brands/:id", to: "brands#update"

  delete "/brands/:id", to: "brands#destroy"

  # Defines routes for the categories controller
  get "/categories", to: "categories#index"

  get "/categories/:id", to: "categories#show"

  post "/categories", to: "categories#create"

  patch "/categories/:id", to: "categories#update"

  delete "/categories/:id", to: "categories#destroy"

end
