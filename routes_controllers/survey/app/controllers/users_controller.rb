    class UsersController < ApplicationController
    def index
        render "/new"
    end

    def new
    end
    
    def create
        @user = User.create( user_params )
        session[:id] = @user.id
        redirect_to "/result"
    end

    def result
        @user = User.find(session[:id])
        render "/users/index"
    end

    def logout
        session.clear
        redirect_to '/'
    end

    private
        def user_params
        params.require(:user).permit(:name, :dojo_loc, :fav_lang, :comment)
        end

    end
