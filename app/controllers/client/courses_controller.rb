class Client::CoursesController < ApplicationController
  def index
    response = Unirest.get('http://localhost:3000/api/courses')
    @courses = response.body
    render 'index.html.erb'
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  # def delete
  # end

  def destroy
  end

end
