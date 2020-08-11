class UsersController < ApplicationController
    
    def new 
        @user = User.new
    end

    def index
        @users = User.all
    end

    def destroy
        user = User.find(params[:id])
        user.delete
    end

    def create
        User.create(user_params)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
    end

    def show
        @user = User.find(params[:id])
    end

    private
    #データベースに登録するデータを制限
    def user_params
        params.require(:user).permit(:name,:age)
    end
end