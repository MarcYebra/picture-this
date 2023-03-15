Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/photographers', to: 'static_pages#index'
  get '/photographers/:id/', to: 'static_pages#index'
  get '/photographers/new', to: 'static_pages#index'
  get '/about', to: 'static_pages#index'
  get '/questions', to: 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :photographers, only: [:index, :show, :create] do
        resources :photos, only: [:show, :create]  do 
          resources :reviews, only: [:show, :create, :destroy]  
        end
      end
      resources :about, only: [:index, :show]
      resources :questions, only: [:index, :show, :create]
    end
  end 


end



