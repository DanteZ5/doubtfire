Rails.application.routes.draw do
  resources :grandmas, except: [:delete]
  resources :bookings, only: [:new, :create, :show, :update]
  devise_for :users


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
