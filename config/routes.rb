Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get 'all_users', to: 'users#all_users'
  end
  namespace :api, defaults: { format: :json } do
    get 'all_followers', to: 'followers#all_followers'
  end
    namespace :api, defaults: { format: :json } do
    get 'all_posts', to: 'posts#all_posts'
  end
    namespace :api, defaults: { format: :json } do
    get 'show', to: 'posts#show'
  end
   namespace :api, defaults: { format: :json } do
    get 'create', to: 'posts#create'
  end
   namespace :api, defaults: { format: :json } do
    get 'create_user', to: 'users#create_user'
  end
   namespace :api, defaults: { format: :json } do
    get 'follow', to: 'followers#follow'
  end
   namespace :api, defaults: { format: :json } do
    get 'unfollow', to: 'followers#unfollow'
  end
   namespace :api, defaults: { format: :json } do
    get 'new', to: 'users#new'
  end
  namespace :api, defaults: { format: :json } do
    get 'remove', to: 'posts#remove'
  end
end
