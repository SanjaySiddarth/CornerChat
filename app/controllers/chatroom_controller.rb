class ChatroomController < ApplicationController
    include LoginHelper
    
    def index
        
        if is_logged_in?
            @messages = Message.last(4)
        else
            redirect_to root_path
        end

    end

end
