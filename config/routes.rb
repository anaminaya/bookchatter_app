Rails.application.routes.draw do

  devise_for :users

  get '/welcome' => 'pages#welcome'
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites/:book_id' => 'favorites#create'
  delete '/favorites/:book_id' => 'favorites#destroy'

  get '/lists' => 'lists#index'
  post '/lists/:book_id' => 'lists#create'
  delete '/lists/:id' => 'lists#destroy'

  
  resources :chatrooms, param: :slug
  resources :messages

  # Serve websocket cable requests in-process
    mount ActionCable.server => '/cable'


end
