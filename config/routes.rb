Rails.application.routes.draw do
 get '/' => 'hamburguesas#index'
 get '/hamburguesa' => 'hamburguesas#index'
 post '/hamburguesa' => 'hamburguesas#create'
 get '/hamburguesa/:id' => 'hamburguesas#show'
 patch '/hamburguesa/:id' => 'hamburguesas#update'
 delete '/hamburguesa/:id' => 'hamburguesas#destroy'

 put '/hamburguesa/:id_h/ingrediente/:id_i' => 'ingrediente_en_hamburguesa#create'
 delete '/hamburguesa/:id_h/ingrediente/:id_i' => 'ingrediente_en_hamburguesa#destroy'

 get '/ingrediente' => 'ingredientes#index'
 post '/ingrediente' => 'ingredientes#create'
 get '/ingrediente/:id' => 'ingredientes#show'
 delete '/ingrediente/:id' => 'ingredientes#destroy'
end
