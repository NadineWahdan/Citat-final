Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get 'all_users', to: 'users#all_users'
  end
end
