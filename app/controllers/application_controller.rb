class ApplicationController < ActionController::Base

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end
end
