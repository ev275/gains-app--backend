class Api::AuthController < ApplicationController
    # login
    skip_before_action :logged_in?, only: [:create]

    def create
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: {name: user.name, username: user.username, token: encode_token({user_id: user.id})}
        else
            render json: {error: "invalid username or password"}
        end
    end
end
