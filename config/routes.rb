Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :listings do
    resources :requests, only: %i[create new]
    resources :swaps, only: %i[new create]
  end

  # no route to destroy a listing yet will work on that.
  # as well as routes to edit, show and index for request.

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/profile', to: 'pages#profile'

end
