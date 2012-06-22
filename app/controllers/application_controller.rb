class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :root, alert: exception.message
  end
  
  before_filter :get_archive
  before_filter :get_upcoming
  
  
  private
  
  def get_archive
    @archive = Edition.past(5)
  end
  
  def get_upcoming
    @upcoming = Edition.upcoming.first
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
end
