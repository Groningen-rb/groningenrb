class SessionsController < ApplicationController
    
  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to :root, notice: "Aangemeld via #{user.provider}. Is het je eerste keer, controlleer dan je account."
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
  
end