Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/photographers', to: 'static_pages#index'
  get '/photographers/:id/', to: 'static_pages#index'
  get '/photographers/:id/edit', to: 'photographers#edit', as: 'edit_photographers'
  get '/photographers/new', to: 'static_pages#index'
  get '/about', to: 'static_pages#index'
  get '/question', to: 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :photographers, only: [:index, :show, :create] do
        resources :reviews, only: [:create, :show, :destroy] 
          resources :images, only: [:index, :show]  
        end
      resources :about, only: [:index, :show]
      resources  :question, only: [:index, :show, :create]
    end
  end 
end
