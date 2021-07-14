class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        format.js
        format.html{ redirect_to students_path }
      else
        format.js
        format.html {render :new}
      end
    end
  end
   
  def edit
    @student = Student.find(params[:id])
    respond_to  do |format|
      format.html {redirect_to student_path}
      format.js{}
    end
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    respond_to do |format|
      format.js 
      format.html { redirect_to @student, notice: "Comment Successfully updated!" }
    end  
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to student_path}
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :roll_no)
  end


end
