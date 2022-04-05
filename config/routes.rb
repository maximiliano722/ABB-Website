Rails.application.routes.draw do
  get 'member_events/index'
  get 'member_events/show'
  get 'member_events/new'
  get 'member_events/create'
  get 'member_events/edit'
  get 'member_events/update'
  get 'member_events/delete'
  get 'member_events/destroy'
  post 'member_events/sign_in' => 'member_events#sign_in'
  get 'hour_requests/index'
  get 'hour_requests/show'
  get 'hour_requests/new'
  get 'hour_requests/create'
  get 'hour_requests/edit'
  get 'hour_requests/update'
  get 'hour_requests/delete'
  get 'hour_requests/destroy'
  get 'membership/index'
  post 'membership/index'
  get 'membership/events'
  post 'membership/sign_in' => 'membership#sign_in'
  get '/hour_requests/approve' => 'hour_requests#approve'
  get '/hour_requests/deny' => 'hour_requests#deny'
  root to: 'page#index'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
  resources :attendance_logs
  resources :sponsors
  resources :applications
  resources :users
  resources :sessions
  resources :hour_requests
  resources :member_events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  get '/index' => 'page#index'
  get '/about' => 'page#about'
  get '/contact' => 'page#contact'
  get '/recruitment' => 'page#recruitment'
  get '/our_team' => 'page#our_team'
  get '/login' => 'page#login'
  get '/create_account' => 'page#create_account'
  get '/sponsor' => 'sponsors#index'
  get '/events' => 'page#events'

  get '/membership' => 'membership#index'
  get '/membership/events' => 'membership#events'
  get '/membership/points' => 'membership#points'
  get '/membership/points/edit' => 'membership#edit'

  

end
