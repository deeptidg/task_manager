class TasksController < ApplicationController

  before_action :all_tasks, only: [:index, :create, :update, :destroy]

  before_action :set_tasks, only: [:edit, :update, :destroy]
  before_action :require_login 
  respond_to :html, :js

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    @task.save
  end

  def update
    @task.update_attributes(task_params)
  end

  def destroy
    @task.destroy
  end

  private
    def task_params
      params.require(:task).permit(:description, :deadline)
    end

    def all_tasks
      @tasks = current_user.tasks
    end

    def set_tasks
      @task = current_user.tasks.find(params[:id])
    end
end
