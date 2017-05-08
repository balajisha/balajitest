class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
helper_method :admin_user


private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

private

def admin_user
  @current_user ||= Admin.find(session[:username_id]) if session[:username_id]
end
end
