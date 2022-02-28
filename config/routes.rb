Rails.application.routes.draw do
  resources :applications
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'page#index'

  get '/index' => 'page#index'
  get '/about' => 'page#about'
  get '/contact' => 'page#contact'
  get '/recruitment' => 'page#recruitment'
  get '/our_team' => 'page#our_team'

  resources :academic_tracker do 
  end
end
