Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'tycust928382', to: 'pages#tycust928382'
  get 'steemit', to: 'pages#steemit'
  resources :charges, only: :create
  get 'privacy', to: 'pages#privacy'
  get 'ty-928382', to: 'charges#thanks', as: 'thanks'
  resources :contacts, only: :create
	get 'contact-us', to: 'contacts#new', as: 'new_contact'
	get 'checkout', to: 'charges#new', as: 'new_charge'
end
