class SessionsController < ApplicationController
	before_action :current_user, 
	except: [
		:login, :user_login, :logout
	]

	def user_login  	
		logged_in_user = (User.where(email: params[:email]).take).authenticate(params[:password])
		if logged_in_user
			session[:user_id] = logged_in_user.id
			flash[:notice] = "Welcome back #{logged_in_user.username} to Ryan Overflow"
			redirect_to root_path
		else
			flash[:notice] = "Wrong Email or Password, try again"
			redirect_to(action: 'login')
		end
	end

	def logout
		if  session[:user_id] != nil
			session[:user_id] = nil
			flash[:notice] = "Thanks for visiting Ryan Overflow"
			redirect_to(action: "login")
		else
			flash[:notice] = "You weren't logged into Ryan Overflow"
			redirect_to(action: "login")
		end
	end


end
