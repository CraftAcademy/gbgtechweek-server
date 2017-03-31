Rails.application.routes.draw do
  resources :contacts, only: [:index, :new]
  root 'contacts#new'
end
