Rails.application.routes.draw do
  resources :systems do 
    get 'delete'
  end

  resources :user_preferences

  get 'dashboard', to: 'dashboard#index'

  resources :refresh_requests do
    get 'delete'
    get 'complete'
    post 'complete', :to => 'refresh_requests#update_request'
  end

  resources :downtimes do
    get 'delete'
  end

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'index/index'

  resources :apps do
    get 'delete'
  end

  resources :envbookings do
    get 'delete'
  end

  get 'envbookings_update_apps', to: 'envbookings#update_apps'
  get 'refresh_requests_update_apps', to: 'refresh_requests#update_apps'

  resources :projects do
    get 'delete'
  end

  resources :envlevels do
    get 'delete'
  end

  resources :envs do
    get 'delete'
  end

  resources :refreshes
  resources :environments


  post 'envbookings/update_booking' => 'envbookings#update_booking'
  post 'envbookings/delete_booking' => 'envbookings#delete_booking'
  post '/' => 'home#index'

  get 'newenvbooking', to: 'envbookings#new'

  # You can have the root of your site routed with "root"
  get 'appconfig', to: 'home#appconfig'
  patch 'appconfig', controller: 'home', action: :saveconfig
  root 'home#index'

end
