class BooksController < ApplicationController
  def index
    @books = Book.all

  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def show
    @books = Book.where(genre:["romance","fiction","historical fiction", "non-fiction", "fantasy", "mystery"]).limit(10)
  end
end
