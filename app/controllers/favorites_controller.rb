class FavoritesController < ApplicationController
  def index
    @favorites = current_user.books
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
      redirect_to "/favorites"

  end

  def destroy
  @favorite = Favorite.find_by(book_id: params[:book_id])
  @favorite.destroy
    flash[:success] = "The book was removed from your favorite list."
    redirect_to '/favorites'

  end

end
