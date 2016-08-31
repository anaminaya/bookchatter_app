class ChatRoomsController < ApplicationController

  def index
    @chatrooms = ChatRoom.all
  end


  def create
    @chatrooms = ChatRoom.create(
    user_id: current_user.id,
    message_id: params[:message_id]
    )

end
