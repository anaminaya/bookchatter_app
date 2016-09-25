class RatingsController < ApplicationController
  def show
    @book = Book.find_by(id: params[:id])
  end

  def create
    @book = Book.find_by(id: params[:id])
    rating = Rating.find_by(user_id: current_user.id, book_id: params[:book_id])
    if rating
      rating.update(rate: params[:rate])
    else
      Rating.create(
        user_id: current_user.id,
        book_id: params[:book_id],
        rate: params[:rate]
      )
    end
  end
end
