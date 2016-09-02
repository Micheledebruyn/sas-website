Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'experience', to: 'pages#experience'
  get 'contact', to: 'pages#contact'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
end
