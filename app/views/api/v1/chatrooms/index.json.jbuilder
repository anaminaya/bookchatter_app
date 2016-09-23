json.array! @chatrooms.each do |chatroom|
  json.id chatroom.id
  json.topic chatroom.topic
  json.by chatroom.createdby.email
  json.favorite current_user.favoritechatrooms.include?(chatroom)
  json.messages chatroom.messages.each do |message|
    json.id message.id
    json.content message.content
    json.email message.user.email
  end
end
