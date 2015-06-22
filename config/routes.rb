Rails.application.routes.draw do
  devise_for :users
  get 'index/index'

  resources :apps
  resources :envbookings
  resources :projects
  resources :envlevels
  resources :envs


  post 'envbookings/update_booking' => 'envbookings#update_booking'
  post 'envbookings/delete_booking' => 'envbookings#delete_booking'

  # You can have the root of your site routed with "root"
  root 'home#index3'

end