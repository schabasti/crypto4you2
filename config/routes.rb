Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trades, only: %i[show index]
  resources :users, only: %i[index]
  get 'profiles/my_dashboard'
end
