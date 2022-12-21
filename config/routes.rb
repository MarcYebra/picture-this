Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/photographers' , to: 'static_pages#index'
  get '/photographers/:id/' , to: 'static_pages#index'
  get '/photographers/:id/edit', to: 'photographers#edit', as: 'edit_photographers'
  get '/photographers/new' , to: 'static_pages#index'


  namespace :api do
    namespace :v1 do
      resources :photographers, only: [:index, :show, :create] do
        resources :reviews, only: [:create, :show, :destroy] 
          resources :images, only: [:index, :show, :create]
      end
    end
  end 
end
