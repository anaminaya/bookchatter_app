class ChatroomsController < ApplicationController
  def index
  end


  def show
  end

  def new
    @chatrooms = Chatroom.limit(10)
  end

  def create
    @chatroom = Chatroom.create(
                topic: params[:topic],
                createdby_id: current_user.id)

    redirect_to "/chatrooms/#{@chatroom.id}"
  end
end
