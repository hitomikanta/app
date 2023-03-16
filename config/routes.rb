Rails.application.routes.draw do
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#top'
  get '/work_all'=>'home#work_all'
  get '/post/index'=>'post#index'
  delete '/user/:id'=>'post#destroy'
  
  resources :users
  resources :work_times
end
