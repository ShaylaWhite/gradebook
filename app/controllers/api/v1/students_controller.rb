class Api::V1::StudentsController < ApplicationController
    def index
        grades = Grade.all
        #render json: grades
        render json: GradeSerializer.new(grades)
    end
     
end
