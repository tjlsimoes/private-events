Rails.application.routes.draw do
  root "events#index"

  devise_for :users, controllers: { registrations: 'users/registrations' }
	resources :events, only: :index
end
