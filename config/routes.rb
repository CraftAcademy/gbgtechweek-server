Rails.application.routes.draw do
  resources :contacts, only: [:index, :new, :create]
  root 'contacts#new'
end
