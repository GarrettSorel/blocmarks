Rails.application.routes.draw do

  get 'likes/index'

  resources :topics
  
  resources :bookmarks, except: [:index] do
    resources :likes, only: [:index, :create, :destroy]
  end  
  
  post :incoming, to: 'incoming#create'
  
  devise_for :users
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
