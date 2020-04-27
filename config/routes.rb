Rails.application.routes.draw do
 get '/' => 'hamburguesas#index'
 get '/hamburguesa' => 'hamburguesas#index'
 post '/hamburguesa' => 'hamburguesas#create'
 get '/hamburguesa/:id' => 'hamburguesas#show'
 patch '/hamburguesa/:id' => 'hamburguesas#update'
 delete '/hamburguesa/:id' => 'hamburguesas#destroy'

 put '/hamburguesa/:id/ingrediente/:id' => 'hamburguesas#update_ingrediente'
 delete '/hamburguesa/:id/ingrediente/:id' => 'hamburguesas#destroy_ingrediente'

 get '/ingrediente' => 'ingredientes#index'
 post '/ingrediente' => 'ingredientes#create'
 get '/ingrediente/:id' => 'ingredientes#show'
 delete '/ingrediente/:id' => 'ingredientes#destroy'
end
