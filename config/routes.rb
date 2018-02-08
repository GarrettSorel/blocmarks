Rails.application.routes.draw do

  get 'users/show'

  get 'likes/index'

  resources :topics do
    resources :bookmarks
  end

  resources :bookmarks do
    resources :likes, only: [:index, :create, :destroy]
  end 

  post :incoming, to: 'incoming#create'
  
  devise_for :users
  resources :users, only: [:show]
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
