Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/photographers', to: 'static_pages#index'
  get '/photographers/:id/', to: 'static_pages#index'
  get '/photographers/:id/edit', to: 'photographers#edit', as: 'edit_photographers'
  get '/photographers/new', to: 'static_pages#index'
  get '/about', to: 'static_pages#index'
  get '/questions', to: 'static_pages#index'

  # Photography Categories
  get '/celebrity', to: 'static_pages#index'
  get '/engagement', to: 'static_pages#index'
  get '/event', to: 'static_pages#index'
  get '/family', to: 'static_pages#index'
  get '/fashion', to: 'static_pages#index'
  get '/fitness', to: 'static_pages#index'
  get '/food', to: 'static_pages#index'
  get '/graduation', to: 'static_pages#index'
  get '/pet', to: 'static_pages#index'
  get '/portrait', to: 'static_pages#index'
  get '/sport', to: 'static_pages#index'
  get '/wedding', to: 'static_pages#index'

  namespace :api do
    namespace :v1 do
      resources :photographers, only: [:index, :show, :create] do
        resources :reviews, only: [:create, :show, :destroy] 
          resources :images, only: [:index, :show]  
        end
      resources :about, only: [:index, :show]
      resources  :questions, only: [:index, :show, :create]
      resources :celebrity, only: [:index, :show]
      resources :engagement, only: [:index, :show]
      resources :event, only: [:index, :show]
      resources :family, only: [:index, :show]
      resources :fashion, only: [:index, :show]
      resources :fitness, only: [:index, :show]
      resources :food, only: [:index, :show]
      resources :graduation, only: [:index, :show]
      resources :pet, only: [:index, :show]
      resources :portrait, only: [:index, :show]
      resources :sport, only: [:index, :show]
      resources :wedding, only: [:index, :show]
    end
  end 
end



