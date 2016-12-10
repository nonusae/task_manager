Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :tasks

  post 'comment_by_task' => 'comments#comment_by_task'
end
