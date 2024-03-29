class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:name, :description)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
