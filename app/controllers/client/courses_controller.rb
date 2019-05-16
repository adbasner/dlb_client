class Client::CoursesController < ApplicationController
  def index
    response = Unirest.get('http://localhost:3000/api/courses')
    puts "---------------"
    @courses = response.body['courses_attending']
    # change variable names
    @not_enrolled = response.body['courses_not_attending']
    render 'index.html.erb'
  end

  def show
    course_id = params[:id]
    response = Unirest.get("http://localhost:3000/api/courses/#{course_id}")
    @course = response.body
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    course_params = {
      name: params[:input_name],
      description: params[:input_description]
    }

    response = Unirest.post('http://localhost:3000/api/courses',
      parameters: course_params
      )

    @course = response.body

    if response.code == 200
      flash[:success] = "You added a course"
      redirect_to "/client/courses/#{@course['id']}"
    else
      @errors = response.body['errors']
      render 'new.html.erb'
    end
  end

  def edit
    course_id = params[:id]
    response = Unirest.get("http://localhost:3000/api/courses/#{course_id}")
    @course = response.body
    render 'edit.html.erb'
  end

  def update
    update_params = {
      name: params[:input_name],
      description: params[:input_description]
    }

    response = Unirest.patch("http://localhost:3000/api/courses/#{params[:id]}",
      parameters: update_params)

    @course = response.body
    flash[:success] = "you updated the course"

    redirect_to "/client/courses/#{@course['id']}"
  end

  # def delete
  # end

  def destroy
    response = Unirest.delete("localhost:3000/api/courses/#{params[:id]}")
    flash[:warning] = "You deleted a course"
    redirect_to "/client/courses"
  end

end
