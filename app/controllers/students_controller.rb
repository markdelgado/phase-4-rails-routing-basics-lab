class StudentsController < ApplicationController
    def index
        students= Student.all
        render json: students
    end

    def show
        students = Student.all.order('grade DESC')
        render json: students
    end

    def highest_grade
        students = Student.all.order('grade DESC')
        highest_grade = students.first
        render json: highest_grade
    end

end
