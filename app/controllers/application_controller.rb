class ApplicationController < ActionController::Base
  protect_from_forgery

  def user
    render :json=> current_user
  end
end
