class SessionsController < ApplicationController

    def login
        user = User.second
        @messages = user.messages
    end
    
end
