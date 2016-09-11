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

  def destroy
  @favorite = Favorite.find_by(id: params[:id])
    flash[:success] = "The #{book.title} was removed from your favorite list."
    redirect_to '/favorites'

  end

end
