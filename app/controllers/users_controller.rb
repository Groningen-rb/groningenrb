class UsersController < ApplicationController
  
  before_filter :authenticate!
  
  def index
    @users = User.all
    authorize! :manage, User
  end
  
  def update
    authorize! :manage, current_user
    if current_user.update_attributes(params[:user])
      redirect_to :account, notice: 'Je account is succesvol opgeslagen.'
    else
      render 'accounts/edit'
    end
  end
  
end