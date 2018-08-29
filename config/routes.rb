Rails.application.routes.draw do
  namespace api: do
    get "/all_url" => 'api/products#all_action'
  end
end
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
