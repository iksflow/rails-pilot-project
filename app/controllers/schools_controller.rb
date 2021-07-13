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
    @school = School.find_by_id(params[:id])
    @teachers = School.find_by_id(params[:id]).teachers
    @students = School.find(params[:id]).students
  end
  def edit
    @school = School.find_by_id(params[:id])
  end
  def update
    @school = School.find_by_id(params[:id])
    if @school.update(school_params)
      redirect_to "/schools"
    else
      render "edit"
    end

  end

  def destroy
    @school = School.find_by_id(params[:id])
    @school.destroy
    redirect_to "/schools"
    # redirect_to schools_path
  end


  private
  def school_params
    params.require(:school).permit(:name)
  end
end
