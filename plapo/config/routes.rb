Rails.application.routes.draw do
  # devise_for :users
  # namespace :api, defaults: { format: :json } do
  #   scope :v1 do
  #     mount_devise_token_auth_for 'User', at: 'auth', controllers: {
  #         registrations: 'api/v1/auth/registrations'
  #     }
  #   end
  # end

  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    omniauth_callbacks: "auth/omniauth_callbacks",
    registrations: 'auth/registrations'
  }
end
