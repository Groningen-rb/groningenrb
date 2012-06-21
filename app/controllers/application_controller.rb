class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :get_archive
  
  private
  def get_archive
    @archive = Edition.past(5)
  end
end
