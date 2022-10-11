Rails.application.routes.draw do
  
  resources :prices
  resources :product_certifications
  resources :supplier_certifications
  resources :countries
  resources :categories
  resources :products
  #namespace :api do
    #resources :categories do
      #resources :products
    #end
  #end

  #namespace :api do
    #resources :prices do
      #resources :products
    #end
  #end

  #namespace :api do
    #resources :product_certifications do
      #resources :products
    #end
  #end

  #namespace :api do
    #resources :supplier_certifications do
      #resources :products
    #end
  #end

  #namespace :api do
    #resources :countries do
      #resources :products
    #end
  #end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
