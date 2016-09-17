class ChatroomsController < ApplicationController

  def index
     @chatrooms = Chatroom.all

  end

  def new
    render 'new'
  end


  def create
    @chatroom = Chatroom.new(
    topic:params[:topic]
    )
    @chatroom.save
    redirect_to "/chatrooms/#{@chatroom.id}"

  end


  def show
    @chatroom = Chatroom.find_by(id: params[:id])
    @message = Message.new
  end


end
