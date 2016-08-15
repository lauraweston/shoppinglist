class AuthorisationController < ApplicationController
  def login
    if session[:userinfo].present?
      # Redirect to page that has the login here
      redirect_to '/'
    end
    @hide_logout_button = true
  end

  def logout
    session.clear
    redirect_to :action => 'login'
  end
end
