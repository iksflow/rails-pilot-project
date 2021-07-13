class CounselingsController < ApplicationController
  def new
    @school = School.find(params[:school_id])
    @counseling = Counseling.new
  end

  def create
    @school = School.find(params[:school_id])
    @school.counselings.create(counseling_params)
    redirect_to school_path(@school)
  end

  private
  def counseling_params
    params.require(:counseling).permit(:teacher_id, :student_id, :appointment_date)
  end
end
