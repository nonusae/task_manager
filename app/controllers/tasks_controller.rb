class TasksController < ApplicationController
before_action :set_task, only: [:show,:edit,:update,:destroy]
respond_to :html, :json

	def index
		@tasks = Task.search(params[:search]).order('priority asc')
	end

	def edit
	end

	def update
		if @task.update(task_params)
			redirect_to tasks_path
		else
			render :edit
		end
	end

	def destroy
		@task.destroy
		redirect_to tasks_path, notice: 'Your task was deleted succesfully'	
	end

	def new
		@task = Task.new(:priority => 10)
	end

	def create
		@task = Task.new(task_params)
		@task.user_id = current_user.id #method provided by devise 
		respond_to do |format|
			if @task.save
				format.html { redirect_to tasks_path, notice: 'Your task was create succesfully' }
			else
				format.html { render  :new }
			end
		end
	end


	private

	def task_params
		params.require(:task).permit(:deadline, :description,:priority)
	end	

	def  set_task
		@task = Task.find(params[:id])		
	end

end
