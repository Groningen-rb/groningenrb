class HomeController < ApplicationController

  def index
    @upcoming = Edition.upcoming.first
  end

end