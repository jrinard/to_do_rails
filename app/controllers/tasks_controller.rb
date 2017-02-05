class TasksController < ApplicationController









  def new
    @list = List.find(params[:list_id]) # getting id from list
    @task = @list.tasks.new # maping id/tasks/new
  end

  def create
    @list = List.find(params[:list_id]) # getting id from list
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to list_path(@task.list)
    else
      render :new
    end
  end





# not working
  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks
    @task.destroy
    redirect_to lists_path
  end





private
  def task_params
    params.require(:task).permit(:description)
  end
end
