Rails.application.routes.draw do
   
  resources :comments
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # post  'posts/create'
  # get 'posts/update'
  # get 'posts/edit'
  # get 'posts/destroy'
  resources :posts
  root to:"posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
