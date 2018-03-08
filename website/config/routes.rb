Rails.application.routes.draw do
  root 'pages#home'
  get '/pages/:page', to: 'pages#show'
  get 'sessions/new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :pages
  resources :users
  resources :donations
  resources :videos
  resources :categories
  resources :games
  resources :heros do
    put :add
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
