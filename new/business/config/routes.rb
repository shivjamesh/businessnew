Rails.application.routes.draw do

  get 'businessforms/show'
  root 'businessforms#index'


  devise_for :users
  resources :businessforms
end
