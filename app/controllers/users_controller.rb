class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@questions = @user.questions
  	@answers = @user.answers
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	if @user.save
  		flash[:success] = "user created"
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end



private
  def user_params
    params.require(:user).permit(:email, :name, :username, :password, :bio)
  end

end
