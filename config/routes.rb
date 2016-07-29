Rails.application.routes.draw do
  resources :pictures
  root 'page#index'

  get '/secret' => 'page#secret'

  get '/register' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
