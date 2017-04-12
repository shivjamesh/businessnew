Rails.application.routes.draw do

  get 'businessforms/show'
  root 'category#index'


  devise_for :users
  resources :businessforms
end
