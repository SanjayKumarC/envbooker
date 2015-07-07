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


  post 'envbookings/update_booking' => 'envbookings#update_booking'
  post 'envbookings/delete_booking' => 'envbookings#delete_booking'
  post '/' => 'home#index'

  # You can have the root of your site routed with "root"
  root 'home#index'

end
