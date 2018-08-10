Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  root 'home#index'
  namespace :client do
    # Classrooms
    # -------------------------------------------
    # get '/classrooms/' => 'classrooms#index'
    # get '/classrooms/new' => 'classrooms#new'
    # get '/classrooms/:id' => 'classrooms#show'
    # post '/classrooms/' => 'classrooms#create'
    # get '/classrooms/:id/edit' => 'classrooms#edit'
    # patch '/classrooms/:id' => 'classrooms#update'
    # # get '/classrooms/:id/delete' => 'classrooms#delete'
    # delete '/classrooms/:id' => 'classrooms#destroy'

    # Courses
    # -------------------------------------------
    get '/courses/' => 'courses#index'
    get '/courses/new' => 'courses#new'
    get '/courses/:id' => 'courses#show'
    post '/courses/' => 'courses#create'
    get '/courses/:id/edit' => 'courses#edit'
    patch '/courses/:id' => 'courses#update'
    # get '/courses/:id/delete' => 'courses#delete'
    delete '/courses/:id' => 'courses#destroy'

    # Labs
    # -------------------------------------------
    get '/labs/' => 'labs#index'
    get '/labs/new' => 'labs#new'
    get '/labs/:id' => 'labs#show'
    post '/labs/' => 'labs#create'
    get '/labs/:id/edit' => 'labs#edit'
    patch '/labs/:id' => 'labs#update'
    # get '/labs/:id/delete' => 'labs#delete'
    delete '/labs/:id' => 'labs#destroy'

    # Notebook
    # -------------------------------------------
    get '/notebook_sections/' => 'notebook_sections#index'
    get '/notebook_sections/new' => 'notebook_sections#new'
    get '/notebook_sections/:id' => 'notebook_sections#show'
    post '/notebook_sections/' => 'notebook_sections#create'
    get '/notebook_sections/:id/edit' => 'notebook_sections#edit'
    patch '/notebook_sections/:id' => 'notebook_sections#update'
    # get '/notebook_sections/:id/delete' => 'notebook_sections#delete'
    delete '/notebook_sections/:id' => 'notebook_sections#destroy'

    # Student Login
    # -------------------------------------------
    get '/students/signup' => 'students#new'
    post '/students' => 'students#create'

    # Teacher Login
    # -------------------------------------------
    get '/teachers/signup' => 'teachers#new'
    post '/teachers' => 'teachers#create'

    # Student Sessions
    # -------------------------------------------
    get '/student_login' => 'student_sessions#new'
    post '/student_login' => 'student_sessions#create'
    delete '/student_logout' => 'student_sessions#destroy'

    # Teacher Sessions
    # -------------------------------------------
    get '/teacher_login' => 'teacher_sessions#new'
    post '/teacher_login' => 'teacher_sessions#create'
    delete '/teacher_logout' => 'teacher_sessions#destroy'
  end
end
