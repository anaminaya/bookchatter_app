Rails.application.routes.draw do
  devise_for :users
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'

  get '/favorites' => 'favorites#index'
  post '/favorites/:book_id' => 'favorites#create'

end
