Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trades, only: %i[show index]
  get 'my_dashboard', to: "profiles#my_dashboard"
end
