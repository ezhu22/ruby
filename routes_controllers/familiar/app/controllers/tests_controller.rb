class TestsController < ApplicationController
    def index
    end

    def saying
    end

    def joe
    end

    def michael
        redirect_to "/say/hello/joe"
    end

    def say
    end

    def times
        
        session[:times] += 1
    end

    def restart
        session[:times] = 0
        flash[:alert] = "You've been reset!"
        redirect_to "/times"
    end
end
