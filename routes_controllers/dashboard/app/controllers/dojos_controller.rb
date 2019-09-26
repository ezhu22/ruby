class DojosController < ApplicationController
    def index
        @dojos = Dojo.all.select('id','branch','street','city','state')
        @num_of_dojo = Dojo.count
    end

    def new
    end

    def create
        @new_dojo = Dojo.create( dojo_params )
        if @new_dojo.valid?
            flash[:success] = "Entered New Dojo Successfully."
            redirect_to '/dojos/index'
        else
            flash[:error] = "You did not enter in the information correctly."
            redirect_to '/dojos/new'
        end
    end
    
    def show
        if params[:id] == 'index'
            redirect_to '/'
        else
            @dojo = Dojo.find(params[:id])
            @student = Dojo.find(params[:id]).students
        end
    end

    def edit
        @dojo = Dojo.find(params[:id])
    end

    def update
        @dojo = Dojo.find(params[:id])
        @dojo.update( dojo_params )
        redirect_to '/dojos/'+ params[:id].to_s + '/show' 
    end

    def destroy
        @dojo = Dojo.find(params[:id]).destroy
        redirect_to '/'
    end

    private
    def dojo_params
        params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
