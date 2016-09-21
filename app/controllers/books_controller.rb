class BooksController < ApplicationController
  def index
    @books = Book.all
    if params[:search]
      @books = Book.search(params[:search].downcase).order("created_at DESC")
    else
      @books = Book.all.order('created_at DESC')
    end
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  # def show
  #   @books = Book.where(genre:["romance","fiction","historical fiction", "non-fiction", "fantasy", "mystery"]).limit(10)
  # end
end
