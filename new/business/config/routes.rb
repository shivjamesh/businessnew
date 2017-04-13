Rails.application.routes.draw do

  get 'businessforms/show'
  root 'category#index'

  get '/hello', to: 'hello#hello', format: 'json'



  devise_for :users
  resources :businessforms
end
