Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      get '/current_user', to: 'users#get_current_user'
    end
  end
end
