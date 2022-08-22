Rails.application.routes.draw do
  resources :suscriptors
  get 'home/nacional'
  get 'home/politica'
  get 'home/internacional'
  get 'home/deportes'
  get 'home/farandula'
  get 'home/contacto'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
