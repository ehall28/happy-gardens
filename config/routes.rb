Rails.application.routes.draw do
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end

  devise_for :users, :controllers => { registrations: 'users/registrations' }

  get '/home', to: 'home#index'

  get '/listings', to: 'listings#index'
  get '/listings/new', to: 'listings#new'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  get '/listings/:id/edit', to: 'listings#edit', as: 'edit_listing'
  patch 'listings/:id', to: 'listings#update'
  post '/listings', to: 'listings#create'
  post '/listings/:id', to: 'listings#purchase'
  delete '/listings/:id', to: 'listings#destroy'

  get '/my-transactions', to: 'transactions#index'

  root "home#index"
end
