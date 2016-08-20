class MustBeLoggedInController < ApplicationController
  
  before_action :logged_in_using_omniauth?
  
  private

  def logged_in_using_omniauth?
    unless session[:userinfo].present?
      # Redirect to page that has the login here
      redirect_to :controller => 'authorisation', :action => 'login'
    end
    @user_email = session[:userinfo]["info"]["email"]
  end

end