Rails.application.routes.draw do
  root to: 'page#index'
  #root to: 'dashboards#show'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
    #resources :sessions
  end
  resources :users
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 
  #root to: 'page#index'
  #get '/index' => 'page#index'
  #get '/about' => 'page#about'
  #get '/contact' => 'page#contact'
  #get '/recruitment' => 'page#recruitment'

  resources :academic_tracker do 
  end
end
