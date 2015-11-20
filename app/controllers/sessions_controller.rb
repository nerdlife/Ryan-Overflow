class SessionsController < ApplicationController

	def create
		if params[:email].present? && params[:password].present?
			registered_email = User.where(:email => params[:email]).first
			if registered_email
				user = registered_email.authenticate(params[:password])
			end
		end
		if user
		      flash[:notice] = "Welcome back #{user.username} to Ryan Overflow"
		      redirect_to root_path
	    else
		    	flash[:notice] = "Wrong Email or Password, try again"
		    	redirect_to(:action => 'login')
	    end
	end

	
	def destroy
	    flash[:notice] = "You have been logged out"
	    redirect_to(:action => "login")
	end

end
