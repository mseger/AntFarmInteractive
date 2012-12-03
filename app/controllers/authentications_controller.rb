class AuthenticationsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
   
    # Try to find authentication first
    authentication = Authentication.find_by_provider_and_uid(auth['provider'], auth['uid'])
   
    if authentication
      # Authentication found, sign the user in.
      flash[:notice] = "Signed in successfully."
      sign_in(:user, authentication.user)
    else
      # Authentication not found, thus a new user.
      user = User.new
      user.apply_omniauth(auth)
      if user.save(:validate => false)
        flash[:notice] = "Account created and signed in successfully."
        sign_in(:user, user)
      else
        flash[:error] = "Error while creating a user account. Please try again."
        redirect_to root_url
      end
    end
    render :text => "<script>window.close()</script>"
  end

  def destroy
    reset_session
    flash[:notice] = "Logged out."
    redirect_to root_url
  end
end
