Rails.application.routes.draw do
  devise_for :users

  resources :items do
    resources :reviews, only: [:index]
    resources :bookings, only: [:new, :create]
  end

  resources :users, only: :show do
    resources :bookings, only: [:index, :show, :delete] do
      resources :reviews, only: [:new, :create]
  end
end


  root to: 'items#index'
end
