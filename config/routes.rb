Rails.application.routes.draw do
  root to: "tasks#index"	
  resources :comments
  devise_for :users
  resources :tasks

  post 'comment_by_task' => 'comments#comment_by_task'
end
