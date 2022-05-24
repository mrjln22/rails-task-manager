class TasksController < ApplicationController
  def index # = index = new webpage
    # list ALL the tasks
    @tasks = Task.all
  end

  def show # = show = new webpage
    # show 1 task
    @task = Task.find(params[:id])
  end

  def new # = new = new webpage
    @task = Task.new
  end

  def create
    @task = Task.New(task_params)
    @task.save
    # redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
