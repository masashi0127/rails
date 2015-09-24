class WebsocketChatController < WebsocketRails::BaseController

  # def message_receive
  #   receive_message = message()
  #   broadcast_message(:websocket_chat, receive_message)
  # end

  def message_receive
    id = message[:id]
    WebSocketRails["#{id}"].trigger(:websocket_chat, message())
  end

end
