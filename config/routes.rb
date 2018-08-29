Rails.application.routes.draw do
  namespace :api do
  end
    get "/all_products_url" => "products#all_products_action"
end
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
