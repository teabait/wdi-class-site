class AppController < ApplicationController

  def index
    @names = Student.all
  end

end
