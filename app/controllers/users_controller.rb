class UsersController < ApplicationController
    before_action :set_user, only: :show

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show

    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end
    
end
