class Api::V1::GradesController < ApplicationController


  
  def create
    grade = Grade.new(grade_params)
    grade.save
    render json: GradeSerializer.new(grade), status: :accepted
  end

  def destroy 
    grade = Grade.find_by(id:params[:id])
    grade.destroy
    render json: grade
  end 


  private

  def grade_params
    params.require(:grade).permit(:name_of_class, :student_grade, :student_id)
  end

  def find_grade
    @grade = Grade.find(params[:id])
  end 

end