class ChatRoomsController < ApplicationController

  def index
    @chatrooms = ChatRoom.all
    @chatrooms = Chatroom.new

  end

  def new
     @chatroom = ChatRoom.new
  end

  def edit
    @chatroom = Chatroom.find_by(id: params[:id])
  end

  def create
    @chatroom = Chatroom.create(
    topic:params[:topic],
    message_id:params[:message_id],
    user_id:current_user.id
    )
    redirect_to '/chatrooms'


  end


  def show
    @chatroom = Chatroom.find_by(id: params[:id])

  end

  def update
    chatroom = Chatroom.find_by(id: params[:id])
    chatroom.update
    redirect_to '/chatrooms'
  end

end
