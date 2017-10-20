Rails.application.routes.draw do
  
  namespace :api do
    namespace :v0 do
      resources :users, only: [:create, :show, :index, :update, :destroy]
      resources :eval_items, only: [:create, :show, :index, :destroy]
      resources :scores, only: [:create, :show, :index]
      resources :action_steps, only: [:create]
      resources :evaluation_categories, only: [:create]
      resources :possible_points, only: [:create]
      post '/login', to: 'auth#create'
    end
  end

end
