class Api::V1::FavoritesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if params[:favorite] == 1
      Favorite.create(user_id: current_user.id, chatroom_id: params[:chatroom_id])
      render json: {success: "Chatroom favorited!"}
    else
      favorite = Favorite.find_by(user_id: current_user.id, chatroom_id: params[:chatroom_id])
      favorite.destroy
      render json: {success: "Chatroom removed from favorites!"}
    end
  end
end
