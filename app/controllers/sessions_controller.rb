class SessionsController < ApplicationController


    def login
        
    end
    
    def create
        # Make sure there is an alias present
        if !params[:username].empty?
            session[:user] = params[:username]
            redirect_to chat_path
        else
            redirect_to root_path, notice: "You must select an alias"
            # flash.now[:notice] = "You must select an alias"
        end
    end

    def logout
        session[:user] = nil
        redirect_to root_path
    end


    private
        def permit
            params.permit(:username)
        end

end
