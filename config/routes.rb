Rails.application.routes.draw do
  resources :authors, only: [ :index ]

  devise_for :users
  resources :posts do
    member do
      get :applauds
      post :applaud
    end
  end
  get 'sandbox/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
