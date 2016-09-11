Rails.application.routes.draw do
  devise_for :users
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites/:book_id' => 'favorites#create'
  delete '/favorites/:id' => 'favorites#destroy'

  get '/lists' => 'lists#index'
  post '/lists/:book_id' => 'lists#create'
  delete '/lists/:id' => 'lists#destroy'

  get '/chatrooms'=> 'chatrooms#index'
  post '/chatrooms'=> 'chatrooms#create'
  get '/chatrooms/new'=> 'chatrooms#new'
  get '/chatrooms/:id/edit'=> 'chatrooms#edit'
  get '/chatrooms/:id'=> 'chatrooms#show'
  patch '/chatrooms/:id'=> 'chatrooms#update'
  delete '/chatrooms/:id'=> 'chatrooms#destroy'

  get '/messages'=> 'messages#index'
  get '/messages/:id' => 'messages#show'
  post '/messages' =>'messages#create'
  get '/messages/new'=> 'messages#new'
  get '/messages/:id/edit'=> 'messages#edit'
  patch '/messages/:id'=> 'messages#update'
  delete '/messages/:id'=> 'messages#destroy'



end
