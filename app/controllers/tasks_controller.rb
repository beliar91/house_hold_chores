class TasksController < ApplicationController
  before_action :find_task, only: [:edit, :update, :delete, :show, :destroy]

  def create
    @task = Task.create(task_params)
    respond_to do |format|
      format.html {redirect_to tasks_path}
      format.js
    end
  end

  def index
    @completed_tasks = Task.completed
    @incomplete_tasks = Task.pending
  end

  def show
  end

  def new
    @task = Task.new
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :completion_time, :status, :avg_completion_time)
  end
end
