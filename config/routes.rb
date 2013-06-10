Imgw::Application.routes.draw do
  get "post/create"
  get "/xmpp(.:format)", to: "xmpp_accounts#show", as: :xmpp_accounts
  get "/xmpp/new", to: "xmpp_accounts#new", as: :new_xmpp_accounts
  get "/xmpp/edit", to: "xmpp_accounts#edit", as: :edit_xmpp_accounts
  post "/xmpp(.:format)", to: "xmpp_accounts#create"
  put "/xmpp(.:format)", to: "xmpp_accounts#update"
  patch "/xmpp(.:format)", to: "xmpp_accounts#update"
  delete "/xmpp(.:format)", to: "xmpp_accounts#destroy", as: :destroy_xmpp_accounts

  root "home#index"

  get "index", to: "home#index"
  get "dashboard", to: "home#dashboard", as: :dashboard
  get "reset_token", to: "home#reset_token", as: :reset_token

  devise_for :users, controllers: { registrations: "users/registrations" }

end
