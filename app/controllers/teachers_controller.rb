class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teachers_path
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to teachers_path
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end

  def show
    @teacher = Teacher.find(params[:id])
    @classrooms = @teacher.class_teachers
  end


  private
  def teacher_params
    params.require(:teacher).permit(:name)
  end

end
