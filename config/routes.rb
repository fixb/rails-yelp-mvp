Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/show'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
