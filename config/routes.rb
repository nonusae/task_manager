Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :tasks


  post 'demo/show_options' => 'demo#show_options', as: :show_options
  post 'demo/hide_options' => 'demo#hide_options', as: :hide_options

  post 'comment_by_task' => 'comments#comment_by_task'
end
