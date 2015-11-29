class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
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
