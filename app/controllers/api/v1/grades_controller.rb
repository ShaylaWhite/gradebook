class Api::V1::GradesController < ApplicationController
  
  def index
    grades = Grade.all
   
    render json: GradeSerializer.new(grades)
  end


  def create
    grade = Grade.new(grade_params)
    if grade.save
        render json: GradeSerializer.new(grade), status: :accepted
    else
      render json: GradeSerializer.new(grade), status: :accepted
    end
end
  
  def destroy
    grade = Grade.find_by(id: params[:id])
    grade.destroy!
end

  private

  def grade_params
    params.require(:grade).permit(:name_of_class, :student_grade, :student_id)
  end



end