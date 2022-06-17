Rails.application.routes.draw do
  resources :users
  post "auth/login", to: "authentication#login"
  post "login/forgot_password", to: "users#forgot"
  post "login/reset_password", to: "users#reset"
end
