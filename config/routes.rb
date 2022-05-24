Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


 # display a taskform
 get "tasks/new", to: "tasks#new", as: :new_task # = prefix

#read all
get "/tasks", to: "tasks#index", as: :tasks

   # read 1
  get "/tasks/:id", to: "tasks#show", as: :task

  #submit the task form
  post "/tasks", to: "tasks#create"
end
