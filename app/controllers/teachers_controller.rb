class TeachersController < ApplicationController
  def new
    @school = School.find(params[:school_id])
    @teacher = Teacher.new
  end

  def create
    @school = School.find_by_id(params[:school_id])
    @teacher = @school.teachers.create(teacher_params)
    redirect_to schools_path
  end

  def edit
    @school = School.find_by_id(params[:school_id])
    @teacher = @school.teachers.find(params[:id])
  end

  def update
    @school = School.find_by_id(params[:school_id])
    @teacher = @school.teachers.find(params[:id])
    if @teacher.update(teacher_params)
      redirect_to school_path(@school)
    else
      render edit_school_teacher_path(@teacher)
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :subject)
  end
end
