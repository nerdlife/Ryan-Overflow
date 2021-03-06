class UsersController < ApplicationController
    before_action :current_user,
    except: [
        :new, :create
    ]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            flash[:success] = "Thanks for Joining Ryan Overflow #{@user.username.capitalize}"
            redirect_to root_path
        else
            flash[:error] = @user.errors.empty? ? "Error" : @user.errors.full_messages.to_sentence
            flash[:notice] = "Please complete registration for Ryan Overflow"
            redirect_to '/users/new'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit 
        @user  = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:success] = "Profile updated successfully"
            redirect_to @user
        else
            flash[:error] = @user.errors.empty? ? "Error" : @user.errors.full_messages.to_sentence
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:id])
        reset_session
        @user.destroy
        flash[:success] = "Profile deleted successfully"
        redirect_to '/signup'
    end


    private

    def user_params
        params.require(:user).permit(:name, :email, :username, :password, :password_confirmation, :bio, :profile_pic)
    end


end
