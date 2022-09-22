module LoginHelper
    extend ActiveSupport::Concern
    def is_logged_in?
        return session[:user] ? true : false
    end
end
