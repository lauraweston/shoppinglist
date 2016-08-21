class MustBeLoggedInController < ApplicationController
  
  before_action :logged_in_using_omniauth?
  
  private

  def logged_in_using_omniauth?
    
    if session[:userinfo].present?
        @user_email = session[:userinfo]["info"]["email"]
    else
      # Redirect to page that has the login here
      redirect_to :controller => 'authorisation', :action => 'login'
    end
  end

end