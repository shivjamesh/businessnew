Rails.application.routes.draw do

  devise_for :users
  get 'businessforms/show'
  root 'category#index'

  get '/hello', to: 'hello#hello', format: 'json'


  resources :businessforms
end
