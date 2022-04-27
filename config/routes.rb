Rails.application.routes.draw do
  root "posts#index"
  devise_for :users

  resources :authors, only: [ :index ]
  resources :users, only: [ :show ]
  resources :posts do
    member do
      get :applauds
      post :applaud
    end
  end
end
