Rails.application.routes.draw do
  root to: "tasks#index"	
  resources :comments
  post 'comment_by_task' => 'comments#comment_by_task'
  devise_for :users
  resources :tasks do
  	collection do
  		delete :multiple_delete
  	end
  end

end
