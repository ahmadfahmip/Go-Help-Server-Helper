Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/get_helper_types' => 'helper_types#index', defaults: {format: :json}
  post '/get_helper_type' => 'helper_types#show', defaults: {format: :json}
  post '/create_helper_type' => 'helper_types#create', defaults: {format: :json}
  put '/update_helper_type' => 'helper_types#update', defaults: {format: :json}
  delete '/delete_helper_type' => 'helper_types#destroy', defaults: {format: :json}

  get '/get_helpers' => 'helpers#index', defaults: {format: :json}
  post '/get_helper' => 'helpers#show', defaults: {format: :json}
  post '/create_helper' => 'helpers#create', defaults: {format: :json}
  post '/update_helper_location' => 'helpers#update_location', defaults: {format: :json}
  put '/update_helper' => 'helpers#update', defaults: {format: :json}
  delete '/delete_helper' => 'helpers#destroy', defaults: {format: :json}

end
