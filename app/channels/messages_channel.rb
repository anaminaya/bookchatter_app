class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages-#{params[:chatroom_id]}"
  end
end
