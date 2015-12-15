Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get 'all_users', to: 'users#all_users'
  
    get 'all_followers', to: 'followers#all_followers'
  
    get 'all_posts', to: 'posts#all_posts'
  
    get 'show', to: 'posts#show'
  
    get 'create_post', to: 'posts#create_post'
  
    get 'create_user', to: 'users#create_user'
  
    get 'follow', to: 'followers#follow'
  
    get 'unfollow', to: 'followers#unfollow'
  
    get 'new', to: 'users#new'
  
    get 'remove_post', to: 'posts#remove_post'
    
  end
end
