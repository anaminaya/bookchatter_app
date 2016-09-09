class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def new
     @chat_room = ChatRoom.new
   end

  def create
     @chat_room = current_user.chat_rooms

     if @chat_room.save
       flash[:success] = 'Chat room added!'
       redirect_to '/chatrooms'
     else
       render 'new'
     end
   end

   private



  def show
    @chat_room = ChatRoom.find_by(id: params[:id])
  end
end
