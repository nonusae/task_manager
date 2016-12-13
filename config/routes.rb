Rails.application.routes.draw do
  root to: "tasks#index"	
  resources :comments do
  	collection do
  		get 'get_last_comment_id_plus'
  	end
  end
  post 'comment_by_task' => 'comments#comment_by_task'
  post 'save_comment' => 'comments#save_comment'
  # get 'get_last_comment_id' => 'comments#get_last_comment_id'
  devise_for :users
  resources :tasks do
  	collection do
  		delete :multiple_delete
  	end
  end

end
