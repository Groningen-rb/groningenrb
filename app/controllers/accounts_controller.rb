class AccountsController < ApplicationController
  
  before_filter :authenticate!
  
  def edit
    authorize! :manage, current_user
  end
  
end