Rails.application.routes.draw do
  devise_for :physicians
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'surgery_groups#index'

  namespace :api do
    namespace :v1 do
      resources :surgery_groups, only: [:index] do
        resources :surgeries, only: [:index]
      end
    end
  end



  resources :users
  resources :physicians
  resources :surgery_groups do
    resources :surgeries, only: [:show]
  end

end
