class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    private

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id]) 
        else 
            flash[:notice] = "Log In to Ryan Overflow"
            redirect_to(controller: 'sessions', action: 'login')
            return false
        end
    end

end
