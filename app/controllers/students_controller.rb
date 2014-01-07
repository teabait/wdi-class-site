class StudentsController < ApplicationController

  def index
    @students = Student.all
    @student = Student.find_by(name: params[:name])
    |format|
    format.html
    format.json{ render json: @student }
  end

end
