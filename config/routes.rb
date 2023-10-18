Rails.application.routes.draw do
  root "events#index"

  devise_for :users, controllers: { registrations: 'users/registrations' }, sign_out_via: [:get, :post]
  resources :users, only: :show
	resources :events, only: :index
end
