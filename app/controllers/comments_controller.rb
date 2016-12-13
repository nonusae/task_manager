class CommentsController < ApplicationController
before_action :set_comment, only: [:show,:edit,:update,:destroy]
before_action :set_comments_by_task, only: [:create,:comment_by_task]
respond_to :html, :json ,:js

	def new
		@comment = Comment.new()
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id #method provided by devise 

		if @comment.save
			# redirect_to tasks_path , notice: 'Your post was create succesfully'
				# render :file => "comments/comments_refresher.js.erb" 	
				redirect_to tasks_path		
			else
				# render :file => "comments/comments_refresher.js.erb" 
				render :new		
		end	
	end

	def edit
	end

	def index
		@comments = Comment.all
	end

	def comment_by_task
		@comment = Comment.new(:task_id => @task_id)
	end

	def update
		if @comment.update(comment_params)
			redirect_to comments_path, notice: "Successfully updated task"
		else
			render :edit
		end		
	end

	def destroy
		@task_id = @comment.task_id # destroy method cannot use set_comment_by_tasks because we use defulat RestRouting
		@comments = Comment.where(:task_id => @task_id)
		@comment.destroy
		render :file => "comments/comments_refresher.js.erb" , notice: 'Your comment was deleted succesfully'
	end






	private

	def comment_params
		params.require(:comment).permit(:content,:task_id)
	end	

	def set_comments_by_task
		@task_id = comment_params[:task_id]
		@comments = @comments = Comment.where(:task_id => @task_id)
	end

	def  set_comment
		@comment = Comment.find(params[:id])
	end

end
