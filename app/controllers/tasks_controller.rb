class TasksController < ApplicationController
before_action :set_task, only: [:show,:edit,:update,:destroy]
respond_to :html, :json

	def index
		@tasks = Task.all
	end

	def edit
	end

	def update
		if @task.update(task_params)
			redirect_to tasks_path, notice: "Successfully updated task"
		else
			render :edit
		end
	end

	def destroy
	end

	def new
		@task = Task.new
	end


	private

	def task_params
		params.require(:task).permit(:deadline, :description)
	end	

	def  set_task
		@task = Task.find(params[:id])		
	end

end
