class Api::V1::ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find_by(id: params[:id])
  end
end
