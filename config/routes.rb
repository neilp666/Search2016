Rails.application.routes.draw do

  root 'books#index'
  resources :advancedsearches
  resources :books
  
end
