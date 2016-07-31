Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'experience', to: 'pages#experience'
  get 'contact', to: 'pages#contact'
end
