Rails.application.routes.draw do
	root to: 'pages#home'
  resources :payments, only: [:new, :create]
  get 'payment-thanks', to: 'payments#thanks', as: 'payment_thanks'
  resources :charges, only: :create
  get 'privacy', to: 'pages#privacy'
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  resources :contacts, only: :create
	get 'contact-us', to: 'contacts#new', as: 'new_contact'
	get 'checkout', to: 'charges#new', as: 'new_charge'
end
