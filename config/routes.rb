Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profiles/my_dashboard'
end
