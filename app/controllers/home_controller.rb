class HomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
    redirect_to action: :dashboard if user_signed_in?
  end

  def dashboard
  end

  def reset_token
    current_user.reset_authentication_token!
    redirect_to :dashboard
  end
end
