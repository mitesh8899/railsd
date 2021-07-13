class ClassroomsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @search = Classroom.search(params[:query])
    @classrooms = @search.result
    @classrooms = Classroom.order("name").page(params[:page])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to classrooms_path
    else
      render :new
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def update
    @classroom = Classroom.find(params[:id])
    @classroom.update(classroom_params)
    redirect_to classroom_path
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    respond_to do |format|
      format.js
      format.html {redirect_to classrooms_path}
    end
  end

  def show
    @classroom = Classroom.find(params[:id])
    @teachers = @classroom.class_teachers
  end


  private
  def classroom_params
    params.require(:classroom).permit(:name)
  end
end
