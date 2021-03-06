class ClassTeachersController < ApplicationController
  before_action :authenticate_user!


  def index
    @search = ClassTeacher.search(params[:query])
    @classteachers = @search.result
  end

  def new
    @classteacher = ClassTeacher.new
  end

  def create
    @classteacher = ClassTeacher.new(classteacher_params)
    if @classteacher.save
      redirect_to class_teachers_path
    else
      render :new
    end
  end

  def show
    @classteacher = ClassTeacher.find(params[:id])
  end

  def edit
    @classteacher = ClassTeacher.find(params[:id])
  end

  def update
    @classteacher = ClassTeacher.find(params[:id])
    @classteacher.update(classteacher_params)
    redirect_to class_teachers_path
  end
   

  def destroy
    @classteacher = ClassTeacher.find(params[:id])
    @classteacher.destroy
    respond_to do |format| 
      format.js
      format.html { redirect_to class_teachers_path }
    end
  end

  private
  def classteacher_params
    params.require(:class_teacher).permit(:teacher_name, :classroom_name, :teacher_id, :classroom_id, :lecture_number)
  end


end
