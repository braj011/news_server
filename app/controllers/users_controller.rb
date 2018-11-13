class UsersController < ApplicationController

    def index
        render json:User.all
    end

    def show
        user = User.find(params[:id])
        render json:[user, user.categories]
    end

    def login
        # user = User.find_by(username: params[:username])
        # if user && user.authenticate(params[:password])
        #     render json: {username: user.username, token: issue_token({id: user.id})}
        # else
        #     render json: {error: 'Invalid username/password combination.'}, status: 400
        # end
    end

end
