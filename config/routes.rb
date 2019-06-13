Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :companies do
    resources :workers
    resources :events do
      resources :attendances, only: [:create, :update, :destroy]
    end
  end

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"} do
    resources :companies, shallow: true
  end

  root 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
