class Api::UsersController < ApplicationController
    skip_before_action :logged_in?, only: [:create]
    
    def index
        users = User.all

        render json: users
    end

    def create
        # byebug
        user = User.new(user_params)
        # byebug

        if user.valid?
            user.save
            render json: {username: user.username, token: encode_token({user_id: user.id})} 
        else
            render json: {error: "Failed to create a user"}, status: :not_acceptable
        end    
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    private

    def user_params
        params.permit(:name, :username, :password, :sex, :age, :weight, :height)
    end
end
