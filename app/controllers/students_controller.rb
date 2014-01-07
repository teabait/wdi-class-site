class StudentsController < ApplicationController

  def index
    @students = Student.all
    respond_to |format|
    format.html
    format.json{ render json: @student}
  end

end
