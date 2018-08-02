Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :client do
    # Classrooms
    # -------------------------------------------
    get '/classrooms/' => 'classrooms#index'
    get '/classrooms/new' => 'classrooms#new'
    get '/classrooms/:id' => 'classrooms#show'
    post '/classrooms/' => 'classrooms#create'
    get '/classrooms/:id/edit' => 'classrooms#edit'
    patch '/classrooms/:id' => 'classrooms#update'
    delete '/classrooms/:id' => 'classrooms#destroy'
    # Courses
    # Labs
    # Notebook
    # Student Login
    # Teacher Login
    #
  end
end
