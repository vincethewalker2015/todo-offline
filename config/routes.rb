Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/new'
  get 'todos/show'
  get 'todos/edit'
  # get 'pages/home'
  root 'pages#home'
  resources :todos
end
