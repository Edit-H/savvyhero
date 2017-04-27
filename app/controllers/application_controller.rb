class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id]
    # if someone is logged in return me that user
  end

  helper_method :current_user 
  # helper_method makes the current_user method accessible in the views

  def require_login
    redirect_to "/sessions/new" unless session[:user_id]
  end

  def require_correct_user
    user=User.find(params[:id])
    redirect_to current_user if current_user != user
  end
end