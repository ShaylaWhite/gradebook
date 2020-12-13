class Api::V1::GradesController < ApplicationController

    def index
        @grades = Grade.all
        render json: @grades
    end


    def create
        @grades = Grade.new(grade_params)
        if @grades.save
        render json: @grades, status: :accepted 
        else
        render json: { errors: @grades.errors.full_messages }, status: :unprocessible_entity
        end
  end
#render to the front-end for the user if it accepted or errors if not 

  private

  def grade_params
    params.require(grade).permit(:name_of_class, :student_grade, :student_id)
  end

end