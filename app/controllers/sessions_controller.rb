class SessionsController < ApplicationController

    def login
        @messages = Message.first(4)
    end
    
end
