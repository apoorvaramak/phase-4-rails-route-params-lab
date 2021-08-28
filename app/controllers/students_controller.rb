class StudentsController < ApplicationController

  def index
    # if params[:name]
    #   students = Student.where(first_name: params[:name])
    # elsif !students
    #   students = Student.where(last_name: params[:name])
    # else
    #   students = Student.all
    # end
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
