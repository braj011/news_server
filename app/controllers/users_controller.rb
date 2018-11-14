class UsersController < ApplicationController

    def index
        render json:User.all
    end

    def show
        user = get_current_user
        if user 
            render json:[user, user.categories]
        else 
            render json: {error: 'You are not signed in.'}
        end 
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {username: user.username, id: user.id, token: issue_token({id: user.id})}
        else
            render json: {error: 'Invalid username/password combination.'}, status: 400
        end
    end

    def validate
        user = get_current_user
        if user
          render json: {username: user.username, id: user.id, token: issue_token({id: user.id})}
        else
          render json: {error: 'User not found.'}, status: 400
        end
      end

end
