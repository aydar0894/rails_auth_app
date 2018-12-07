Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'check_auth', to: 'user_actions#check_auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
