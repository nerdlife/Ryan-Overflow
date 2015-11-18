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
      redirect_to '/users'
    else
      redirect_to '/users/new'
    end
  end


private

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation, :bio, :profile_pic)
  end

end
