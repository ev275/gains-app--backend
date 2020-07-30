class ApplicationController < ActionController::API
    # skip_before_action :verify_authenticity_token
    before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, "Yale2020")
    end

    def logged_in?

        headers = request.headers["Authorization"]
        token = headers.split(" ")[1]
        # byebug
        begin
            user_id = JWT.decode(token, "Yale2020")[0]["user_id"]
            @user = User.find(user_id)
        rescue
            @user = nil
        end
        # byebug
        render json: {error: "Please LogIn"} unless @user
    end
end
