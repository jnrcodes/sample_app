class SessionsController < ApplicationController
  # Show the signin page
  def new
	# @session = Session.new  
  end

  # Create the session
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user # Adds user to session storage
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user # goes to the user page
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' 
      render 'new' # re-draws login page for re-entry.
    end
  end

  # End the session
  def destroy
    log_out if logged_in?
    redirect_to root_url # Go home
  end
end
