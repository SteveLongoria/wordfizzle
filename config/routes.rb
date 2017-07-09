Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :charges, only: :create
  get 'privacy', to: 'pages#privacy'
  get 'ty-cust928382', to: 'charges#thanks', as: 'thanks'
  resources :contacts, only: :create
	get 'contact-us', to: 'contacts#new', as: 'new_contact'
	get 'checkout', to: 'charges#new', as: 'new_charge'
end
