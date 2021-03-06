Rails.application.routes.draw do
  root to: 'grandmas#index'
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :grandmas, except: [:delete, :destroy] do
     resources :bookings, only: [:new, :show, :create]
  end
  resources :bookings, only: [:index, :create]
  put 'bookings/:id', to: 'bookings#update', as: :update_booking
  get 'bookings/:id/rate', to: 'bookings#rate', as: :rate_booking


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
