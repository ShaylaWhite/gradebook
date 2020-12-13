class Api::V1::GradesController < ApplicationController

    def index
        @grades = Grade.all
        render json: Grade.Serializaer.new(@grades)
    end


    def create
        @grade = Grade.new(grade_params)
        if @grade.save
        render json: @grade, status: :accepted 
        else
        render json: { errors: @grade.errors.full_messages }, status: :unprocessible_entity
        end
  end
#render to the front-end for the user if it accepted or errors if not 

  private

  def grade_params
    params.require(grade).permit(:name_of_class, :student_grade, :student_id)
  end

end