class SessionsController < ApplicationController

    def login
        
    end
    
    def create
        session[:user] = params[:username]
        redirect_to chat_path
    end

    private
        def permit
            params.permit(:username)
        end

end
