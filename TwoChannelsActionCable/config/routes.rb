Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'posts', to:'posts#create'
  post 'comments', to:'comments#create'

  get 'pages/home'
  
  root 'pages#home'

  resources :posts
  resources :comments
end
