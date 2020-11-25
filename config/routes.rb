Rails.application.routes.draw do

  get 'translations/edit'
  get 'adopted_languages/new'
  get 'adopted_languages/edit'
  get 'adopted_languages/show'
  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }
  root 'pages#index'
  
  get 'pages/index'
  get 'pages/help'
  get 'pages/about'
  get 'pages/display'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :adopted_languages
  end 

  resources :translations

end
