Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/photographers', to: 'static_pages#index'
  # get '/photographers/new', to: 

  namespace :api do
    namespace :v1 do
      resources :photographers, only: [:index, :show, :create]
    end
  end 
end
