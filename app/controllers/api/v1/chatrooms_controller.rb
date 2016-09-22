class Api::V1::ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end
end
