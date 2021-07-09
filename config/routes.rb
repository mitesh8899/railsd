Rails.application.routes.draw do
 
  devise_for :users

  
  #Classroom Routes
  root to: 'classrooms#index'
  
  # resources: classrooms
  get 'classrooms', to: 'classrooms#index'
  get 'classrooms/new', to: 'classrooms#new',as: :new_classroom
  post 'classrooms', to: 'classrooms#create',as: :create_classroom 
  get 'classrooms/edit/:id', to: 'classrooms#edit',as: :edit_classroom
  patch 'classrooms/:id', to: 'classrooms#update',as: :update_classroom 
  delete 'classrooms/:id', to: 'classrooms#destroy',as: :delete_classroom  
  get 'classrooms/:id', to: 'classrooms#show',as: :classroom 

  #Class_teachers Routes
  resources :class_teachers
    
   

  #Teacher Routes

  get 'teachers', to: 'teachers#index'
  get 'teachers/new', to: 'teachers#new',as: :new_teacher
  post 'teachers', to: 'teachers#create',as: :create_teacher 
  get 'teachers/:id/edit', to: 'teachers#edit',as: :edit_teacher
  patch 'teachers/:id', to: 'teachers#update',as: :update_teacher 
  delete 'teachers/:id', to: 'teachers#destroy',as: :delete_teacher
  get 'teachers/:id', to: 'teachers#show',as: :teacher 


end
