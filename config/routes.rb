Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'index/index'

  resources :apps do
    get 'delete'
  end

  resources :envbookings do
    get 'delete'
  end

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
