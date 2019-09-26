class UsersController < ApplicationController
    def new
    end

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def create
        @user = User.create(name: params[:name])
        redirect_to '/users'
    end

    def total
        @user = User.all
        @sum = 0
        for x in 0..@user.length
            @sum += 1
        end
    end
end
