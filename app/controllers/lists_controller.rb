class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    redirect_to "/books/#{@book.id}"
  end

  def create
    @list = List.create(
    user_id: current_user.id,
    book_id: params[:book_id]
    )
      flash[:success]= "Favorite Book has been added to your reading list."
      redirect_to "/books"

  end
end
