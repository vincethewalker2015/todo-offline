Rails.application.routes.draw do
  
  # get 'pages/home'
  root 'todos#index'
  resources :todos
end
