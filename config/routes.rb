Rails.application.routes.draw do
  devise_for :users
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites/:book_id' => 'favorites#create'

  get '/lists' => 'lists#index'
  post '/lists/:book_id' => 'lists#create'

  get '/chatrooms' => 'chat_rooms#index'
  post '/chatrooms/:message_id' => 'chat_rooms#create'
end
