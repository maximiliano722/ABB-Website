Rails.application.routes.draw do
  resources :messages
  resources :support_logs
  devise_for :admins
  resources :attendance_logs
  resources :sponsors
  resources :users
  resources :sessions
   resources :attendance_logs
  resources :sponsors

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 

  get '/index' => 'page#index'
  get '/about' => 'page#about'
  get '/contact' => 'page#contact'
  get '/recruitment' => 'page#recruitment'
  get '/our_team' => 'page#our_team'
  get '/login' => 'page#login'
  get '/create_account' => 'page#create_account'
  get '/sponsor' => 'sponsors#index'
  get '/events' => 'page#events'

  resources :academic_tracker do 
  end
end
