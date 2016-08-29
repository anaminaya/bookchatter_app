class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def show
    redirect_to "/books/#{@book.id}"
  end

  def create
    @favorite = Favorite.create(
    user_id: current_user.id,
    book_id: params[:book_id]
    )
      flash[:success]= "Book has been added to your favorite list."
      redirect_to "/books"
    
  end
end
