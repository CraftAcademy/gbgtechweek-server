Rails.application.routes.draw do
  resources :contacts, only: [:index, :new, :create]

  root controller: :contacts, action: :new

  namespace :api do
    resources :contacts, only: [:index]
  end


end
