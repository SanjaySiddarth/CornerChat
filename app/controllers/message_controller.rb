class MessageController < ApplicationController

    def create_message
        logger.warn "===========Message received=============="
        message_content = params[:message_input]
        Message.create!(user_id: User.find_by(username: session[:user]).id, body: message_content)
        redirect_to chat_path

        
    end

end
