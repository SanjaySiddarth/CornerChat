class MessageController < ApplicationController

    def create_message
        # Validations - Message content must not be null/empty
        # message_content = params[:message_input]
        if !params[:message_input].empty?
            current_user = session[:user]
            message = User.find_by(username: current_user).messages.build(body: params[:message_input])
            if message.save
            # Message.create!(user_id: User.find_by(username: session[:user]).id, body: message_content)
                ActionCable.server.broadcast "chatroom_channel",
                                            message_details: message_render(message)
            end
        end

        # redirect_to chat_path

        
    end


    private
    def message_render(message)
        render(partial: 'messages/message', locals: {message: message})
    end
end
