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
  resources :sessions
   resources :attendance_logs
  resources :sponsors
  resources :applications

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 

  get '/index' => 'page#index'
  get '/about' => 'page#about'
  get '/contact' => 'page#contact'
  get '/recruitment' => 'page#recruitment'
  get '/our_team' => 'page#our_team'
  get '/login' => 'page#login'
  get '/create_account' => 'page#create_account'

  resources :academic_tracker do 
  end
end
