Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :charges, only: [:new, :create]
  get 'privacy', to: 'pages#privacy'
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  resources :contacts
  get 'contact-us', to: 'contacts#new'
end
