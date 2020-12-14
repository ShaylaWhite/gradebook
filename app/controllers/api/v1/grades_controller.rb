class Api::V1::GradesController < ApplicationController

  def index
    grades = Grade.all
    #render json: grades
    render json: grades
end
 
def create

  grade = Grade.new(grades_params)
  if Grade.save

    render json: grade, status: :accepted
  else
    render json: {errors: grade.errors.full_messages}, status: :unprocessible_entity
  end
end

p
private

def grade_params
  params.require(:grade).permit(:name_of_class, :student_grade, :student_id)

end