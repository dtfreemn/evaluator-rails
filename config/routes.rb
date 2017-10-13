Rails.application.routes.draw do
  
  namespace :api do
    namespace :v0 do
      resources :users, only: [:create, :show, :index, :destroy]
      resources :eval_items, only: [:create, :show, :index, :destroy]
      resources :scores, only: [:create, :show, :index]
      post '/login', to: 'auth#create'
    end
  end

end
