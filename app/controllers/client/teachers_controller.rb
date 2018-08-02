class Client::TeachersController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    client_params = {
                      first_name: params[:first_name],
                      last_name: params[:last_name],
                      email: params[:email],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation]
                    }

    response = Unirest.post(
                            "http://localhost:3000/api/teachers",
                            parameters: client_params
                            )

    if response.code == 200
      session[:teacher_id] = response.body["id"]
      flash[:success] = 'Successfully created teacher account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/client/students/signup'
    end
  end
end
