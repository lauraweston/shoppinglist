class AuthorisationController < ApplicationController
  def login
    if session[:userinfo].present?
      # Redirect to page that has the login here
      redirect_to '/'
    end
  end
end
