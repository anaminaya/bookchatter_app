Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }


  get '/' => 'pages#welcome'
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites/:book_id' => 'favorites#create'
  delete '/favorites/:book_id' => 'favorites#destroy'

  get '/lists' => 'lists#index'
  post '/lists/:book_id' => 'lists#create'
  delete '/lists/:id' => 'lists#destroy'

  namespace :api do
    namespace :v1 do
      get '/chatrooms' => 'chatrooms#index'
      get '/messages' => 'messages#index'
      get '/messages/new' => 'messages#new'
      post '/messages' => 'messages#create'
      post '/favorites' => 'favorites#create'
    end
  end


   get '/chatrooms' => 'chatrooms#index'
   get '/chatrooms/new' => 'chatrooms#new'
   post '/chatrooms' => 'chatrooms#create'
   get '/chatrooms/:id' => 'chatrooms#show'


  # Serve websocket cable requests in-process
    mount ActionCable.server => '/cable'


end
