class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def require_login
  	if current_user.nil?
  		redirect_to :new_user_session
  		return false
  	end	
  end	
end
