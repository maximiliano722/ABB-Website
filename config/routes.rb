# frozen_string_literal: true

Rails.application.routes.draw do
  get '/membership' => 'membership#index'
  get '/membership/events' => 'membership#events'
  get '/membership/points' => 'membership#points'
  get '/membership/points/edit' => 'membership#edit'
  post 'member_events/sign_in' => 'member_events#sign_in'
  post 'membership/sign_in' => 'membership#sign_in'
  get '/hour_requests/approve' => 'hour_requests#approve'
  get '/hour_requests/deny' => 'hour_requests#deny'
  post 'membership/edit_points' => 'membership#edit_points'
  
  
  resources :extra_images
  get 'sessions/new'
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
  resources :messages
  resources :support_logs
  resources :hour_requests
  resources :member_events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/index' => 'page#index'
  get '/about' => 'page#about'
  get '/contact' => 'page#contact'
  get '/recruitment' => 'page#recruitment'
  get '/our_team' => 'page#our_team'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/create_account', to: 'users#new' # note, change to user show
  get '/sponsor' => 'page#sponsor'
  get '/event_view' => 'page#event_view'
  get '/edit_event' => 'page#edit_event'

  
  
end
