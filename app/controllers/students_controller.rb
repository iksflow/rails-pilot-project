class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @school = School.find(params[:school_id])
    @school.students.create(student_params)
    redirect_to school_path(@school)
  end

  def edit
    @school = School.find(params[:school_id])
    @student = @school.students.find(params[:id])
  end

  def update
    @school = School.find(params[:school_id])
    @student = @school.students.find(params[:id])
    if @student.update(student_params)
      redirect_to school_path(@school)
    else
      render schools_path
    end
  end

  def destroy
    @school = School.find(params[:school_id])
    @student = @school.students.find(params[:id])
    @student.destroy

    redirect_to school_path(@school)
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end
end
