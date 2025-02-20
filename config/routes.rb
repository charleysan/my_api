Rails.application.routes.draw do
  
  get '/products' => 'products#index'
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create'
  put '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/students' => 'students#index'
  
  get '/dog' => 'dog#index'

  get '/flowers' => 'flowers#index'
  get '/flowers/:id' => 'flowers#show'
  post '/flowers' => 'flowers#create'
  put '/flowers/:id' => 'flowers#update'
  delete '/flowers/:id' => 'flowers#delete'

  get '/flower_order' => 'flower_order#index'
  get '/flower_order/:id' => 'flower_order#show'
  post '/flower_order' => 'flower_order#create'
  put '/flower_order/:id' => 'flower_order#update'
  delete '/flower_order/:id' => 'flower_order#destroy'
end


