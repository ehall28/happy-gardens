Rails.application.routes.draw do
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end

  devise_for :users

  get '/home', to: 'home#index'

  get '/listings', to: 'listings#index'
  get '/listings/new', to: 'listings#new'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  post '/listings', to: 'listings#create'

  root "home#index"
end
