class ChatroomController < ApplicationController

    def index
        user = User.second
        @messages = user.messages
    end

end
