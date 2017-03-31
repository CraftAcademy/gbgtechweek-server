Rails.application.routes.draw do
  resources :contacts, only: [:index, :new, :create]
  namespace :api do
    resources :contacts, only: [:index]
  end
  root 'contacts#new'
end
