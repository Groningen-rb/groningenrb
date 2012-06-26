class AttendancesController < ApplicationController
  
  before_filter :find_edition
  before_filter :authenticate!
  
  def create
    current_user.attend! @edition
    redirect_to :back
  end
  
  def destroy
    current_user.unattend! @edition
    redirect_to :back
  end
  
  
  private
  
  def find_edition
    @edition = Edition.find(params[:edition_id]) if params[:edition_id]
  end
  
end