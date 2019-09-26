class StudentsController < ApplicationController

    def index
        redirect_to '/'
    end

    def new
        @dojo = Dojo.find(params[:dojo_id])
        @all = Dojo.all.select('id','branch')
        @dojo_id = params[:dojo_id]
    end

    def create
        @new_student = Student.create( student_params )
        if @new_student.valid?
            redirect_to '/dojos/' + @new_student.dojo_id.to_s + '/show/'  
        else
            flash[:error] = "You did not enter in the information correctly."
            redirect_to '/dojos/' + @new_student.dojo_id.to_s + '/students/new'  
        end
    end
    
    def show
        @student = Student.find(params[:id])
        @join_date = @student.created_at
        @cohort_students = Student.where("dojo_id = ?", @student[:dojo_id])
        
    end

    def edit
        @student = Student.find(params[:id])
        @dojo = Dojo.find(params[:dojo_id])
        @all = Dojo.all.select('id','branch')
        @dojo_id = params[:dojo_id]
    end

    def update
        @student = Student.find(params[:id])
        @student.update ( student_params )
        redirect_to '/dojos/' + @student.dojo_id.to_s + '/students/' + @student.id.to_s

    end

    def destroy
        @student_delete = Student.find(params[:id]).destroy
        redirect_to '/dojos/' + @student_delete.dojo_id.to_s + '/show/' 
    end

    private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
