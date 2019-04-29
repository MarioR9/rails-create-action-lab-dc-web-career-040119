class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.find_or_create_by(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to @student
  end

end
