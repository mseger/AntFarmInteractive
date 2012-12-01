class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    render :text => auth_hash.inspect
  end

  def failure
    render :text => "Sorry, but you didn't allow access to our app!"
  end

  def destroy
    session[:user_id] = nil
    render :text => "You've logged out!"
  end
end
