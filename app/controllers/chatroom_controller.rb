class ChatroomController < ApplicationController

    def chatroom
        user = User.second
        @messages = user.messages
    end

end
