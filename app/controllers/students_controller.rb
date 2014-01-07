class StudentsController < ApplicationController

  def index

  end
  def show
    @students = Student.find(params[:id])
    respond_to do |format|
      format.html {render nothing: true}
      format.json { render json: @students}
    end
  end

end
