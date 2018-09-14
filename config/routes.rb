Rails.application.routes.draw do
  namespace :api do
  post "/users" => "users#create"

  get '/products' => 'products#index'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  post "/sessions" => "sessions#create"
  
  post '/orders' => 'orders#create'
  get '/orders' => 'orders#index'

  end

end
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
