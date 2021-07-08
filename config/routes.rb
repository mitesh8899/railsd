Rails.application.routes.draw do

#Classroom Routes
  root to: 'classrooms#index'
  # resources: classrooms
  get 'classrooms', to: 'classrooms#index'
  get 'classrooms/new', to: 'classrooms#new',as: :new_classroom
  post 'classrooms', to: 'classrooms#create',as: :create_classroom 
  get 'classrooms/edit/:id', to: 'classrooms#edit',as: :edit_classroom
  patch 'classrooms/:id', to: 'classrooms#update',as: :update_classroom 
  delete 'classrooms/:id', to: 'classrooms#destroy',as: :delete_classroom
  
  # get 'classrooms/lecture', to: 'classrooms#lecture',as: :classroom
  get 'classrooms/:id', to: 'classrooms#show',as: :classroom 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :animals, only: [:new, :create]
  
  #Teacher Routes

  get 'teachers', to: 'teachers#index'
  get 'teachers/new', to: 'teachers#new',as: :new_teacher
  post 'teachers', to: 'teachers#create',as: :create_teacher 
  get 'teachers/:id/edit', to: 'teachers#edit',as: :edit_teacher
  patch 'teachers/:id', to: 'teachers#update',as: :update_teacher 
  delete 'teachers/:id', to: 'teachers#destroy',as: :delete_teacher
  # get 'teachers/tech/:id', to: 'teachers#tech',as: :teacher 
  get 'teachers/:id', to: 'teachers#show',as: :teacher 

  #classteachers Routes

  get 'classteachers', to: 'classteachers#index'
  # get 'classteachers', to: 'classtechers#show',as: :classteacher


end
