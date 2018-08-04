Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  
  resources :users, only: [:new, :create] do
    resources :bookings, except: [:index, :show, :create, :new, :update, :edit, :destroy]
    get :bookings_index, path: 'bookings'
    get :bookings_show, path: 'bookings/:id'
  end 

  resources :sitters, only: [:index, :show, :new, :create, :update, :edit] do
    resources :bookings, only: [:index, :new, :show, :create, :edit] do
      patch :accept
      patch :reject
      patch :complete
      patch :incomplete
      resources :availabilities, only: [:delete]
      resources :booking_dates, only: [:new, :create] 
      
    end
    resources :availabilities, only: [:create]
  end 
  
  resources :sessions, path: 'login', only: [:new, :create]
  resources :sessions, path: 'logout', only: [:destroy]

  get '/location' => 'application#location'

  
end
