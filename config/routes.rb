Rails.application.routes.draw do
  root to: 'grandmas#index'
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :grandmas, except: [:delete, :destroy] do
     resources :bookings, only: [:new, :show, :create, :update]
  end
  resources :bookings, only: :index


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
