class Api::V1::JsChatroomsController < ApplicationController
  def index
    @js_chatrooms = Chatrooms.all
    @favorites = current_user.favoritechatrooms
  end

  def show
    @chatroom = Chatroom.find_by(id: params[:id])
  end
end
