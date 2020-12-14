class Api::V1::StudentsController < ApplicationController
    def index
        students = Student.all
        #render json: grades
        render json: students
    end
     
end
