class ChatroomController < ApplicationController

    def index
        user = User.find_by(username: session[:user])
        @messages = user.messages
    end

end
