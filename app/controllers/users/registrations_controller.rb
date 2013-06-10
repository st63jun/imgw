class Users::RegistrationsController < Devise::RegistrationsController
  after_action :ensure_authentication_token!, only: [:create]

  def ensure_authentication_token!
    current_user.ensure_authentication_token!
  end

end
