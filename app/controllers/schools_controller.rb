class SchoolsController < ApplicationController
  def new
    @school = School.new
  end
  def create
    @school = School.new(school_params)
    @school.save
    redirect_to schools_path
  end
  def index
    @schools = School.all
  end
  def show
    # find(id) = find_by_id(id)
    # @school = School.find_by_id(params[:id])
    @school = School.find(params[:id])

    # @teachers = @school.teachers
    # @students = @school.students
  end
  def edit
    @school = School.find(params[:id])
  end
  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to "/schools"
    else
      render "edit"
    end

  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to "/schools"
    # redirect_to schools_path
  end


  private
  def school_params
    params.require(:school).permit(:name)
  end
end
